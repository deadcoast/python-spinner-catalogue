# Box / Panel Frame Styles — Dev Doc

> **Purpose:** Injectable reference for the Python Terminal Visual Catalogue — Boxes tab.  
> **Scope:** All Unicode box-drawing character sets, Rich Panel borders, and hand-drawn frames.  
> **Each entry:** Pre-rendered sample box + character map + Python snippet

---

## 1. <a name='TableofContents'></a>Table of Contents

<!-- vscode-markdown-toc -->
* 1. [Table of Contents](#TableofContents)
* 2. [1. Unicode Box-Drawing Character Sets](#UnicodeBox-DrawingCharacterSets)
	* 2.1. [1.1 `light` — Single Light Lines](#lightSingleLightLines)
	* 2.2. [1.2 `heavy` — Single Heavy (Bold) Lines](#heavySingleHeavyBoldLines)
	* 2.3. [1.3 `double` — Double Lines](#doubleDoubleLines)
	* 2.4. [1.4 `rounded` — Rounded Corners (Light)](#roundedRoundedCornersLight)
	* 2.5. [1.5 `light-heavy-mixed` — Light Top/Bottom, Heavy Sides](#light-heavy-mixedLightTopBottomHeavySides)
	* 2.6. [1.6 `heavy-light-mixed` — Heavy Top/Bottom, Light Sides](#heavy-light-mixedHeavyTopBottomLightSides)
	* 2.7. [1.7 `double-light-mixed` — Double Outer, Light Inner](#double-light-mixedDoubleOuterLightInner)
	* 2.8. [1.8 `dashed-light` — Light Dashed Lines](#dashed-lightLightDashedLines)
	* 2.9. [1.9 `dashed-heavy` — Heavy Dashed Lines](#dashed-heavyHeavyDashedLines)
	* 2.10. [1.10 `triple-dash-light`](#triple-dash-light)
	* 2.11. [1.11 `triple-dash-heavy`](#triple-dash-heavy)
	* 2.12. [1.12 `quad-dash-light`](#quad-dash-light)
* 3. [2. Rich Panel Styles](#RichPanelStyles)
	* 3.1. [`box.ROUNDED` (default)](#box.ROUNDEDdefault)
	* 3.2. [`box.SQUARE`](#box.SQUARE)
	* 3.3. [`box.HEAVY`](#box.HEAVY)
	* 3.4. [`box.DOUBLE`](#box.DOUBLE)
	* 3.5. [`box.ASCII`](#box.ASCII)
	* 3.6. [With Title](#WithTitle)
	* 3.7. [With Title + Subtitle](#WithTitleSubtitle)
* 4. [3. Custom / ASCII Frames](#CustomASCIIFrames)
	* 4.1. [3.1 `ascii-basic`](#ascii-basic)
	* 4.2. [3.2 `ascii-hash`](#ascii-hash)
	* 4.3. [3.3 `ascii-star`](#ascii-star)
	* 4.4. [3.4 `ascii-equals`](#ascii-equals)
	* 4.5. [3.5 `ascii-tilde`](#ascii-tilde)
	* 4.6. [3.6 `dos-single`](#dos-single)
	* 4.7. [3.7 `dos-double`](#dos-double)
	* 4.8. [3.8 `shadow-box`](#shadow-box)
	* 4.9. [3.9 `block-shadow`](#block-shadow)
	* 4.10. [3.10 `braille-frame`](#braille-frame)
	* 4.11. [3.11 `parenthetical`](#parenthetical)
	* 4.12. [3.12 `curly`](#curly)
* 5. [4. Complete Character Maps](#CompleteCharacterMaps)
	* 5.1. [Light Box Drawing](#LightBoxDrawing)
	* 5.2. [Full Reference Grid](#FullReferenceGrid)
* 6. [5. Data Format & JS Structure](#DataFormatJSStructure)
	* 6.1. [Rendering function](#Renderingfunction)
* 7. [6. Python Code Snippets](#PythonCodeSnippets)
	* 7.1. [Rich Panel](#RichPanel)
	* 7.2. [Manual box drawing (zero deps)](#Manualboxdrawingzerodeps)
* 8. [7. Catalogue UI Spec](#CatalogueUISpec)
	* 8.1. [Card Layout](#CardLayout)
	* 8.2. [Category Filters](#CategoryFilters)
	* 8.3. [Interactive Feature](#InteractiveFeature)

<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->

---

## 2. <a name='UnicodeBox-DrawingCharacterSets'></a>1. Unicode Box-Drawing Character Sets

The Unicode Block U+2500–U+257F defines 128 box-drawing characters.
These group into logical sets based on line weight and style.

### 2.1. <a name='lightSingleLightLines'></a>1.1 `light` — Single Light Lines

```
┌──────────────────┐
│  Hello, World!   │
│  Line two here   │
└──────────────────┘
```

Characters: `┌ ─ ┐ │ └ ┘ ├ ┤ ┬ ┴ ┼`

### 2.2. <a name='heavySingleHeavyBoldLines'></a>1.2 `heavy` — Single Heavy (Bold) Lines

```
┏━━━━━━━━━━━━━━━━━━┓
┃  Hello, World!   ┃
┃  Line two here   ┃
┗━━━━━━━━━━━━━━━━━━┛
```

Characters: `┏ ━ ┓ ┃ ┗ ┛ ┣ ┫ ┳ ┻ ╋`

### 2.3. <a name='doubleDoubleLines'></a>1.3 `double` — Double Lines

```
╔══════════════════╗
║  Hello, World!   ║
║  Line two here   ║
╚══════════════════╝
```

Characters: `╔ ═ ╗ ║ ╚ ╝ ╠ ╣ ╦ ╩ ╬`

### 2.4. <a name='roundedRoundedCornersLight'></a>1.4 `rounded` — Rounded Corners (Light)

```
╭──────────────────╮
│  Hello, World!   │
│  Line two here   │
╰──────────────────╯
```

Characters: `╭ ─ ╮ │ ╰ ╯` (corners only — rest from light set)

### 2.5. <a name='light-heavy-mixedLightTopBottomHeavySides'></a>1.5 `light-heavy-mixed` — Light Top/Bottom, Heavy Sides

```
┎──────────────────┒
┃  Hello, World!   ┃
┃  Line two here   ┃
┖──────────────────┚
```

Characters: `┎ ─ ┒ ┃ ┖ ┚`

### 2.6. <a name='heavy-light-mixedHeavyTopBottomLightSides'></a>1.6 `heavy-light-mixed` — Heavy Top/Bottom, Light Sides

```
┍━━━━━━━━━━━━━━━━━━┑
│  Hello, World!   │
│  Line two here   │
┕━━━━━━━━━━━━━━━━━━┙
```

Characters: `┍ ━ ┑ │ ┕ ┙`

### 2.7. <a name='double-light-mixedDoubleOuterLightInner'></a>1.7 `double-light-mixed` — Double Outer, Light Inner

```
╔──────────────────╗
║  Hello, World!   ║
║  Line two here   ║
╚──────────────────╝
```

Note: Uses `╔╗╚╝║` but `─` for horizontals — a hybrid.

### 2.8. <a name='dashed-lightLightDashedLines'></a>1.8 `dashed-light` — Light Dashed Lines

```
┌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┐
╎  Hello, World!   ╎
╎  Line two here   ╎
└╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┘
```

Characters: `╌` (light double dash), `╎` (light double dash vertical)

### 2.9. <a name='dashed-heavyHeavyDashedLines'></a>1.9 `dashed-heavy` — Heavy Dashed Lines

```
┏╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┓
╏  Hello, World!   ╏
╏  Line two here   ╏
┗╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┛
```

Characters: `╍` (heavy double dash), `╏` (heavy double dash vertical)

### 2.10. <a name='triple-dash-light'></a>1.10 `triple-dash-light`

```
┌┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┐
┆  Hello, World!   ┆
┆  Line two here   ┆
└┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┘
```

Characters: `┄` (light triple dash), `┆` (light triple dash vertical)

### 2.11. <a name='triple-dash-heavy'></a>1.11 `triple-dash-heavy`

```
┏┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┓
┇  Hello, World!   ┇
┇  Line two here   ┇
┗┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┛
```

Characters: `┅` (heavy triple dash), `┇` (heavy triple dash vertical)

### 2.12. <a name='quad-dash-light'></a>1.12 `quad-dash-light`

```
┌┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┐
┊  Hello, World!   ┊
┊  Line two here   ┊
└┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┘
```

Characters: `┈` (light quad dash), `┊` (light quad dash vertical)

---

## 3. <a name='RichPanelStyles'></a>2. Rich Panel Styles

Rich's `Panel` uses the same `box` constants as tables.
Most useful for panels:

### 3.1. <a name='box.ROUNDEDdefault'></a>`box.ROUNDED` (default)

```
╭──────────────────╮
│  Hello, World!   │
╰──────────────────╯
```

### 3.2. <a name='box.SQUARE'></a>`box.SQUARE`

```
┌──────────────────┐
│  Hello, World!   │
└──────────────────┘
```

### 3.3. <a name='box.HEAVY'></a>`box.HEAVY`

```
┏━━━━━━━━━━━━━━━━━━┓
┃  Hello, World!   ┃
┗━━━━━━━━━━━━━━━━━━┛
```

### 3.4. <a name='box.DOUBLE'></a>`box.DOUBLE`

```
╔══════════════════╗
║  Hello, World!   ║
╚══════════════════╝
```

### 3.5. <a name='box.ASCII'></a>`box.ASCII`

```
+------------------+
|  Hello, World!   |
+------------------+
```

### 3.6. <a name='WithTitle'></a>With Title

```
╭── Title ─────────╮
│  Hello, World!   │
╰──────────────────╯
```

### 3.7. <a name='WithTitleSubtitle'></a>With Title + Subtitle

```
╭── Title ─────────╮
│  Hello, World!   │
╰── Subtitle ──────╯
```

---

## 4. <a name='CustomASCIIFrames'></a>3. Custom / ASCII Frames

Hand-drawn ASCII frames for maximum retro compatibility.

### 4.1. <a name='ascii-basic'></a>3.1 `ascii-basic`

```
+------------------+
|  Hello, World!   |
+------------------+
```

Characters: `+ - |`

### 4.2. <a name='ascii-hash'></a>3.2 `ascii-hash`

```
####################
#  Hello, World!   #
####################
```

Characters: `#`

### 4.3. <a name='ascii-star'></a>3.3 `ascii-star`

```
********************
*  Hello, World!   *
********************
```

Characters: `*`

### 4.4. <a name='ascii-equals'></a>3.4 `ascii-equals`

```
====================
|  Hello, World!   |
====================
```

Characters: `= |`

### 4.5. <a name='ascii-tilde'></a>3.5 `ascii-tilde`

```
~~~~~~~~~~~~~~~~~~~~
|  Hello, World!   |
~~~~~~~~~~~~~~~~~~~~
```

Characters: `~ |`

### 4.6. <a name='dos-single'></a>3.6 `dos-single`

Old-school DOS codepage 437 look using Unicode equivalents.

```
┌──────────────────┐
│  Hello, World!   │
├──────────────────┤
│  Line two here   │
└──────────────────┘
```

### 4.7. <a name='dos-double'></a>3.7 `dos-double`

```
╔══════════════════╗
║  Hello, World!   ║
╠══════════════════╣
║  Line two here   ║
╚══════════════════╝
```

### 4.8. <a name='shadow-box'></a>3.8 `shadow-box`

```
┌──────────────────┐
│  Hello, World!   │▒
│  Line two here   │▒
└──────────────────┘▒
 ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
```

Shadow effect using `▒` shade blocks.

### 4.9. <a name='block-shadow'></a>3.9 `block-shadow`

```
██████████████████████
█  Hello, World!     █░
█  Line two here     █░
██████████████████████░
 ░░░░░░░░░░░░░░░░░░░░░
```

Full block `█` border with `░` shadow.

### 4.10. <a name='braille-frame'></a>3.10 `braille-frame`

```
⡏⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⢹
⡇  Hello, World!     ⢸
⡇  Line two here     ⢸
⣇⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣸
```

Uses braille characters for a dot-matrix border.

### 4.11. <a name='parenthetical'></a>3.11 `parenthetical`

```
(                    )
(  Hello, World!     )
(  Line two here     )
(                    )
```

### 4.12. <a name='curly'></a>3.12 `curly`

```
{                    }
{  Hello, World!     }
{  Line two here     }
{                    }
```

---

## 5. <a name='CompleteCharacterMaps'></a>4. Complete Character Maps

### 5.1. <a name='LightBoxDrawing'></a>Light Box Drawing

```
      Top    Bottom   Vertical  Horizontal
      ┌─┬┐   └─┴┘      │          ─
Left  ├─┼┤   Tee chars
Right ├─┼┤
```

### 5.2. <a name='FullReferenceGrid'></a>Full Reference Grid

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

## 6. <a name='DataFormatJSStructure'></a>5. Data Format & JS Structure

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

### 6.1. <a name='Renderingfunction'></a>Rendering function

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

## 7. <a name='PythonCodeSnippets'></a>6. Python Code Snippets

### 7.1. <a name='RichPanel'></a>Rich Panel

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

### 7.2. <a name='Manualboxdrawingzerodeps'></a>Manual box drawing (zero deps)

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

## 8. <a name='CatalogueUISpec'></a>7. Catalogue UI Spec

### 8.1. <a name='CardLayout'></a>Card Layout

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

### 8.2. <a name='CategoryFilters'></a>Category Filters

```
[All] [Unicode] [ASCII] [Braille] [Special]
```

### 8.3. <a name='InteractiveFeature'></a>Interactive Feature

* Click any box style → modal with:
  * Full character map
  * Python code (Rich + manual)
  * Copy individual characters
  * Live preview with custom text input

---

*Generated for Python Terminal Visual Catalogue — Boxes tab.*  
*ASCII first. Retro forever.*
