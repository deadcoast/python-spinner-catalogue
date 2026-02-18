# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project follows [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- New top-level `ASCII / Figlet` catalogue tab with curated pre-rendered figlet font cards.
- Figlet controls:
  - sample text input
  - font sorting (`name`, `height`, `width`)
- Local figlet render API endpoint `GET /api/figlet` in `serve_catlog.py` (uses `pyfiglet` when installed, fallback otherwise).

### Changed
- Normalized project tracking docs so shelved integration tasks are checklist-based and current.
- Shared catalogue rendering now supports three datasets: spinners, progress bars, and figlet fonts.

## [0.4.0] - 2026-02-18

### Added
- Top-level dual-tab catalogue architecture:
  - `Spinners` tab
  - `Progress Bars` tab
- `PROGRESS_BARS` dataset integrated into runtime.
- Determinate progress bar animation engine:
  - 0% -> 100% sweep loop
  - optional sub-character smoothing (`subchars`)
  - shared speed multiplier support
- Progress-tab width control (`8-40` columns) scoped to Progress Bars.
- Progress-specific modal code previews with library-aware examples.
- Full shelved spinner pack integrated into `SPINNERS` (including indeterminate bar-style frame animations).

### Changed
- Search, category filters, stats, and section rendering now operate per active tab/dataset.
- Category state and collapse state persisted per tab.
- Modal flow extended to support both spinner and progress entities.

## [0.3.0] - 2026-02-18

### Added
- Multi-view presentation modes:
  - `Tile`
  - `Minimal`
  - `List`
- Section-level `View` dropdown controls.
- Section fold/unfold arrows with persisted collapsed state.
- Global `Collapse All` / `Expand All` controls.

### Changed
- Added subtle view-switch transition to smooth mode changes without noisy motion.
- Improved compact-mode readability and hover-reveal behavior while preserving core typography/spinner sizing.

## [0.2.0] - 2026-02-18

### Added
- Missing spinner restoration from earlier versions (including `dots3d`, `braille`, `bar`, `aesthetic2`, `fishCat`).
- Expanded spinner catalogue coverage via shelved additions and category alignment updates.

### Changed
- Reworked category ordering to include integrated indeterminate frame-bar spinners.

## [0.1.0] - 2026-02-18

### Added
- Initial single-page spinner catalogue (`index.html`) with:
  - animated spinner previews
  - search
  - category filtering
  - speed slider
  - frame copy actions
  - modal code snippets
- Local launcher workflow:
  - `run.ps1`
  - `serve_catlog.py`
  - `install-pycatlog.ps1` global command installer (`pycatlog`)
