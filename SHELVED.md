# Spinners & Progress Bars — Additions Dev Doc

> **Purpose:** Injectable data for the Python Spinners Catalogue v3.  
> **Format:** Each entry is a JS object literal ready to paste into the `SPINNERS` or `PROGRESS_BARS` const.  
> **Convention:** `frames[]` / `interval` (ms) / `category` / `lib` (source attribution)  
> **Priority:** ASCII & Unicode first. Emoji only if exceptional.

---

## Table of Contents

1. [New Spinners — ASCII/Unicode](#1-new-spinners--asciiunicode)
2. [New Progress Bars](#2-new-progress-bars)
3. [Structural Notes](#3-structural-notes)
4. [Python Code Snippets Per Bar Style](#4-python-code-snippets-per-bar-style)

---

## 1. New Spinners — ASCII/Unicode

### 1.1 `radar`

Quarter-circle rotation. Clean single-char, very retro CRT feel.

```js
radar: {
  frames: ["◐","◓","◑","◒"],
  interval: 120,
  category: "Classic",
  lib: "custom"
}
```

### 1.2 `boxSpin`

Box-drawing corner rotation. Looks like a cursor tracing a box.

```js
boxSpin: {
  frames: ["┌","┐","┘","└"],
  interval: 100,
  category: "Classic",
  lib: "custom"
}
```

### 1.3 `boxSpinDouble`

Double-line variant for heavier visual weight.

```js
boxSpinDouble: {
  frames: ["╔","╗","╝","╚"],
  interval: 100,
  category: "Classic",
  lib: "custom"
}
```

### 1.4 `boxSpinRound`

Rounded corner variant. Softer look.

```js
boxSpinRound: {
  frames: ["╭","╮","╯","╰"],
  interval: 100,
  category: "Classic",
  lib: "custom"
}
```

### 1.5 `snake`

Box-drawing snake crawling through a cycle.

```js
snake: {
  frames: ["╶─╴","╺━╸","╶─╴","╺━╸"],
  interval: 200,
  category: "Classic",
  lib: "custom"
}
```

### 1.6 `loadingDots`

Classic `Loading...` with cycling ellipsis erasure.

```js
loadingDots: {
  frames: ["   ","·  ","·· ","···"," ··","  ·","   "],
  interval: 160,
  category: "Classic",
  lib: "custom"
}
```

### 1.7 `matrix`

Random half-width katakana cycling — terminal rain aesthetic.

```js
matrix: {
  frames: ["ｦ","ｱ","ｳ","ｴ","ｵ","ｶ","ｷ","ｹ","ｺ","ｻ","ｼ","ｽ","ｾ","ｿ","ﾀ","ﾁ","ﾂ","ﾃ","ﾅ","ﾆ","ﾇ","ﾈ","ﾊ","ﾋ","ﾎ","ﾏ","ﾐ","ﾑ","ﾒ","ﾓ","ﾔ","ﾕ","ﾗ","ﾘ","ﾜ"],
  interval: 60,
  category: "Misc",
  lib: "custom"
}
```

### 1.8 `brailleWave`

Multi-char braille bar — equalizer ripple across 4 cells.

```js
brailleWave: {
  frames: [
    "⣾⣷⣯⣟","⣽⣾⣷⣯","⣻⣽⣾⣷","⢿⣻⣽⣾",
    "⡿⢿⣻⣽","⣟⡿⢿⣻","⣯⣟⡿⢿","⣷⣯⣟⡿"
  ],
  interval: 80,
  category: "Dots",
  lib: "custom"
}
```

### 1.9 `brailleScroll`

Single braille cell — vertical sweep pattern.

```js
brailleScroll: {
  frames: ["⠁","⠂","⠄","⡀","⡈","⡐","⡠","⣀","⣁","⣂","⣄","⣌","⣔","⣤","⣥","⣦","⣮","⣶","⣷","⣿","⢿","⠿","⢻","⠻","⢹","⠹","⢸","⠸","⠰","⠠","⠀"],
  interval: 60,
  category: "Dots",
  lib: "custom"
}
```

### 1.10 `crosshair`

Targeting reticle rotation.

```js
crosshair: {
  frames: ["⊹","✚","⊹","✚"],
  interval: 200,
  category: "Classic",
  lib: "custom"
}
```

### 1.11 `shadeBlock`

Cycling through shade block characters — smooth density pulse.

```js
shadeBlock: {
  frames: ["░","▒","▓","█","▓","▒"],
  interval: 120,
  category: "Bars & Blocks",
  lib: "custom"
}
```

### 1.12 `verticalSweep`

Three-cell vertical bar sweep — the VU meter look.

```js
verticalSweep: {
  frames: [
    "▁▁▁","▂▁▁","▃▂▁","▄▃▂","▅▄▃","▆▅▄","▇▆▅","█▇▆",
    "▇█▇","▆▇█","▅▆▇","▄▅▆","▃▄▅","▂▃▄","▁▂▃","▁▁▂"
  ],
  interval: 80,
  category: "Bars & Blocks",
  lib: "custom"
}
```

### 1.13 `equalizerWide`

Five-cell equalizer bounce — full audio visualizer aesthetic.

```js
equalizerWide: {
  frames: [
    "▁▃▅▃▁","▂▄▆▄▂","▃▅▇▅▃","▄▆█▆▄","▅▇█▇▅",
    "▆█▇█▆","▇█▆█▇","█▇▅▇█","▇▆▄▆▇","▆▅▃▅▆",
    "▅▄▂▄▅","▄▃▁▃▄","▃▂▁▂▃","▂▁▁▁▂"
  ],
  interval: 80,
  category: "Bars & Blocks",
  lib: "custom"
}
```

### 1.14 `pipeFlow`

Pipe characters showing directional flow.

```js
pipeFlow: {
  frames: ["┃","┃","╽","╿","╻","╹","╸","╺","╻","╿","╽","┃"],
  interval: 100,
  category: "Classic",
  lib: "custom"
}
```

### 1.15 `arrowPulse`

Arrow head bouncing left/right in a field.

```js
arrowPulse: {
  frames: [
    "▸▹▹▹▹","▹▸▹▹▹","▹▹▸▹▹","▹▹▹▸▹","▹▹▹▹▸",
    "▹▹▹▸▹","▹▹▸▹▹","▹▸▹▹▹"
  ],
  interval: 100,
  category: "Arrows",
  lib: "custom"
}
```

### 1.16 `dotWave`

Cycling dots with rising/falling density.

```js
dotWave: {
  frames: ["⠈","⠐","⠠","⢀","⡀","⠄","⠂","⠁"],
  interval: 100,
  category: "Dots",
  lib: "custom"
}
```

### 1.17 `spinner2x2`

2×2 block quadrant rotation — satisfying chunky pixel feel.

```js
spinner2x2: {
  frames: ["▘","▝","▗","▖"],
  interval: 120,
  category: "Bars & Blocks",
  lib: "custom"
}
```

### 1.18 `spinner2x2Fill`

2×2 block filling up then emptying.

```js
spinner2x2Fill: {
  frames: ["▖","▞","▛","█","▜","▚","▘"," "],
  interval: 120,
  category: "Bars & Blocks",
  lib: "custom"
}
```

### 1.19 `xo`

Classic retro `x` and `o` toggle. Dead simple.

```js
xo: {
  frames: ["×","○"],
  interval: 200,
  category: "Classic",
  lib: "custom"
}
```

### 1.20 `bulletTrain`

Scrolling arrow characters — velocity feel.

```js
bulletTrain: {
  frames: [
    "        ▶","       ▶ ","      ▶  ","     ▶   ",
    "    ▶    ","   ▶     ","  ▶      "," ▶       ",
    "▶        "
  ],
  interval: 70,
  category: "Arrows",
  lib: "custom"
}
```

---

## 2. New Progress Bars

> Progress bars are fundamentally different from spinners:  
> they represent **percentage completion** (0→100%) rather than indeterminate activity.  
> Each entry below defines the **fill character(s)**, **empty character(s)**, **tip/head character**, and optional **border** characters.  
> The catalogue should animate these by sweeping fill from 0% to 100% in a loop.

### Data Format

```js
// Progress bar entry structure
{
  name: "barName",
  fill: "█",         // Repeated for filled portion
  empty: "░",        // Repeated for empty portion
  tip: "▓",          // Leading edge (optional, 0-2 chars)
  borders: ["[","]"],// Left/right frame (optional)
  width: 20,         // Default render width in chars
  category: "...",   // Category name
  lib: "...",        // Attribution
  python: "..."      // Python one-liner example
}
```

### 2.1 Classic ASCII

#### `hashBar`

The OG. wget, curl, every 90s/2000s download manager.

```js
hashBar: {
  fill: "#",
  empty: "-",
  tip: ">",
  borders: ["[", "]"],
  width: 20,
  category: "ASCII Classic",
  lib: "custom",
  python: "print(f'[{\"#\" * done}>{\"-\" * remaining}] {pct}%')"
}
```

#### `equalsBar`

Arrow-head style. Seen in wget, apt, old pip.

```js
equalsBar: {
  fill: "=",
  empty: " ",
  tip: ">",
  borders: ["[", "]"],
  width: 20,
  category: "ASCII Classic",
  lib: "custom",
  python: "print(f'[{\"=\" * done}>{\" \" * remaining}]')"
}
```

#### `dotFill`

Period-based fill. Minimal, clean.

```js
dotFill: {
  fill: ".",
  empty: " ",
  tip: "",
  borders: ["[", "]"],
  width: 20,
  category: "ASCII Classic",
  lib: "custom",
  python: "print(f'[{\".\" * done}{\" \" * remaining}]')"
}
```

#### `numericFill`

tqdm's ASCII fallback: fills with digits 1→9 then `#`.

```js
numericFill: {
  fill: "123456789#",
  empty: " ",
  tip: "",
  borders: ["|", "|"],
  width: 20,
  category: "ASCII Classic",
  lib: "tqdm",
  python: "from tqdm import tqdm; [None for _ in tqdm(range(100), ascii=True)]"
}
```

#### `poundBar`

Simple pound/hash with no framing. Pure 80s terminal.

```js
poundBar: {
  fill: "█",
  empty: "·",
  tip: "",
  borders: ["", ""],
  width: 20,
  category: "ASCII Classic",
  lib: "custom",
  python: "print(f'{\"█\" * done}{\"·\" * remaining} {pct}%')"
}
```

### 2.2 Unicode Smooth

#### `smoothBlock`

tqdm default. Sub-character smooth fill via block elements.  
Uses partial blocks `▏▎▍▌▋▊▉█` for fractional fill.

```js
smoothBlock: {
  fill: "█",
  empty: "░",
  tip: "▓",
  borders: ["|", "|"],
  width: 20,
  subchars: ["▏","▎","▍","▌","▋","▊","▉","█"],
  category: "Unicode Smooth",
  lib: "tqdm",
  python: "from tqdm import tqdm; [None for _ in tqdm(range(100))]"
}
```

#### `thinBar`

Rich/pip modern style. Thin horizontal line aesthetic.

```js
thinBar: {
  fill: "━",
  empty: "━",
  tip: "╸",
  fillStyle: "bright",
  emptyStyle: "dim",
  borders: ["", ""],
  width: 20,
  category: "Unicode Smooth",
  lib: "rich",
  python: "from rich.progress import track; [None for _ in track(range(100))]"
}
```

#### `roundBlock`

Smooth blocks with rounded cap.

```js
roundBlock: {
  fill: "█",
  empty: "░",
  tip: "▌",
  borders: ["▐", "▌"],
  width: 20,
  category: "Unicode Smooth",
  lib: "custom",
  python: "# Custom bar with rounded borders"
}
```

#### `bubbleFill`

tqdm `.oO0` style — bubbly fill pattern.

```js
bubbleFill: {
  fill: "0",
  empty: " ",
  tip: "O",
  subchars: [" ",".","o","O","0"],
  borders: ["|", "|"],
  width: 20,
  category: "Unicode Smooth",
  lib: "tqdm",
  python: "from tqdm import tqdm; [None for _ in tqdm(range(100), ascii=' .oO0')]"
}
```

#### `pixelSmooth`

Sub-character fill using eighth blocks for ultra-smooth.

```js
pixelSmooth: {
  fill: "█",
  empty: " ",
  tip: "",
  subchars: [" ","▏","▎","▍","▌","▋","▊","▉"],
  borders: ["▕", "▏"],
  width: 20,
  category: "Unicode Smooth",
  lib: "custom",
  python: "# Smooth pixel fill using partial block characters"
}
```

### 2.3 Retro / Themed

#### `heartBar`

HP bar energy — hearts filling up.

```js
heartBar: {
  fill: "♥",
  empty: "♡",
  tip: "",
  borders: ["", ""],
  width: 10,
  category: "Retro",
  lib: "custom",
  python: "print(f'{\"♥\" * hp}{\"♡\" * (max_hp - hp)}')"
}
```

#### `starBar`

Rating / XP style.

```js
starBar: {
  fill: "★",
  empty: "☆",
  tip: "",
  borders: ["", ""],
  width: 10,
  category: "Retro",
  lib: "custom",
  python: "print(f'{\"★\" * done}{\"☆\" * remaining}')"
}
```

#### `diamondBar`

Crystal/gem collect aesthetic.

```js
diamondBar: {
  fill: "◆",
  empty: "◇",
  tip: "",
  borders: ["", ""],
  width: 10,
  category: "Retro",
  lib: "custom",
  python: "print(f'{\"◆\" * done}{\"◇\" * remaining}')"
}
```

#### `dotCircle`

Filled vs hollow dots — clean monospace look.

```js
dotCircle: {
  fill: "●",
  empty: "○",
  tip: "",
  borders: ["", ""],
  width: 10,
  category: "Retro",
  lib: "custom",
  python: "print(f'{\"●\" * done}{\"○\" * remaining}')"
}
```

#### `shadeBar`

Density gradient: full→dark→medium→light shade.

```js
shadeBar: {
  fill: "█",
  empty: "░",
  tip: "▒",
  borders: ["▐", "▌"],
  width: 20,
  category: "Retro",
  lib: "custom",
  python: "# Shade density gradient bar"
}
```

#### `boxFrame`

Box-drawing framed bar. Very DOS/BIOS look.

```js
boxFrame: {
  fill: "█",
  empty: "░",
  tip: "▓",
  borders: ["╢", "╟"],
  width: 20,
  category: "Retro",
  lib: "custom",
  python: "# DOS-style box-framed progress bar"
}
```

#### `boxFrameDouble`

Double-line box-drawing frame for extra weight.

```js
boxFrameDouble: {
  fill: "█",
  empty: " ",
  tip: "▌",
  borders: ["╠", "╣"],
  width: 20,
  category: "Retro",
  lib: "custom",
  python: "# Double-line box frame progress bar"
}
```

#### `bracePipe`

Curly brace + pipe. Lisp energy.

```js
bracePipe: {
  fill: "|",
  empty: " ",
  tip: "|",
  borders: ["{", "}"],
  width: 20,
  category: "Retro",
  lib: "custom",
  python: "print(f'{{{\"|\" * done}{\" \" * remaining}}}')"
}
```

#### `arrowFill`

Directional arrow fill — convoy style.

```js
arrowFill: {
  fill: "▸",
  empty: "▹",
  tip: "",
  borders: ["", ""],
  width: 20,
  category: "Retro",
  lib: "custom",
  python: "print(f'{\"▸\" * done}{\"▹\" * remaining}')"
}
```

#### `underscoreSlide`

Minimalist underline-style progress. Feels like a terminal cursor.

```js
underscoreSlide: {
  fill: "▬",
  empty: "─",
  tip: "▶",
  borders: ["", ""],
  width: 20,
  category: "Retro",
  lib: "custom",
  python: "# Minimal underline progress indicator"
}
```

#### `brailleBar`

Braille-based progress fill — stays in dot matrix aesthetic.

```js
brailleBar: {
  fill: "⣿",
  empty: "⣀",
  tip: "⣶",
  borders: ["⡇", "⢸"],
  width: 20,
  category: "Retro",
  lib: "custom",
  python: "# Braille dot-matrix progress bar"
}
```

### 2.4 Indeterminate / Bouncing Bars

> These loop continuously like spinners — they represent **unknown duration**.

#### `bouncingBlock`

Single block sliding back and forth inside brackets.

```js
bouncingBlock: {
  frames: [
    "[█·····]","[·█····]","[··█···]","[···█··]","[····█·]","[·····█]",
    "[····█·]","[···█··]","[··█···]","[·█····]"
  ],
  interval: 80,
  category: "Indeterminate",
  lib: "custom"
}
```

#### `bouncingDash`

Lightweight dash variant of the bouncing pattern.

```js
bouncingDash: {
  frames: [
    "[—     ]","[ —    ]","[  —   ]","[   —  ]","[    — ]","[     —]",
    "[    — ]","[   —  ]","[  —   ]","[ —    ]"
  ],
  interval: 80,
  category: "Indeterminate",
  lib: "custom"
}
```

#### `scanLine`

Knight Rider / KITT — scanning bar that grows and shrinks as it bounces.

```js
scanLine: {
  frames: [
    "[=         ]","[==        ]","[===       ]","[ ===      ]",
    "[  ===     ]","[   ===    ]","[    ===   ]","[     ===  ]",
    "[      === ]","[       ===]","[        ==]","[         =]",
    "[        ==]","[       ===]","[      === ]","[     ===  ]",
    "[    ===   ]","[   ===    ]","[  ===     ]","[ ===      ]",
    "[===       ]","[==        ]"
  ],
  interval: 70,
  category: "Indeterminate",
  lib: "custom"
}
```

#### `pulseBar`

Pulsing density — block fills and fades.

```js
pulseBar: {
  frames: [
    "░░░░░░░░░░","▒░░░░░░░░░","▓▒░░░░░░░░","█▓▒░░░░░░░",
    "░█▓▒░░░░░░","░░█▓▒░░░░░","░░░█▓▒░░░░","░░░░█▓▒░░░",
    "░░░░░█▓▒░░","░░░░░░█▓▒░","░░░░░░░█▓▒","░░░░░░░░█▓",
    "░░░░░░░░░█","░░░░░░░░░░"
  ],
  interval: 80,
  category: "Indeterminate",
  lib: "custom"
}
```

#### `elasticBar`

Stretches out and snaps back. Rubber band feel.

```js
elasticBar: {
  frames: [
    "[■         ]","[■■        ]","[■■■       ]","[■■■■      ]",
    "[ ■■■■     ]","[  ■■■■    ]","[   ■■■    ]","[    ■■    ]",
    "[     ■■   ]","[      ■■  ]","[       ■■ ]","[        ■■]",
    "[        ■ ]","[       ■  ]","[      ■   ]","[     ■    ]",
    "[    ■     ]","[   ■      ]","[  ■       ]","[ ■        ]"
  ],
  interval: 70,
  category: "Indeterminate",
  lib: "custom"
}
```

---

## 3. Structural Notes

### 3.1 Category Taxonomy

**Spinners** (existing + additions):

```plaintext
Dots, Classic, Arrows, Bars & Blocks, Progress, Scenes, Misc, Emoji Spinners
```

**Progress Bars** (new top-level section):

```plaintext
ASCII Classic, Unicode Smooth, Retro, Indeterminate
```

### 3.2 Tab Architecture

The catalogue should have two top-level views:

```plaintext
┌──────────┬────────────────┐
│ Spinners │ Progress Bars  │
└──────────┴────────────────┘
```

- **Spinners tab**: current grid, unchanged behavior
- **Progress bars tab**: same grid layout, but each card shows an animated bar sweeping 0→100% on loop
  - Bar cards include: name, fill/empty chars preview, Python snippet, bar width slider
  - For Indeterminate bars: loop frames like spinners

### 3.3 Progress Bar Animation Logic

Determinate bars (those with `fill`/`empty` rather than `frames`) animate on a loop:

```js
// Pseudocode for bar animation
function renderBar(bar, progress) {
  const fillCount = Math.round(progress * bar.width);
  const emptyCount = bar.width - fillCount - (bar.tip ? 1 : 0);
  const tipChar = (fillCount < bar.width && bar.tip) ? bar.tip : '';
  return bar.borders[0]
    + bar.fill.repeat(fillCount)
    + tipChar
    + bar.empty.repeat(Math.max(0, emptyCount))
    + bar.borders[1];
}

// Animate: sweep 0% → 100%, pause, reset
let progress = 0;
setInterval(() => {
  progress += 0.02;  // ~50 steps at interval speed
  if (progress > 1.15) progress = 0;  // pause at 100% then reset
  el.textContent = renderBar(bar, Math.min(progress, 1));
}, bar.interval || 60);
```

For `numericFill` and `bubbleFill` (bars with `subchars`), use the sub-character array to render the fractional leading cell:

```js
function renderSmoothBar(bar, progress) {
  const totalSubSteps = bar.width * bar.subchars.length;
  const filledSub = Math.round(progress * totalSubSteps);
  const fullCells = Math.floor(filledSub / bar.subchars.length);
  const remainder = filledSub % bar.subchars.length;
  const tipChar = (fullCells < bar.width && remainder > 0)
    ? bar.subchars[remainder - 1] : '';
  const emptyCount = bar.width - fullCells - (tipChar ? 1 : 0);
  return bar.borders[0]
    + bar.fill[bar.fill.length - 1].repeat(fullCells)
    + tipChar
    + bar.empty.repeat(Math.max(0, emptyCount))
    + bar.borders[1];
}
```

### 3.4 Speed & Width Controls (Progress Bars)

```plaintext
Speed  [===●======] 1×      Width  [=====●====] 20
```

- **Speed**: same as spinners, 0.25×–3×
- **Width**: 8–40 chars, default 20. Only applies to progress bars.

---

## 4. Python Code Snippets Per Bar Style

### tqdm — ASCII

```python
from tqdm import tqdm
import time

for i in tqdm(range(100), ascii=True):
    time.sleep(0.02)
# Output: |####5     | 50/100 [00:01<00:01, 50.0it/s]
```

### tqdm — Unicode (default)

```python
from tqdm import tqdm
import time

for i in tqdm(range(100)):
    time.sleep(0.02)
# Output: |█████░░░░░| 50/100 [00:01<00:01, 50.0it/s]
```

### tqdm — Custom characters

```python
from tqdm import tqdm
import time

for i in tqdm(range(100), ascii=" .oO0"):
    time.sleep(0.02)
# Output: |000Oo.    | 50/100
```

### Rich — Default bar

```python
from rich.progress import track
import time

for step in track(range(100), description="Processing..."):
    time.sleep(0.02)
# Output: Processing... ━━━━━━━━━━╸━━━━━━━━━━  50%
```

### Rich — Custom bar

```python
from rich.progress import Progress, BarColumn, TextColumn
import time

with Progress(
    TextColumn("[bold]{task.description}"),
    BarColumn(bar_width=30, complete_style="green", finished_style="bright_green"),
) as progress:
    task = progress.add_task("Loading", total=100)
    for _ in range(100):
        time.sleep(0.02)
        progress.advance(task)
```

### alive-progress

```python
from alive_progress import alive_bar
import time

with alive_bar(100, bar='smooth') as bar:
    for _ in range(100):
        time.sleep(0.02)
        bar()
# Also try: bar='classic', bar='blocks', bar='bubbles', bar='fish'
```

### Manual ASCII bar (zero deps)

```python
import sys, time

total = 100
for i in range(total + 1):
    filled = int(20 * i / total)
    bar = f'[{"#" * filled}{"·" * (20 - filled)}] {i}%'
    sys.stdout.write(f'\r{bar}')
    sys.stdout.flush()
    time.sleep(0.03)
print()
```

### Manual box-framed bar (zero deps)

```python
import sys, time

total = 100
for i in range(total + 1):
    filled = int(20 * i / total)
    bar = f'╢{"█" * filled}{"░" * (20 - filled)}╟ {i}%'
    sys.stdout.write(f'\r{bar}')
    sys.stdout.flush()
    time.sleep(0.03)
print()
```

---

## Appendix: Complete Injection-Ready JS

All new spinner entries, copy-paste ready:

```js
// ═══════════════════════════════════════════
//  NEW SPINNERS — paste into SPINNERS const
// ═══════════════════════════════════════════
radar:          { frames: ["◐","◓","◑","◒"], interval: 120, category: "Classic", lib: "custom" },
boxSpin:        { frames: ["┌","┐","┘","└"], interval: 100, category: "Classic", lib: "custom" },
boxSpinDouble:  { frames: ["╔","╗","╝","╚"], interval: 100, category: "Classic", lib: "custom" },
boxSpinRound:   { frames: ["╭","╮","╯","╰"], interval: 100, category: "Classic", lib: "custom" },
snake:          { frames: ["╶─╴","╺━╸","╶─╴","╺━╸"], interval: 200, category: "Classic", lib: "custom" },
loadingDots:    { frames: ["   ","·  ","·· ","···"," ··","  ·","   "], interval: 160, category: "Classic", lib: "custom" },
matrix:         { frames: ["ｦ","ｱ","ｳ","ｴ","ｵ","ｶ","ｷ","ｹ","ｺ","ｻ","ｼ","ｽ","ｾ","ｿ","ﾀ","ﾁ","ﾂ","ﾃ","ﾅ","ﾆ","ﾇ","ﾈ","ﾊ","ﾋ","ﾎ","ﾏ","ﾐ","ﾑ","ﾒ","ﾓ","ﾔ","ﾕ","ﾗ","ﾘ","ﾜ"], interval: 60, category: "Misc", lib: "custom" },
brailleWave:    { frames: ["⣾⣷⣯⣟","⣽⣾⣷⣯","⣻⣽⣾⣷","⢿⣻⣽⣾","⡿⢿⣻⣽","⣟⡿⢿⣻","⣯⣟⡿⢿","⣷⣯⣟⡿"], interval: 80, category: "Dots", lib: "custom" },
brailleScroll:  { frames: ["⠁","⠂","⠄","⡀","⡈","⡐","⡠","⣀","⣁","⣂","⣄","⣌","⣔","⣤","⣥","⣦","⣮","⣶","⣷","⣿","⢿","⠿","⢻","⠻","⢹","⠹","⢸","⠸","⠰","⠠","⠀"], interval: 60, category: "Dots", lib: "custom" },
crosshair:      { frames: ["⊹","✚","⊹","✚"], interval: 200, category: "Classic", lib: "custom" },
shadeBlock:     { frames: ["░","▒","▓","█","▓","▒"], interval: 120, category: "Bars & Blocks", lib: "custom" },
verticalSweep:  { frames: ["▁▁▁","▂▁▁","▃▂▁","▄▃▂","▅▄▃","▆▅▄","▇▆▅","█▇▆","▇█▇","▆▇█","▅▆▇","▄▅▆","▃▄▅","▂▃▄","▁▂▃","▁▁▂"], interval: 80, category: "Bars & Blocks", lib: "custom" },
equalizerWide:  { frames: ["▁▃▅▃▁","▂▄▆▄▂","▃▅▇▅▃","▄▆█▆▄","▅▇█▇▅","▆█▇█▆","▇█▆█▇","█▇▅▇█","▇▆▄▆▇","▆▅▃▅▆","▅▄▂▄▅","▄▃▁▃▄","▃▂▁▂▃","▂▁▁▁▂"], interval: 80, category: "Bars & Blocks", lib: "custom" },
pipeFlow:       { frames: ["┃","┃","╽","╿","╻","╹","╸","╺","╻","╿","╽","┃"], interval: 100, category: "Classic", lib: "custom" },
arrowPulse:     { frames: ["▸▹▹▹▹","▹▸▹▹▹","▹▹▸▹▹","▹▹▹▸▹","▹▹▹▹▸","▹▹▹▸▹","▹▹▸▹▹","▹▸▹▹▹"], interval: 100, category: "Arrows", lib: "custom" },
dotWave:        { frames: ["⠈","⠐","⠠","⢀","⡀","⠄","⠂","⠁"], interval: 100, category: "Dots", lib: "custom" },
spinner2x2:     { frames: ["▘","▝","▗","▖"], interval: 120, category: "Bars & Blocks", lib: "custom" },
spinner2x2Fill: { frames: ["▖","▞","▛","█","▜","▚","▘"," "], interval: 120, category: "Bars & Blocks", lib: "custom" },
xo:             { frames: ["×","○"], interval: 200, category: "Classic", lib: "custom" },
bulletTrain:    { frames: ["        ▶","       ▶ ","      ▶  ","     ▶   ","    ▶    ","   ▶     ","  ▶      "," ▶       ","▶        "], interval: 70, category: "Arrows", lib: "custom" },

// ═══════════════════════════════════════════
//  INDETERMINATE BARS — paste into SPINNERS const
//  (these animate as frame sequences like spinners)
// ═══════════════════════════════════════════
bouncingBlock:  { frames: ["[█·····]","[·█····]","[··█···]","[···█··]","[····█·]","[·····█]","[····█·]","[···█··]","[··█···]","[·█····]"], interval: 80, category: "Indeterminate", lib: "custom" },
bouncingDash:   { frames: ["[—     ]","[ —    ]","[  —   ]","[   —  ]","[    — ]","[     —]","[    — ]","[   —  ]","[  —   ]","[ —    ]"], interval: 80, category: "Indeterminate", lib: "custom" },
scanLine:       { frames: ["[=         ]","[==        ]","[===       ]","[ ===      ]","[  ===     ]","[   ===    ]","[    ===   ]","[     ===  ]","[      === ]","[       ===]","[        ==]","[         =]","[        ==]","[       ===]","[      === ]","[     ===  ]","[    ===   ]","[   ===    ]","[  ===     ]","[ ===      ]","[===       ]","[==        ]"], interval: 70, category: "Indeterminate", lib: "custom" },
pulseBar:       { frames: ["░░░░░░░░░░","▒░░░░░░░░░","▓▒░░░░░░░░","█▓▒░░░░░░░","░█▓▒░░░░░░","░░█▓▒░░░░░","░░░█▓▒░░░░","░░░░█▓▒░░░","░░░░░█▓▒░░","░░░░░░█▓▒░","░░░░░░░█▓▒","░░░░░░░░█▓","░░░░░░░░░█","░░░░░░░░░░"], interval: 80, category: "Indeterminate", lib: "custom" },
elasticBar:     { frames: ["[■         ]","[■■        ]","[■■■       ]","[■■■■      ]","[ ■■■■     ]","[  ■■■■    ]","[   ■■■    ]","[    ■■    ]","[     ■■   ]","[      ■■  ]","[       ■■ ]","[        ■■]","[        ■ ]","[       ■  ]","[      ■   ]","[     ■    ]","[    ■     ]","[   ■      ]","[  ■       ]","[ ■        ]"], interval: 70, category: "Indeterminate", lib: "custom" },
```

All progress bar entries for the new `PROGRESS_BARS` const:

```js
const PROGRESS_BARS = {
  hashBar:        { fill: "#", empty: "-", tip: ">", borders: ["[","]"], width: 20, category: "ASCII Classic", lib: "custom" },
  equalsBar:      { fill: "=", empty: " ", tip: ">", borders: ["[","]"], width: 20, category: "ASCII Classic", lib: "custom" },
  dotFill:        { fill: ".", empty: " ", tip: "",  borders: ["[","]"], width: 20, category: "ASCII Classic", lib: "custom" },
  numericFill:    { fill: "123456789#", empty: " ", tip: "", borders: ["|","|"], width: 20, subchars: [" ","1","2","3","4","5","6","7","8","9","#"], category: "ASCII Classic", lib: "tqdm" },
  poundBar:       { fill: "█", empty: "·", tip: "",  borders: ["",""],   width: 20, category: "ASCII Classic", lib: "custom" },
  smoothBlock:    { fill: "█", empty: "░", tip: "▓", borders: ["|","|"], width: 20, subchars: ["▏","▎","▍","▌","▋","▊","▉","█"], category: "Unicode Smooth", lib: "tqdm" },
  thinBar:        { fill: "━", empty: "╌", tip: "╸", borders: ["",""],   width: 20, category: "Unicode Smooth", lib: "rich" },
  roundBlock:     { fill: "█", empty: "░", tip: "▌", borders: ["▐","▌"], width: 20, category: "Unicode Smooth", lib: "custom" },
  bubbleFill:     { fill: "0", empty: " ", tip: "O", borders: ["|","|"], width: 20, subchars: [" ",".","o","O","0"], category: "Unicode Smooth", lib: "tqdm" },
  pixelSmooth:    { fill: "█", empty: " ", tip: "",  borders: ["▕","▏"], width: 20, subchars: [" ","▏","▎","▍","▌","▋","▊","▉"], category: "Unicode Smooth", lib: "custom" },
  heartBar:       { fill: "♥", empty: "♡", tip: "",  borders: ["",""],   width: 10, category: "Retro", lib: "custom" },
  starBar:        { fill: "★", empty: "☆", tip: "",  borders: ["",""],   width: 10, category: "Retro", lib: "custom" },
  diamondBar:     { fill: "◆", empty: "◇", tip: "",  borders: ["",""],   width: 10, category: "Retro", lib: "custom" },
  dotCircle:      { fill: "●", empty: "○", tip: "",  borders: ["",""],   width: 10, category: "Retro", lib: "custom" },
  shadeBar:       { fill: "█", empty: "░", tip: "▒", borders: ["▐","▌"], width: 20, category: "Retro", lib: "custom" },
  boxFrame:       { fill: "█", empty: "░", tip: "▓", borders: ["╢","╟"], width: 20, category: "Retro", lib: "custom" },
  boxFrameDouble: { fill: "█", empty: " ", tip: "▌", borders: ["╠","╣"], width: 20, category: "Retro", lib: "custom" },
  bracePipe:      { fill: "|", empty: " ", tip: "|", borders: ["{","}"], width: 20, category: "Retro", lib: "custom" },
  arrowFill:      { fill: "▸", empty: "▹", tip: "",  borders: ["",""],   width: 20, category: "Retro", lib: "custom" },
  underscoreSlide:{ fill: "▬", empty: "─", tip: "▶", borders: ["",""],   width: 20, category: "Retro", lib: "custom" },
  brailleBar:     { fill: "⣿", empty: "⣀", tip: "⣶", borders: ["⡇","⢸"], width: 20, category: "Retro", lib: "custom" },
};
```

---

*Generated for Python Spinners Catalogue v4 injection.*  
*ASCII first. Retro forever.*

---
