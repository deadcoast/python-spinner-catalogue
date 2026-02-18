#!/usr/bin/env python3
"""Quiet local server for Python Cat-Log."""

from __future__ import annotations

import argparse
import json
import os
import sys
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
from urllib.parse import parse_qs, urlparse


class QuietHandler(SimpleHTTPRequestHandler):
    """Suppress noisy request logs and avoid favicon 404 spam."""

    def log_message(self, format: str, *args) -> None:  # noqa: A003
        return

    def do_GET(self) -> None:  # noqa: N802
        if self.path == "/favicon.ico":
            self.send_response(204)
            self.end_headers()
            return
        if self.path.startswith("/api/figlet"):
            self.handle_figlet()
            return
        super().do_GET()

    def handle_figlet(self) -> None:
        parsed = urlparse(self.path)
        query = parse_qs(parsed.query)
        font = (query.get("font") or ["standard"])[0]
        text = (query.get("text") or ["Hello"])[0]
        text = text[:24] if text else "Hello"
        lines: list[str]
        try:
            from pyfiglet import Figlet  # type: ignore

            rendered = Figlet(font=font).renderText(text).rstrip("\n")
            lines = rendered.splitlines() if rendered else [text]
            ok = True
            engine = "pyfiglet"
        except Exception:
            lines = [text]
            ok = False
            engine = "fallback"

        payload = json.dumps({"ok": ok, "engine": engine, "font": font, "text": text, "lines": lines}).encode("utf-8")
        self.send_response(200)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", str(len(payload)))
        self.end_headers()
        self.wfile.write(payload)


def main() -> int:
    parser = argparse.ArgumentParser(description="Serve Python Cat-Log quietly.")
    parser.add_argument("port", type=int, nargs="?", default=8000)
    args = parser.parse_args()

    root = os.path.dirname(os.path.abspath(__file__))
    os.chdir(root)

    host = "127.0.0.1"
    server = ThreadingHTTPServer((host, args.port), QuietHandler)
    print(f"Serving Python Cat-Log at http://{host}:{args.port}/")
    print("Press Ctrl+C to stop.")
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\nShutting down server...")
    finally:
        server.server_close()
    return 0


if __name__ == "__main__":
    sys.exit(main())
