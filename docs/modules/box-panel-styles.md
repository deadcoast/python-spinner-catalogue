# Box / Panel Frame Styles — Dev Doc

> **Purpose:** Injectable reference for the Python Terminal Visual Catalogue — Boxes tab.  
> **Scope:** All Unicode box-drawing character sets, Rich Panel borders, and hand-drawn frames.  
> **Each entry:** Pre-rendered sample box + character map + Python snippet

---

## Table of Contents

1. [Unicode Box-Drawing Character Sets](#1-unicode-box-drawing-character-sets)
2. [Rich Panel Styles](#2-rich-panel-styles)
3. [Custom / ASCII Frames](#3-custom--ascii-frames)
4. [Complete Character Maps](#4-complete-character-maps)
5. [Data Format & JS Structure](#5-data-format--js-structure)
6. [Python Code Snippets](#6-python-code-snippets)
7. [Catalogue UI Spec](#7-catalogue-ui-spec)

---

## 1. Unicode Box-Drawing Character Sets

The Unicode Block U+2500–U+257F defines 128 box-drawing characters.
These group into logical sets based on line weight and style.

### 1.1 `light` — Single Light Lines

```
┌──────────────────┐
│  Hello, World!   │
│  Line two here   │
└──────────────────┘
```

Characters: `┌ ─ ┐ │ └ ┘ ├ ┤ ┬ ┴ ┼`

### 1.2 `heavy` — Single Heavy (Bold) Lines

```
┏━━━━━━━━━━━━━━━━━━┓
┃  Hello, World!   ┃
┃  Line two here   ┃
┗━━━━━━━━━━━━━━━━━━┛
```

Characters: `┏ ━ ┓ ┃ ┗ ┛ ┣ ┫ ┳ ┻ ╋`

### 1.3 `double` — Double Lines

```
╔══════════════════╗
║  Hello, World!   ║
║  Line two here   ║
╚══════════════════╝
```

Characters: `╔ ═ ╗ ║ ╚ ╝ ╠ ╣ ╦ ╩ ╬`

### 1.4 `rounded` — Rounded Corners (Light)

```
╭──────────────────╮
│  Hello, World!   │
│  Line two here   │
╰──────────────────╯
```

Characters: `╭ ─ ╮ │ ╰ ╯` (corners only — rest from light set)

### 1.5 `light-heavy-mixed` — Light Top/Bottom, Heavy Sides

```
┎──────────────────┒
┃  Hello, World!   ┃
┃  Line two here   ┃
┖──────────────────┚
```

Characters: `┎ ─ ┒ ┃ ┖ ┚`

### 1.6 `heavy-light-mixed` — Heavy Top/Bottom, Light Sides

```
┍━━━━━━━━━━━━━━━━━━┑
│  Hello, World!   │
│  Line two here   │
┕━━━━━━━━━━━━━━━━━━┙
```

Characters: `┍ ━ ┑ │ ┕ ┙`

### 1.7 `double-light-mixed` — Double Outer, Light Inner

```
╔──────────────────╗
║  Hello, World!   ║
║  Line two here   ║
╚──────────────────╝
```

Note: Uses `╔╗╚╝║` but `─` for horizontals — a hybrid.

### 1.8 `dashed-light` — Light Dashed Lines

```
┌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┐
╎  Hello, World!   ╎
╎  Line two here   ╎
└╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┘
```

Characters: `╌` (light double dash), `╎` (light double dash vertical)

### 1.9 `dashed-heavy` — Heavy Dashed Lines

```
┏╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┓
╏  Hello, World!   ╏
╏  Line two here   ╏
┗╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┛
```

Characters: `╍` (heavy double dash), `╏` (heavy double dash vertical)

### 1.10 `triple-dash-light`

```
┌┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┐
┆  Hello, World!   ┆
┆  Line two here   ┆
└┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┘
```

Characters: `┄` (light triple dash), `┆` (light triple dash vertical)

### 1.11 `triple-dash-heavy`

```
┏┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┓
┇  Hello, World!   ┇
┇  Line two here   ┇
┗┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┛
```

Characters: `┅` (heavy triple dash), `┇` (heavy triple dash vertical)

### 1.12 `quad-dash-light`

```
┌┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┐
┊  Hello, World!   ┊
┊  Line two here   ┊
└┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┘
```

Characters: `┈` (light quad dash), `┊` (light quad dash vertical)

---

## 2. Rich Panel Styles

Rich's `Panel` uses the same `box` constants as tables.
Most useful for panels:

### `box.ROUNDED` (default)

```
╭──────────────────╮
│  Hello, World!   │
╰──────────────────╯
```

### `box.SQUARE`

```
┌──────────────────┐
│  Hello, World!   │
└──────────────────┘
```

### `box.HEAVY`

```
┏━━━━━━━━━━━━━━━━━━┓
┃  Hello, World!   ┃
┗━━━━━━━━━━━━━━━━━━┛
```

### `box.DOUBLE`

```
╔══════════════════╗
║  Hello, World!   ║
╚══════════════════╝
```

### `box.ASCII`

```
+------------------+
|  Hello, World!   |
+------------------+
```

### With Title

```
╭── Title ─────────╮
│  Hello, World!   │
╰──────────────────╯
```

### With Title + Subtitle

```
╭── Title ─────────╮
│  Hello, World!   │
╰── Subtitle ──────╯
```

---

## 3. Custom / ASCII Frames

Hand-drawn ASCII frames for maximum retro compatibility.

### 3.1 `ascii-basic`

```
+------------------+
|  Hello, World!   |
+------------------+
```

Characters: `+ - |`

### 3.2 `ascii-hash`

```
####################
#  Hello, World!   #
####################
```

Characters: `#`

### 3.3 `ascii-star`

```
********************
*  Hello, World!   *
********************
```

Characters: `*`

### 3.4 `ascii-equals`

```
====================
|  Hello, World!   |
====================
```

Characters: `= |`

### 3.5 `ascii-tilde`

```
~~~~~~~~~~~~~~~~~~~~
|  Hello, World!   |
~~~~~~~~~~~~~~~~~~~~
```

Characters: `~ |`

### 3.6 `dos-single`

Old-school DOS codepage 437 look using Unicode equivalents.

```
┌──────────────────┐
│  Hello, World!   │
├──────────────────┤
│  Line two here   │
└──────────────────┘
```

### 3.7 `dos-double`

```
╔══════════════════╗
║  Hello, World!   ║
╠══════════════════╣
║  Line two here   ║
╚══════════════════╝
```

### 3.8 `shadow-box`

```
┌──────────────────┐
│  Hello, World!   │▒
│  Line two here   │▒
└──────────────────┘▒
 ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
```

Shadow effect using `▒` shade blocks.

### 3.9 `block-shadow`

```
██████████████████████
█  Hello, World!   █░
█  Line two here   █░
██████████████████████░
 ░░░░░░░░░░░░░░░░░░░░░
```

Full block `█` border with `░` shadow.

### 3.10 `braille-frame`

```
⡏⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⢹
⡇  Hello, World!   ⢸
⡇  Line two here   ⢸
⣇⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣸
```

Uses braille characters for a dot-matrix border.

### 3.11 `parenthetical`

```
(                    )
(  Hello, World!     )
(  Line two here     )
(                    )
```

### 3.12 `curly`

```
{                    }
{  Hello, World!     }
{  Line two here     }
{                    }
```

---

## 4. Complete Character Maps

### Light Box Drawing

```
      Top    Bottom   Vertical  Horizontal
      ┌─┬┐   └─┴┘      │          ─
Left  ├─┼┤   Tee chars
Right ├─┼┤
```

### Full Reference Grid

```
Corner chars:     ┌ ┐ └ ┘  (light)
                  ┏ ┓ ┗ ┛  (heavy)
                  ╔ ╗ ╚ ╝  (double)
                  ╭ ╮ ╰ ╯  (rounded)

Line chars:       ─ (light h)  │ (light v)
                  ━ (heavy h)  ┃ (heavy v)
                  ═ (double h) ║ (double v)

Tee chars:        ├ ┤ ┬ ┴  (light)
                  ┣ ┫ ┳ ┻  (heavy)
                  ╠ ╣ ╦ ╩  (double)

Cross chars:      ┼ (light)  ╋ (heavy)  ╬ (double)

Dashed:           ┄ ┅ ┆ ┇ ┈ ┉ ┊ ┋
                  ╌ ╍ ╎ ╏

Mixed corners:    ┍ ┑ ┕ ┙  (heavy h, light v)
                  ┎ ┒ ┖ ┚  (light h, heavy v)

Half lines:       ╴ ╵ ╶ ╷  (light)
                  ╸ ╹ ╺ ╻  (heavy)
```

---

## 5. Data Format & JS Structure

```js
const BOX_STYLES = {
  // name: { chars: {tl,t,tr,l,r,bl,b,br, [divH, divL, divR, cross]}, category, lib }
  light: {
    chars: { tl:"┌", t:"─", tr:"┐", l:"│", r:"│", bl:"└", b:"─", br:"┘",
             teeL:"├", teeR:"┤", teeT:"┬", teeB:"┴", cross:"┼" },
    category: "Unicode",
    lib: "unicode"
  },
  heavy: {
    chars: { tl:"┏", t:"━", tr:"┓", l:"┃", r:"┃", bl:"┗", b:"━", br:"┛",
             teeL:"┣", teeR:"┫", teeT:"┳", teeB:"┻", cross:"╋" },
    category: "Unicode",
    lib: "unicode"
  },
  double: {
    chars: { tl:"╔", t:"═", tr:"╗", l:"║", r:"║", bl:"╚", b:"═", br:"╝",
             teeL:"╠", teeR:"╣", teeT:"╦", teeB:"╩", cross:"╬" },
    category: "Unicode",
    lib: "unicode"
  },
  rounded: {
    chars: { tl:"╭", t:"─", tr:"╮", l:"│", r:"│", bl:"╰", b:"─", br:"╯" },
    category: "Unicode",
    lib: "unicode"
  },
  asciiBasic: {
    chars: { tl:"+", t:"-", tr:"+", l:"|", r:"|", bl:"+", b:"-", br:"+" },
    category: "ASCII",
    lib: "custom"
  },
  asciiHash: {
    chars: { tl:"#", t:"#", tr:"#", l:"#", r:"#", bl:"#", b:"#", br:"#" },
    category: "ASCII",
    lib: "custom"
  },
  dashedLight: {
    chars: { tl:"┌", t:"╌", tr:"┐", l:"╎", r:"╎", bl:"└", b:"╌", br:"┘" },
    category: "Unicode",
    lib: "unicode"
  },
  dashedHeavy: {
    chars: { tl:"┏", t:"╍", tr:"┓", l:"╏", r:"╏", bl:"┗", b:"╍", br:"┛" },
    category: "Unicode",
    lib: "unicode"
  },
  tripleDashLight: {
    chars: { tl:"┌", t:"┄", tr:"┐", l:"┆", r:"┆", bl:"└", b:"┄", br:"┘" },
    category: "Unicode",
    lib: "unicode"
  },
  quadDashLight: {
    chars: { tl:"┌", t:"┈", tr:"┐", l:"┊", r:"┊", bl:"└", b:"┈", br:"┘" },
    category: "Unicode",
    lib: "unicode"
  },
  braille: {
    chars: { tl:"⡏", t:"⠉", tr:"⢹", l:"⡇", r:"⢸", bl:"⣇", b:"⣀", br:"⣸" },
    category: "Braille",
    lib: "custom"
  },
  shadow: {
    chars: { tl:"┌", t:"─", tr:"┐", l:"│", r:"│▒", bl:"└", b:"─┘▒", br:"",
             shadowH:"▒", shadowV:"▒" },
    category: "Special",
    lib: "custom"
  },
  blockShadow: {
    chars: { tl:"█", t:"█", tr:"█", l:"█", r:"█░", bl:"█", b:"█░", br:"",
             shadowH:"░", shadowV:"░" },
    category: "Special",
    lib: "custom"
  },
};
```

### Rendering function

```js
function renderBox(style, content, width) {
  const c = BOX_STYLES[style].chars;
  const inner = width - 2;
  const top = c.tl + c.t.repeat(inner) + c.tr;
  const bot = c.bl + c.b.repeat(inner) + c.br;
  const lines = content.map(line =>
    c.l + " " + line.padEnd(inner - 2) + " " + c.r
  );
  return [top, ...lines, bot].join("\n");
}
```

---

## 6. Python Code Snippets

### Rich Panel

```python
from rich.console import Console
from rich.panel import Panel
from rich import box

console = Console()

# Default (ROUNDED)
console.print(Panel("Hello, World!"))

# With title and specific box style
console.print(Panel(
    "Hello, World!",
    title="My Panel",
    box=box.DOUBLE,
    border_style="green"
))

# Iterate all box styles
import rich.box as b
for name in ["ASCII","SQUARE","ROUNDED","HEAVY","DOUBLE","MINIMAL"]:
    console.print(Panel(f"box.{name}", box=getattr(b, name), expand=False))
```

### Manual box drawing (zero deps)

```python
def draw_box(text, style="light"):
    chars = {
        "light":   ("┌","─","┐","│","└","┘"),
        "heavy":   ("┏","━","┓","┃","┗","┛"),
        "double":  ("╔","═","╗","║","╚","╝"),
        "rounded": ("╭","─","╮","│","╰","╯"),
        "ascii":   ("+","-","+","|","+","+"),
    }
    tl, h, tr, v, bl, br = chars[style]
    lines = text.split("\n")
    width = max(len(l) for l in lines) + 2
    print(tl + h * width + tr)
    for line in lines:
        print(f"{v} {line:<{width-1}}{v}")
    print(bl + h * width + br)

draw_box("Hello, World!\nLine two", style="rounded")
```

---

## 7. Catalogue UI Spec

### Card Layout

```
┌────────────────────────────────┐
│  rounded               Unicode │
│                                │
│  ╭──────────────────╮          │
│  │  Hello, World!   │          │
│  │  Sample text     │          │
│  ╰──────────────────╯          │
│                                │
│    ╭ ─ ╮ │ ╰ ╯   [Copy] [Code] │
└────────────────────────────────┘
```

The bottom of each card shows the individual characters used in that box style.

### Category Filters

```
[All] [Unicode] [ASCII] [Braille] [Special]
```

### Interactive Feature

- Click any box style → modal with:
  - Full character map
  - Python code (Rich + manual)
  - Copy individual characters
  - Live preview with custom text input

---

*Generated for Python Terminal Visual Catalogue — Boxes tab.*  
*ASCII first. Retro forever.*
