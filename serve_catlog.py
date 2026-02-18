#!/usr/bin/env python3
"""Quiet local server for Python Cat-Log."""

from __future__ import annotations

import argparse
import os
import sys
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer


class QuietHandler(SimpleHTTPRequestHandler):
    """Suppress noisy request logs and avoid favicon 404 spam."""

    def log_message(self, format: str, *args) -> None:  # noqa: A003
        return

    def do_GET(self) -> None:  # noqa: N802
        if self.path == "/favicon.ico":
            self.send_response(204)
            self.end_headers()
            return
        super().do_GET()


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
