# Python Spinners Catalogue

Interactive, browser-based catalogue of terminal spinner animations.

This project is a single-page HTML app that previews spinner frames in real time and lets you search, filter, and copy frame arrays for reuse in Python CLI tools.

## Quickstart

### One command (recommended)

From the project root, run:

```powershell
.\run
```

This starts a local server and opens the catalogue at `http://localhost:8000`.

Optional flags:

```powershell
.\run -Port 8080
.\run -NoOpen
```

### Option 1: Open directly

Open `index.html` in your browser.

### Option 2: Manual local server

From the project root, run:

```powershell
python -m http.server 8000
```

Open `http://localhost:8000` in your browser.

Why local serving: some browsers restrict clipboard APIs on `file://` pages; serving over `http://localhost` avoids that.

## Features

- Live spinner animation previews
- Category filters
- Search by spinner name, category, or library
- Per-spinner frame count and interval display
- One-click frame copy to clipboard
- Speed multiplier slider for global animation timing
- Code examples modal for Rich, Halo, and Yaspin usage

## Project Structure

- `index.html`: App UI, styles, spinner dataset, and logic
- `run.ps1`: Styled one-command launcher (checks, browser open, local server)
- `run.cmd`: Thin wrapper so Windows users can run `.\run`
- `README.md`: Documentation

## Spinner Data Model

Spinners are defined in the `SPINNERS` object inside `index.html`:

```js
spinnerName: {
  frames: ["...", "..."],
  interval: 80,
  category: "Dots",
  lib: "cli-spinners"
}
```

## Categories

Current display order:

- `Dots`
- `Classic`
- `Arrows`
- `Bars & Blocks`
- `Progress`
- `Scenes`
- `Misc`
- `Emoji Spinners`

## Add or Edit Spinners

1. Open `index.html`.
2. Locate `const SPINNERS = { ... }`.
3. Add or modify entries using the spinner schema above.
4. Keep `category` aligned with the existing category names so filters work consistently.
5. Refresh the browser.

## Notes

- The app currently includes restored missing entries from earlier variants (`dots3d`, `braille`, `bar`, `aesthetic2`, `fishCat`).
- `totalCount` and filter counts are computed from `SPINNERS`, so no manual count updates are needed.

## Troubleshooting

- Copy button does not work:
  - Serve locally with `python -m http.server 8000` and retry.
- Spinner glyphs look broken:
  - Use a browser/font setup with good Unicode support.
