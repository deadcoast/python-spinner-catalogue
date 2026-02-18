# ANSI Color Palettes — Dev Doc

> **Purpose:** Injectable reference for the Python Terminal Visual Catalogue — Colors tab.  
> **Scope:** 8 popular terminal color schemes, each with full 16-color ANSI palette + metadata.  
> **Each entry:** Hex values, ANSI index mapping, RGB, background/foreground, and Python escape codes.

---

## 1. <a name='TableofContents'></a>Table of Contents

<!-- vscode-markdown-toc -->
* 1. [Table of Contents](#TableofContents)
* 2. [1. ANSI Standard Overview](#ANSIStandardOverview)
* 3. [2. Color Palettes](#ColorPalettes)
	* 3.1. [2.1 Solarized Dark](#SolarizedDark)
	* 3.2. [2.2 Solarized Light](#SolarizedLight)
	* 3.3. [2.3 Dracula](#Dracula)
	* 3.4. [2.4 Monokai](#Monokai)
	* 3.5. [2.5 Nord](#Nord)
	* 3.6. [2.6 Gruvbox Dark](#GruvboxDark)
	* 3.7. [2.7 Catppuccin Mocha](#CatppuccinMocha)
	* 3.8. [2.8 Tokyo Night](#TokyoNight)
* 4. [3. Data Format & JS Structure](#DataFormatJSStructure)
* 5. [4. Python Code Snippets](#PythonCodeSnippets)
	* 5.1. [Print all 16 ANSI colors](#Printall16ANSIcolors)
	* 5.2. [Print color swatches with background](#Printcolorswatcheswithbackground)
	* 5.3. [Rich color display](#Richcolordisplay)
	* 5.4. [Set terminal colors with escape sequences](#Setterminalcolorswithescapesequences)
	* 5.5. [Colorama (cross-platform)](#Coloramacross-platform)
* 6. [5. Escape Code Reference](#EscapeCodeReference)
	* 6.1. [Text Attributes](#TextAttributes)
	* 6.2. [256-Color Mode](#ColorMode)
	* 6.3. [True Color (24-bit)](#TrueColor24-bit)
* 7. [6. Catalogue UI Spec](#CatalogueUISpec)
	* 7.1. [Palette Card Layout](#PaletteCardLayout)
	* 7.2. [Features](#Features)
	* 7.3. [Warmth Metric](#WarmthMetric)

<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->

---

## 2. <a name='ANSIStandardOverview'></a>1. ANSI Standard Overview

The standard ANSI 16-color palette maps to escape codes 30–37 (normal) and 90–97 (bright):

```
Index  Name           Code (FG)  Code (BG)   Role
─────  ─────────────  ─────────  ─────────   ──────────────
0      Black          \e[30m     \e[40m      Dark background
1      Red            \e[31m     \e[41m      Errors
2      Green          \e[32m     \e[42m      Success
3      Yellow         \e[33m     \e[43m      Warnings
4      Blue           \e[34m     \e[44m      Info / links
5      Magenta        \e[35m     \e[45m      Special
6      Cyan           \e[36m     \e[46m      Strings
7      White          \e[37m     \e[47m      Light foreground
8      Bright Black   \e[90m     \e[100m     Comments / dim
9      Bright Red     \e[91m     \e[101m     Bright errors
10     Bright Green   \e[92m     \e[102m     Bright success
11     Bright Yellow  \e[93m     \e[103m     Bright warnings
12     Bright Blue    \e[94m     \e[104m     Bright info
13     Bright Magenta \e[95m     \e[105m     Bright special
14     Bright Cyan    \e[96m     \e[106m     Bright strings
15     Bright White   \e[97m     \e[107m     Bright foreground
```

---

## 3. <a name='ColorPalettes'></a>2. Color Palettes

### 3.1. <a name='SolarizedDark'></a>2.1 Solarized Dark

**Author:** Ethan Schoonover | **Year:** 2011 | **Philosophy:** CIELAB-symmetric lightness for reduced eye strain

```
Background: #002b36    Foreground: #839496

 Index  Name            Hex       RGB
 ─────  ──────────────  ────────  ──────────────
 0      Black           #073642   (7, 54, 66)
 1      Red             #dc322f   (220, 50, 47)
 2      Green           #859900   (133, 153, 0)
 3      Yellow          #b58900   (181, 137, 0)
 4      Blue            #268bd2   (38, 139, 210)
 5      Magenta         #d33682   (211, 54, 130)
 6      Cyan            #2aa198   (42, 161, 152)
 7      White           #eee8d5   (238, 232, 213)
 8      Bright Black    #002b36   (0, 43, 54)
 9      Bright Red      #cb4b16   (203, 75, 22)
 10     Bright Green    #586e75   (88, 110, 117)
 11     Bright Yellow   #657b83   (101, 123, 131)
 12     Bright Blue     #839496   (131, 148, 150)
 13     Bright Magenta  #6c71c4   (108, 113, 196)
 14     Bright Cyan     #93a1a1   (147, 161, 161)
 15     Bright White    #fdf6e3   (253, 246, 227)
```

### 3.2. <a name='SolarizedLight'></a>2.2 Solarized Light

**Background:** `#fdf6e3` | **Foreground:** `#657b83`  
Same 16 accent colors as Solarized Dark — only bg/fg swap.

### 3.3. <a name='Dracula'></a>2.3 Dracula

**Author:** Zeno Rocha | **Year:** 2013 | **Philosophy:** Dark purple background, vivid accents

```
Background: #282a36    Foreground: #f8f8f2

 Index  Name            Hex       RGB
 ─────  ──────────────  ────────  ──────────────
 0      Black           #21222c   (33, 34, 44)
 1      Red             #ff5555   (255, 85, 85)
 2      Green           #50fa7b   (80, 250, 123)
 3      Yellow          #f1fa8c   (241, 250, 140)
 4      Blue            #bd93f9   (189, 147, 249)
 5      Magenta         #ff79c6   (255, 121, 198)
 6      Cyan            #8be9fd   (139, 233, 253)
 7      White           #f8f8f2   (248, 248, 242)
 8      Bright Black    #6272a4   (98, 114, 164)
 9      Bright Red      #ff6e6e   (255, 110, 110)
 10     Bright Green    #69ff94   (105, 255, 148)
 11     Bright Yellow   #ffffa5   (255, 255, 165)
 12     Bright Blue     #d6acff   (214, 172, 255)
 13     Bright Magenta  #ff92df   (255, 146, 223)
 14     Bright Cyan     #a4ffff   (164, 255, 255)
 15     Bright White    #ffffff   (255, 255, 255)
```

### 3.4. <a name='Monokai'></a>2.4 Monokai

**Author:** Wimer Hazenberg | **Year:** 2006 | **Philosophy:** Warm, high-contrast for code readability

```
Background: #272822    Foreground: #f8f8f2

 Index  Name            Hex       RGB
 ─────  ──────────────  ────────  ──────────────
 0      Black           #272822   (39, 40, 34)
 1      Red             #f92672   (249, 38, 114)
 2      Green           #a6e22e   (166, 226, 46)
 3      Yellow          #f4bf75   (244, 191, 117)
 4      Blue            #66d9ef   (102, 217, 239)
 5      Magenta         #ae81ff   (174, 129, 255)
 6      Cyan            #a1efe4   (161, 239, 228)
 7      White           #f8f8f2   (248, 248, 242)
 8      Bright Black    #75715e   (117, 113, 94)
 9      Bright Red      #f92672   (249, 38, 114)
 10     Bright Green    #a6e22e   (166, 226, 46)
 11     Bright Yellow   #f4bf75   (244, 191, 117)
 12     Bright Blue     #66d9ef   (102, 217, 239)
 13     Bright Magenta  #ae81ff   (174, 129, 255)
 14     Bright Cyan     #a1efe4   (161, 239, 228)
 15     Bright White    #f9f8f5   (249, 248, 245)
```

### 3.5. <a name='Nord'></a>2.5 Nord

**Author:** Arctic Ice Studio | **Year:** 2016 | **Philosophy:** Arctic blue-grey palette inspired by polar landscapes

```
Background: #2e3440    Foreground: #d8dee9

 Index  Name            Hex       RGB
 ─────  ──────────────  ────────  ──────────────
 0      Black           #3b4252   (59, 66, 82)
 1      Red             #bf616a   (191, 97, 106)
 2      Green           #a3be8c   (163, 190, 140)
 3      Yellow          #ebcb8b   (235, 203, 139)
 4      Blue            #81a1c1   (129, 161, 193)
 5      Magenta         #b48ead   (180, 142, 173)
 6      Cyan            #88c0d0   (136, 192, 208)
 7      White           #e5e9f0   (229, 233, 240)
 8      Bright Black    #4c566a   (76, 86, 106)
 9      Bright Red      #bf616a   (191, 97, 106)
 10     Bright Green    #a3be8c   (163, 190, 140)
 11     Bright Yellow   #ebcb8b   (235, 203, 139)
 12     Bright Blue     #81a1c1   (129, 161, 193)
 13     Bright Magenta  #b48ead   (180, 142, 173)
 14     Bright Cyan     #8fbcbb   (143, 188, 187)
 15     Bright White    #eceff4   (236, 239, 244)
```

### 3.6. <a name='GruvboxDark'></a>2.6 Gruvbox Dark

**Author:** morhetz | **Year:** 2012 | **Philosophy:** Retro groove, warm earthy tones

```
Background: #282828    Foreground: #ebdbb2

 Index  Name            Hex       RGB
 ─────  ──────────────  ────────  ──────────────
 0      Black           #282828   (40, 40, 40)
 1      Red             #cc241d   (204, 36, 29)
 2      Green           #98971a   (152, 151, 26)
 3      Yellow          #d79921   (215, 153, 33)
 4      Blue            #458588   (69, 133, 136)
 5      Magenta         #b16286   (177, 98, 134)
 6      Cyan            #689d6a   (104, 157, 106)
 7      White           #a89984   (168, 153, 132)
 8      Bright Black    #928374   (146, 131, 116)
 9      Bright Red      #fb4934   (251, 73, 52)
 10     Bright Green    #b8bb26   (184, 187, 38)
 11     Bright Yellow   #fabd2f   (250, 189, 47)
 12     Bright Blue     #83a598   (131, 165, 152)
 13     Bright Magenta  #d3869b   (211, 134, 155)
 14     Bright Cyan     #8ec07c   (142, 192, 124)
 15     Bright White    #ebdbb2   (235, 219, 178)
```

### 3.7. <a name='CatppuccinMocha'></a>2.7 Catppuccin Mocha

**Author:** catppuccin | **Year:** 2021 | **Philosophy:** Soothing pastel tones for late-night coding

```
Background: #1e1e2e    Foreground: #cdd6f4

 Index  Name            Hex       RGB
 ─────  ──────────────  ────────  ──────────────
 0      Black           #45475a   (69, 71, 90)
 1      Red             #f38ba8   (243, 139, 168)
 2      Green           #a6e3a1   (166, 227, 161)
 3      Yellow          #f9e2af   (249, 226, 175)
 4      Blue            #89b4fa   (137, 180, 250)
 5      Magenta         #f5c2e7   (245, 194, 231)
 6      Cyan            #94e2d5   (148, 226, 213)
 7      White           #bac2de   (186, 194, 222)
 8      Bright Black    #585b70   (88, 91, 112)
 9      Bright Red      #f38ba8   (243, 139, 168)
 10     Bright Green    #a6e3a1   (166, 227, 161)
 11     Bright Yellow   #f9e2af   (249, 226, 175)
 12     Bright Blue     #89b4fa   (137, 180, 250)
 13     Bright Magenta  #f5c2e7   (245, 194, 231)
 14     Bright Cyan     #94e2d5   (148, 226, 213)
 15     Bright White    #a6adc8   (166, 173, 200)
```

### 3.8. <a name='TokyoNight'></a>2.8 Tokyo Night

**Author:** folke | **Year:** 2021 | **Philosophy:** Inspired by Tokyo city lights at night

```
Background: #1a1b26    Foreground: #c0caf5

 Index  Name            Hex       RGB
 ─────  ──────────────  ────────  ──────────────
 0      Black           #15161e   (21, 22, 30)
 1      Red             #f7768e   (247, 118, 142)
 2      Green           #9ece6a   (158, 206, 106)
 3      Yellow          #e0af68   (224, 175, 104)
 4      Blue            #7aa2f7   (122, 162, 247)
 5      Magenta         #bb9af7   (187, 154, 247)
 6      Cyan            #7dcfff   (125, 207, 255)
 7      White           #a9b1d6   (169, 177, 214)
 8      Bright Black    #414868   (65, 72, 104)
 9      Bright Red      #f7768e   (247, 118, 142)
 10     Bright Green    #9ece6a   (158, 206, 106)
 11     Bright Yellow   #e0af68   (224, 175, 104)
 12     Bright Blue     #7aa2f7   (122, 162, 247)
 13     Bright Magenta  #bb9af7   (187, 154, 247)
 14     Bright Cyan     #7dcfff   (125, 207, 255)
 15     Bright White    #c0caf5   (192, 202, 245)
```

---

## 4. <a name='DataFormatJSStructure'></a>3. Data Format & JS Structure

```js
const COLOR_PALETTES = {
  "Solarized Dark": {
    author: "Ethan Schoonover",
    year: 2011,
    bg: "#002b36",
    fg: "#839496",
    colors: [
      "#073642","#dc322f","#859900","#b58900","#268bd2","#d33682","#2aa198","#eee8d5",
      "#002b36","#cb4b16","#586e75","#657b83","#839496","#6c71c4","#93a1a1","#fdf6e3"
    ]
  },
  "Solarized Light": {
    author: "Ethan Schoonover",
    year: 2011,
    bg: "#fdf6e3",
    fg: "#657b83",
    colors: [
      "#073642","#dc322f","#859900","#b58900","#268bd2","#d33682","#2aa198","#eee8d5",
      "#002b36","#cb4b16","#586e75","#657b83","#839496","#6c71c4","#93a1a1","#fdf6e3"
    ]
  },
  "Dracula": {
    author: "Zeno Rocha",
    year: 2013,
    bg: "#282a36",
    fg: "#f8f8f2",
    colors: [
      "#21222c","#ff5555","#50fa7b","#f1fa8c","#bd93f9","#ff79c6","#8be9fd","#f8f8f2",
      "#6272a4","#ff6e6e","#69ff94","#ffffa5","#d6acff","#ff92df","#a4ffff","#ffffff"
    ]
  },
  "Monokai": {
    author: "Wimer Hazenberg",
    year: 2006,
    bg: "#272822",
    fg: "#f8f8f2",
    colors: [
      "#272822","#f92672","#a6e22e","#f4bf75","#66d9ef","#ae81ff","#a1efe4","#f8f8f2",
      "#75715e","#f92672","#a6e22e","#f4bf75","#66d9ef","#ae81ff","#a1efe4","#f9f8f5"
    ]
  },
  "Nord": {
    author: "Arctic Ice Studio",
    year: 2016,
    bg: "#2e3440",
    fg: "#d8dee9",
    colors: [
      "#3b4252","#bf616a","#a3be8c","#ebcb8b","#81a1c1","#b48ead","#88c0d0","#e5e9f0",
      "#4c566a","#bf616a","#a3be8c","#ebcb8b","#81a1c1","#b48ead","#8fbcbb","#eceff4"
    ]
  },
  "Gruvbox Dark": {
    author: "morhetz",
    year: 2012,
    bg: "#282828",
    fg: "#ebdbb2",
    colors: [
      "#282828","#cc241d","#98971a","#d79921","#458588","#b16286","#689d6a","#a89984",
      "#928374","#fb4934","#b8bb26","#fabd2f","#83a598","#d3869b","#8ec07c","#ebdbb2"
    ]
  },
  "Catppuccin Mocha": {
    author: "catppuccin",
    year: 2021,
    bg: "#1e1e2e",
    fg: "#cdd6f4",
    colors: [
      "#45475a","#f38ba8","#a6e3a1","#f9e2af","#89b4fa","#f5c2e7","#94e2d5","#bac2de",
      "#585b70","#f38ba8","#a6e3a1","#f9e2af","#89b4fa","#f5c2e7","#94e2d5","#a6adc8"
    ]
  },
  "Tokyo Night": {
    author: "folke",
    year: 2021,
    bg: "#1a1b26",
    fg: "#c0caf5",
    colors: [
      "#15161e","#f7768e","#9ece6a","#e0af68","#7aa2f7","#bb9af7","#7dcfff","#a9b1d6",
      "#414868","#f7768e","#9ece6a","#e0af68","#7aa2f7","#bb9af7","#7dcfff","#c0caf5"
    ]
  },
};

const ANSI_NAMES = [
  "Black","Red","Green","Yellow","Blue","Magenta","Cyan","White",
  "Bright Black","Bright Red","Bright Green","Bright Yellow",
  "Bright Blue","Bright Magenta","Bright Cyan","Bright White"
];
```

---

## 5. <a name='PythonCodeSnippets'></a>4. Python Code Snippets

### 5.1. <a name='Printall16ANSIcolors'></a>Print all 16 ANSI colors

```python
# Print foreground colors
for i in range(8):
    print(f"\033[{30+i}m Color {i}: \\e[{30+i}m \033[0m", end="  ")
print()
for i in range(8):
    print(f"\033[{90+i}m Color {8+i}: \\e[{90+i}m \033[0m", end="  ")
print()
```

### 5.2. <a name='Printcolorswatcheswithbackground'></a>Print color swatches with background

```python
for i in range(8):
    print(f"\033[{40+i}m  {i}  \033[0m", end="")
print()
for i in range(8):
    print(f"\033[{100+i}m  {8+i}  \033[0m", end="")
print()
```

### 5.3. <a name='Richcolordisplay'></a>Rich color display

```python
from rich.console import Console
from rich.table import Table
from rich.text import Text

console = Console()

# Display ANSI 16 colors
table = Table(title="ANSI 16 Colors")
table.add_column("Index", style="dim")
table.add_column("Name")
table.add_column("Swatch", width=8)
table.add_column("Escape Code")

names = ["black","red","green","yellow","blue","magenta","cyan","white"]
for i, name in enumerate(names):
    swatch = Text("  ████  ", style=f"on {name}")
    table.add_row(str(i), name, swatch, f"\\e[{30+i}m")
for i, name in enumerate(names):
    bright = f"bright_{name}"
    swatch = Text("  ████  ", style=f"on {bright}")
    table.add_row(str(8+i), f"bright {name}", swatch, f"\\e[{90+i}m")

console.print(table)
```

### 5.4. <a name='Setterminalcolorswithescapesequences'></a>Set terminal colors with escape sequences

```python
import sys

def set_ansi_color(index, hex_color):
    """Set terminal ANSI color via OSC escape sequence."""
    r = int(hex_color[1:3], 16)
    g = int(hex_color[3:5], 16)
    b = int(hex_color[5:7], 16)
    sys.stdout.write(f"\033]4;{index};rgb:{r:02x}/{g:02x}/{b:02x}\033\\")

# Apply Dracula palette
dracula = [
    "#21222c","#ff5555","#50fa7b","#f1fa8c",
    "#bd93f9","#ff79c6","#8be9fd","#f8f8f2",
    "#6272a4","#ff6e6e","#69ff94","#ffffa5",
    "#d6acff","#ff92df","#a4ffff","#ffffff"
]
for i, color in enumerate(dracula):
    set_ansi_color(i, color)
sys.stdout.flush()
```

### 5.5. <a name='Coloramacross-platform'></a>Colorama (cross-platform)

```python
from colorama import Fore, Back, Style, init
init()

print(Fore.RED + "Red text" + Style.RESET_ALL)
print(Back.GREEN + "Green background" + Style.RESET_ALL)
print(Fore.YELLOW + Back.BLUE + "Yellow on Blue" + Style.RESET_ALL)
```

---

## 6. <a name='EscapeCodeReference'></a>5. Escape Code Reference

### 6.1. <a name='TextAttributes'></a>Text Attributes

```
\e[0m   Reset all
\e[1m   Bold
\e[2m   Dim
\e[3m   Italic
\e[4m   Underline
\e[5m   Blink
\e[7m   Reverse
\e[8m   Hidden
\e[9m   Strikethrough
```

### 6.2. <a name='ColorMode'></a>256-Color Mode

```
\e[38;5;{n}m    Foreground (n = 0-255)
\e[48;5;{n}m    Background (n = 0-255)

  0-7:     Standard ANSI colors
  8-15:    Bright ANSI colors
  16-231:  6×6×6 color cube (216 colors)
  232-255: Grayscale ramp (24 shades)
```

### 6.3. <a name='TrueColor24-bit'></a>True Color (24-bit)

```
\e[38;2;{r};{g};{b}m    Foreground RGB
\e[48;2;{r};{g};{b}m    Background RGB
```

---

## 7. <a name='CatalogueUISpec'></a>6. Catalogue UI Spec

### 7.1. <a name='PaletteCardLayout'></a>Palette Card Layout

```
┌─────────────────────────────────────────┐
│  Dracula                   Zeno Rocha   │
│                                  2013   │
│  BG: #282a36  FG: #f8f8f2           │
│                                         │
│  ┌───┬───┬───┬───┬───┬───┬───┬───┐      │
│  │ 0 │ 1 │ 2 │ 3 │ 4 │ 5 │ 6 │ 7 │      │
│  ├───┼───┼───┼───┼───┼───┼───┼───┤      │
│  │ 8 │ 9 │10 │11 │12 │13 │14 │15 │      │
│  └───┴───┴───┴───┴───┴───┴───┴───┘      │
│                                         │
│  sample: ls -la output preview          │
│                                         │
│             [Copy Hex] [Code] [Apply]   │
└─────────────────────────────────────────┘
```

Each numbered cell is a colored swatch rendered with the actual hex value as background.

### 7.2. <a name='Features'></a>Features

* **Side-by-side comparison**: Select 2 palettes to compare visually
* **Sample terminal preview**: Show simulated `ls`, `git diff`, or Python syntax output using the palette colors
* **Copy individual hex**: Click any swatch → copy hex value
* **Copy all**: Export as JSON, CSS variables, or Python dict
* **Light/Dark toggle**: For Solarized which has both variants
* **Sort by**: Year, warmth (calculated from avg hue), contrast ratio

### 7.3. <a name='WarmthMetric'></a>Warmth Metric

Calculate average hue from colors 1-6 (the chromatic colors).
Sort warm (Gruvbox, Monokai) → neutral (Solarized) → cool (Nord, Tokyo Night).

---

*Generated for Python Terminal Visual Catalogue — Colors tab.*  
*ASCII first. Retro forever.*
