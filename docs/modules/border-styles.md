# Table Border Styles — Dev Doc

> **Purpose:** Injectable reference for the Python Terminal Visual Catalogue — Tables tab.  
> **Libraries covered:** `tabulate` (22 formats), `Rich` (18 box styles), `prettytable`  
> **Each entry:** Pre-rendered 3×2 sample table + Python snippet

---

## Table of Contents

1. [tabulate Formats](#1-tabulate-formats)
2. [Rich Box Styles](#2-rich-box-styles)
3. [prettytable](#3-prettytable)
4. [Data Format & JS Structure](#4-data-format--js-structure)
5. [Python Code Snippets](#5-python-code-snippets)
6. [Catalogue UI Spec](#6-catalogue-ui-spec)

---

## 1. tabulate Formats

All 22 plain-text formats from `tabulate`. Sample data: 2 columns, 2 rows.

### `plain`

```
Name     Score
Alice       95
Bob         87
```

### `simple`

```
Name     Score
------  ------
Alice       95
Bob         87
```

### `grid`

```
+--------+---------+
| Name   |   Score |
+========+=========+
| Alice  |      95 |
+--------+---------+
| Bob    |      87 |
+--------+---------+
```

### `simple_grid`

```
┌────────┬─────────┐
│ Name   │   Score │
├────────┼─────────┤
│ Alice  │      95 │
├────────┼─────────┤
│ Bob    │      87 │
└────────┴─────────┘
```

### `rounded_grid`

```
╭────────┬─────────╮
│ Name   │   Score │
├────────┼─────────┤
│ Alice  │      95 │
├────────┼─────────┤
│ Bob    │      87 │
╰────────┴─────────╯
```

### `heavy_grid`

```
┏━━━━━━━━┳━━━━━━━━━┓
┃ Name   ┃   Score ┃
┣━━━━━━━━╋━━━━━━━━━┫
┃ Alice  ┃      95 ┃
┣━━━━━━━━╋━━━━━━━━━┫
┃ Bob    ┃      87 ┃
┗━━━━━━━━┻━━━━━━━━━┛
```

### `mixed_grid`

```
┍━━━━━━━━┯━━━━━━━━━┑
│ Name   │   Score │
┝━━━━━━━━┿━━━━━━━━━┥
│ Alice  │      95 │
├────────┼─────────┤
│ Bob    │      87 │
┕━━━━━━━━┷━━━━━━━━━┙
```

### `double_grid`

```
╔════════╦═════════╗
║ Name   ║   Score ║
╠════════╬═════════╣
║ Alice  ║      95 ║
╠════════╬═════════╣
║ Bob    ║      87 ║
╚════════╩═════════╝
```

### `fancy_grid`

```
╒════════╤═════════╕
│ Name   │   Score │
╞════════╪═════════╡
│ Alice  │      95 │
├────────┼─────────┤
│ Bob    │      87 │
╘════════╧═════════╛
```

### `colon_grid`

```
┌────────┬─────────┐
│ Name   │   Score │
┞════════╪═════════┦
│ Alice  │      95 │
├────────┼─────────┤
│ Bob    │      87 │
└────────┴─────────┘
```

### `pipe`

```
| Name   |   Score |
|:-------|--------:|
| Alice  |      95 |
| Bob    |      87 |
```

### `orgtbl`

```
| Name   |   Score |
|--------+---------|
| Alice  |      95 |
| Bob    |      87 |
```

### `presto`

```
 Name   |   Score
--------+---------
 Alice  |      95
 Bob    |      87
```

### `psql`

```
+--------+---------+
| Name   |   Score |
|--------+---------|
| Alice  |      95 |
| Bob    |      87 |
+--------+---------+
```

### `pretty`

```
+-------+-------+
| Name  | Score |
+-------+-------+
| Alice |  95   |
|  Bob  |  87   |
+-------+-------+
```

### `rst`

```
======  =======
Name      Score
======  =======
Alice        95
Bob          87
======  =======
```

### `github`

```
| Name   |   Score |
|--------|---------|
| Alice  |      95 |
| Bob    |      87 |
```

### `jira`

```
|| Name   ||   Score ||
| Alice  |      95 |
| Bob    |      87 |
```

### `outline`

```
+--------+---------+
| Name   |   Score |
+========+=========+
| Alice  |      95 |
| Bob    |      87 |
+--------+---------+
```

### `simple_outline`

```
┌────────┬─────────┐
│ Name   │   Score │
├────────┼─────────┤
│ Alice  │      95 │
│ Bob    │      87 │
└────────┴─────────┘
```

### `rounded_outline`

```
╭────────┬─────────╮
│ Name   │   Score │
├────────┼─────────┤
│ Alice  │      95 │
│ Bob    │      87 │
╰────────┴─────────╯
```

### `heavy_outline`

```
┏━━━━━━━━┳━━━━━━━━━┓
┃ Name   ┃   Score ┃
┣━━━━━━━━╋━━━━━━━━━┫
┃ Alice  ┃      95 ┃
┃ Bob    ┃      87 ┃
┗━━━━━━━━┻━━━━━━━━━┛
```

### `double_outline`

```
╔════════╦═════════╗
║ Name   ║   Score ║
╠════════╬═════════╣
║ Alice  ║      95 ║
║ Bob    ║      87 ║
╚════════╩═════════╝
```

---

## 2. Rich Box Styles

All 18 `rich.box` constants. Sample: 2-column table with header.

### `box.ASCII`

```
+--------+---------+
| Name   | Score   |
|--------+---------|
| Alice  | 95      |
| Bob    | 87      |
+--------+---------+
```

### `box.ASCII2`

```
+---------+---------+
| Name    | Score   |
+---------+---------+
| Alice   | 95      |
| Bob     | 87      |
+---------+---------+
```

### `box.ASCII_DOUBLE_HEAD`

```
+---------+---------+
| Name    | Score   |
+=========+=========+
| Alice   | 95      |
| Bob     | 87      |
+---------+---------+
```

### `box.SQUARE`

```
┌────────┬─────────┐
│ Name   │ Score   │
├────────┼─────────┤
│ Alice  │ 95      │
│ Bob    │ 87      │
└────────┴─────────┘
```

### `box.SQUARE_DOUBLE_HEAD`

```
┌────────┬─────────┐
│ Name   │ Score   │
╞════════╪═════════╡
│ Alice  │ 95      │
│ Bob    │ 87      │
└────────┴─────────┘
```

### `box.ROUNDED`

```
╭────────┬─────────╮
│ Name   │ Score   │
├────────┼─────────┤
│ Alice  │ 95      │
│ Bob    │ 87      │
╰────────┴─────────╯
```

### `box.HEAVY`

```
┏━━━━━━━━┳━━━━━━━━━┓
┃ Name   ┃ Score   ┃
┣━━━━━━━━╋━━━━━━━━━┫
┃ Alice  ┃ 95      ┃
┃ Bob    ┃ 87      ┃
┗━━━━━━━━┻━━━━━━━━━┛
```

### `box.HEAVY_HEAD`

```
┏━━━━━━━━┳━━━━━━━━━┓
┃ Name   ┃ Score   ┃
┡━━━━━━━━╇━━━━━━━━━┩
│ Alice  │ 95      │
│ Bob    │ 87      │
└────────┴─────────┘
```

### `box.HEAVY_EDGE`

```
┏━━━━━━━━┳━━━━━━━━━┓
┃ Name   ┃ Score   ┃
├────────┼─────────┤
│ Alice  │ 95      │
│ Bob    │ 87      │
┗━━━━━━━━┻━━━━━━━━━┛
```

### `box.DOUBLE`

```
╔════════╦═════════╗
║ Name   ║ Score   ║
╠════════╬═════════╣
║ Alice  ║ 95      ║
║ Bob    ║ 87      ║
╚════════╩═════════╝
```

### `box.DOUBLE_EDGE`

```
╔════════╤═════════╗
║ Name   │ Score   ║
╟────────┼─────────╢
║ Alice  │ 95      ║
║ Bob    │ 87      ║
╚════════╧═════════╝
```

### `box.MINIMAL`

```
        ╷
 Name   │ Score
 ╶──────┼────────╴
 Alice  │ 95
 Bob    │ 87
        ╵
```

### `box.MINIMAL_HEAVY_HEAD`

```
        ╷
 Name   │ Score
 ╺━━━━━━┿━━━━━━━━╸
 Alice  │ 95
 Bob    │ 87
        ╵
```

### `box.MINIMAL_DOUBLE_HEAD`

```
        ╷
 Name   │ Score
 ═══════╪════════
 Alice  │ 95
 Bob    │ 87
        ╵
```

### `box.SIMPLE`

```
                  
 Name    Score    
 ──────  ──────── 
 Alice   95       
 Bob     87       
 ──────  ──────── 
```

### `box.SIMPLE_HEAD`

```
 Name    Score
 ──────  ────────
 Alice   95
 Bob     87
```

### `box.SIMPLE_HEAVY`

```
 Name    Score
 ━━━━━━  ━━━━━━━━
 Alice   95
 Bob     87
 ━━━━━━  ━━━━━━━━
```

### `box.HORIZONTALS`

```
 ──────────────────
 Name    Score
 ──────────────────
 Alice   95
 ──────────────────
 Bob     87
 ──────────────────
```

### `box.MARKDOWN`

```
| Name   | Score   |
|--------|---------|
| Alice  | 95      |
| Bob    | 87      |
```

---

## 3. prettytable

PrettyTable has its own set of border styles using `set_style()`:

### `DEFAULT`

```
+-------+-------+
| Name  | Score |
+-------+-------+
| Alice |  95   |
|  Bob  |  87   |
+-------+-------+
```

### `PLAIN_COLUMNS`

```
 Name     Score 
 Alice       95 
 Bob         87 
```

### `MARKDOWN`

```
| Name  | Score |
|-------|-------|
| Alice |  95   |
| Bob   |  87   |
```

### `SINGLE_BORDER`

```
┌───────┬───────┐
│ Name  │ Score │
├───────┼───────┤
│ Alice │  95   │
│  Bob  │  87   │
└───────┴───────┘
```

### `DOUBLE_BORDER`

```
╔═══════╦═══════╗
║ Name  ║ Score ║
╠═══════╬═══════╣
║ Alice ║  95   ║
║  Bob  ║  87   ║
╚═══════╩═══════╝
```

---

## 4. Data Format & JS Structure

```js
const TABLE_STYLES = {
  // ── tabulate formats ──
  "plain":           { lib: "tabulate", category: "tabulate", render: "..." },
  "simple":          { lib: "tabulate", category: "tabulate", render: "..." },
  "grid":            { lib: "tabulate", category: "tabulate", render: "..." },
  "simple_grid":     { lib: "tabulate", category: "tabulate", render: "..." },
  "rounded_grid":    { lib: "tabulate", category: "tabulate", render: "..." },
  "heavy_grid":      { lib: "tabulate", category: "tabulate", render: "..." },
  "mixed_grid":      { lib: "tabulate", category: "tabulate", render: "..." },
  "double_grid":     { lib: "tabulate", category: "tabulate", render: "..." },
  "fancy_grid":      { lib: "tabulate", category: "tabulate", render: "..." },
  "colon_grid":      { lib: "tabulate", category: "tabulate", render: "..." },
  "pipe":            { lib: "tabulate", category: "tabulate", render: "..." },
  "orgtbl":          { lib: "tabulate", category: "tabulate", render: "..." },
  "presto":          { lib: "tabulate", category: "tabulate", render: "..." },
  "psql":            { lib: "tabulate", category: "tabulate", render: "..." },
  "pretty":          { lib: "tabulate", category: "tabulate", render: "..." },
  "rst":             { lib: "tabulate", category: "tabulate", render: "..." },
  "github":          { lib: "tabulate", category: "tabulate", render: "..." },
  "jira":            { lib: "tabulate", category: "tabulate", render: "..." },
  "outline":         { lib: "tabulate", category: "tabulate", render: "..." },
  "simple_outline":  { lib: "tabulate", category: "tabulate", render: "..." },
  "rounded_outline": { lib: "tabulate", category: "tabulate", render: "..." },
  "heavy_outline":   { lib: "tabulate", category: "tabulate", render: "..." },
  "double_outline":  { lib: "tabulate", category: "tabulate", render: "..." },

  // ── Rich box styles ──
  "box.ASCII":                 { lib: "rich", category: "rich", render: "..." },
  "box.SQUARE":                { lib: "rich", category: "rich", render: "..." },
  "box.ROUNDED":               { lib: "rich", category: "rich", render: "..." },
  "box.HEAVY":                 { lib: "rich", category: "rich", render: "..." },
  "box.HEAVY_HEAD":            { lib: "rich", category: "rich", render: "..." },
  "box.HEAVY_EDGE":            { lib: "rich", category: "rich", render: "..." },
  "box.DOUBLE":                { lib: "rich", category: "rich", render: "..." },
  "box.DOUBLE_EDGE":           { lib: "rich", category: "rich", render: "..." },
  "box.MINIMAL":               { lib: "rich", category: "rich", render: "..." },
  "box.MINIMAL_HEAVY_HEAD":    { lib: "rich", category: "rich", render: "..." },
  "box.MINIMAL_DOUBLE_HEAD":   { lib: "rich", category: "rich", render: "..." },
  "box.SIMPLE":                { lib: "rich", category: "rich", render: "..." },
  "box.SIMPLE_HEAD":           { lib: "rich", category: "rich", render: "..." },
  "box.SIMPLE_HEAVY":          { lib: "rich", category: "rich", render: "..." },
  "box.HORIZONTALS":           { lib: "rich", category: "rich", render: "..." },
  "box.MARKDOWN":              { lib: "rich", category: "rich", render: "..." },

  // ── prettytable ──
  "pt.DEFAULT":         { lib: "prettytable", category: "prettytable", render: "..." },
  "pt.SINGLE_BORDER":   { lib: "prettytable", category: "prettytable", render: "..." },
  "pt.DOUBLE_BORDER":   { lib: "prettytable", category: "prettytable", render: "..." },
  "pt.MARKDOWN":        { lib: "prettytable", category: "prettytable", render: "..." },
  "pt.PLAIN_COLUMNS":   { lib: "prettytable", category: "prettytable", render: "..." },
};
// render: array of strings, one per line of the pre-rendered sample table
```

---

## 5. Python Code Snippets

### tabulate

```python
from tabulate import tabulate

data = [["Alice", 95], ["Bob", 87]]
headers = ["Name", "Score"]

# Try different formats
for fmt in ["grid", "fancy_grid", "heavy_grid", "double_grid", "rounded_grid"]:
    print(f"\n--- {fmt} ---")
    print(tabulate(data, headers, tablefmt=fmt))
```

### Rich

```python
from rich.console import Console
from rich.table import Table
from rich import box

console = Console()

# Try different box styles
for style in [box.ASCII, box.SQUARE, box.ROUNDED, box.HEAVY, box.DOUBLE]:
    table = Table(box=style, title=f"{style}")
    table.add_column("Name")
    table.add_column("Score")
    table.add_row("Alice", "95")
    table.add_row("Bob", "87")
    console.print(table)
    console.print()
```

### prettytable

```python
from prettytable import PrettyTable, SINGLE_BORDER, DOUBLE_BORDER

pt = PrettyTable()
pt.field_names = ["Name", "Score"]
pt.add_row(["Alice", 95])
pt.add_row(["Bob", 87])
pt.set_style(SINGLE_BORDER)
print(pt)
```

---

## 6. Catalogue UI Spec

### Card Layout

```
┌────────────────────────────────┐
│  fancy_grid          tabulate  │
│                                │
│  ╒════════╤═════════╕          │
│  │ Name   │   Score │          │
│  ╞════════╪═════════╡          │
│  │ Alice  │      95 │          │
│  ├────────┼─────────┤          │
│  │ Bob    │      87 │          │
│  ╘════════╧═════════╛          │
│                                │
│            [Copy] [Code]       │
└────────────────────────────────┘
```

### Category Filters

```
[All] [tabulate] [Rich] [prettytable]
```

### Visual Weight Sorting

Tables can be sorted by "visual weight" — from plainest to heaviest:

1. plain → simple → rst → presto (no borders)
2. pipe → orgtbl → github → markdown (minimal)
3. grid → psql → pretty → outline (light)
4. simple_grid → rounded_grid → fancy_grid (single-line Unicode)
5. heavy_grid → mixed_grid → colon_grid (bold/mixed)
6. double_grid → double_outline (double-line)

---

*Generated for Python Terminal Visual Catalogue — Tables tab.*  
*ASCII first. Retro forever.*
