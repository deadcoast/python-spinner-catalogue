# Table Border Styles — Dev Doc

> **Purpose:** Injectable reference for the Python Terminal Visual Catalogue — Tables tab.  
> **Libraries covered:** `tabulate` (22 formats), `Rich` (18 box styles), `prettytable`  
> **Each entry:** Pre-rendered 3×2 sample table + Python snippet

---

## 1. <a name='TableofContents'></a>Table of Contents

<!-- vscode-markdown-toc -->
* 1. [Table of Contents](#TableofContents)
* 2. [1. tabulate Formats](#tabulateFormats)
	* 2.1. [`plain`](#plain)
	* 2.2. [`simple`](#simple)
	* 2.3. [`grid`](#grid)
	* 2.4. [`simple_grid`](#simple_grid)
	* 2.5. [`rounded_grid`](#rounded_grid)
	* 2.6. [`heavy_grid`](#heavy_grid)
	* 2.7. [`mixed_grid`](#mixed_grid)
	* 2.8. [`double_grid`](#double_grid)
	* 2.9. [`fancy_grid`](#fancy_grid)
	* 2.10. [`colon_grid`](#colon_grid)
	* 2.11. [`pipe`](#pipe)
	* 2.12. [`orgtbl`](#orgtbl)
	* 2.13. [`presto`](#presto)
	* 2.14. [`psql`](#psql)
	* 2.15. [`pretty`](#pretty)
	* 2.16. [`rst`](#rst)
	* 2.17. [`github`](#github)
	* 2.18. [`jira`](#jira)
	* 2.19. [`outline`](#outline)
	* 2.20. [`simple_outline`](#simple_outline)
	* 2.21. [`rounded_outline`](#rounded_outline)
	* 2.22. [`heavy_outline`](#heavy_outline)
	* 2.23. [`double_outline`](#double_outline)
* 3. [2. Rich Box Styles](#RichBoxStyles)
	* 3.1. [`box.ASCII`](#box.ASCII)
	* 3.2. [`box.ASCII2`](#box.ASCII2)
	* 3.3. [`box.ASCII_DOUBLE_HEAD`](#box.ASCII_DOUBLE_HEAD)
	* 3.4. [`box.SQUARE`](#box.SQUARE)
	* 3.5. [`box.SQUARE_DOUBLE_HEAD`](#box.SQUARE_DOUBLE_HEAD)
	* 3.6. [`box.ROUNDED`](#box.ROUNDED)
	* 3.7. [`box.HEAVY`](#box.HEAVY)
	* 3.8. [`box.HEAVY_HEAD`](#box.HEAVY_HEAD)
	* 3.9. [`box.HEAVY_EDGE`](#box.HEAVY_EDGE)
	* 3.10. [`box.DOUBLE`](#box.DOUBLE)
	* 3.11. [`box.DOUBLE_EDGE`](#box.DOUBLE_EDGE)
	* 3.12. [`box.MINIMAL`](#box.MINIMAL)
	* 3.13. [`box.MINIMAL_HEAVY_HEAD`](#box.MINIMAL_HEAVY_HEAD)
	* 3.14. [`box.MINIMAL_DOUBLE_HEAD`](#box.MINIMAL_DOUBLE_HEAD)
	* 3.15. [`box.SIMPLE`](#box.SIMPLE)
	* 3.16. [`box.SIMPLE_HEAD`](#box.SIMPLE_HEAD)
	* 3.17. [`box.SIMPLE_HEAVY`](#box.SIMPLE_HEAVY)
	* 3.18. [`box.HORIZONTALS`](#box.HORIZONTALS)
	* 3.19. [`box.MARKDOWN`](#box.MARKDOWN)
* 4. [3. prettytable](#prettytable)
	* 4.1. [`DEFAULT`](#DEFAULT)
	* 4.2. [`PLAIN_COLUMNS`](#PLAIN_COLUMNS)
	* 4.3. [`MARKDOWN`](#MARKDOWN)
	* 4.4. [`SINGLE_BORDER`](#SINGLE_BORDER)
	* 4.5. [`DOUBLE_BORDER`](#DOUBLE_BORDER)
* 5. [4. Data Format & JS Structure](#DataFormatJSStructure)
* 6. [5. Python Code Snippets](#PythonCodeSnippets)
	* 6.1. [tabulate](#tabulate)
	* 6.2. [Rich](#Rich)
	* 6.3. [prettytable](#prettytable-1)
* 7. [6. Catalogue UI Spec](#CatalogueUISpec)
	* 7.1. [Card Layout](#CardLayout)
	* 7.2. [Category Filters](#CategoryFilters)
	* 7.3. [Visual Weight Sorting](#VisualWeightSorting)

<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->

---

## 2. <a name='tabulateFormats'></a>1. tabulate Formats

All 22 plain-text formats from `tabulate`. Sample data: 2 columns, 2 rows.

### 2.1. <a name='plain'></a>`plain`

```
Name     Score
Alice       95
Bob         87
```

### 2.2. <a name='simple'></a>`simple`

```
Name     Score
------  ------
Alice       95
Bob         87
```

### 2.3. <a name='grid'></a>`grid`

```
+--------+---------+
| Name   |   Score |
+========+=========+
| Alice  |      95 |
+--------+---------+
| Bob    |      87 |
+--------+---------+
```

### 2.4. <a name='simple_grid'></a>`simple_grid`

```
┌────────┬─────────┐
│ Name   │   Score │
├────────┼─────────┤
│ Alice  │      95 │
├────────┼─────────┤
│ Bob    │      87 │
└────────┴─────────┘
```

### 2.5. <a name='rounded_grid'></a>`rounded_grid`

```
╭────────┬─────────╮
│ Name   │   Score │
├────────┼─────────┤
│ Alice  │      95 │
├────────┼─────────┤
│ Bob    │      87 │
╰────────┴─────────╯
```

### 2.6. <a name='heavy_grid'></a>`heavy_grid`

```
┏━━━━━━━━┳━━━━━━━━━┓
┃ Name   ┃   Score ┃
┣━━━━━━━━╋━━━━━━━━━┫
┃ Alice  ┃      95 ┃
┣━━━━━━━━╋━━━━━━━━━┫
┃ Bob    ┃      87 ┃
┗━━━━━━━━┻━━━━━━━━━┛
```

### 2.7. <a name='mixed_grid'></a>`mixed_grid`

```
┍━━━━━━━━┯━━━━━━━━━┑
│ Name   │   Score │
┝━━━━━━━━┿━━━━━━━━━┥
│ Alice  │      95 │
├────────┼─────────┤
│ Bob    │      87 │
┕━━━━━━━━┷━━━━━━━━━┙
```

### 2.8. <a name='double_grid'></a>`double_grid`

```
╔════════╦═════════╗
║ Name   ║   Score ║
╠════════╬═════════╣
║ Alice  ║      95 ║
╠════════╬═════════╣
║ Bob    ║      87 ║
╚════════╩═════════╝
```

### 2.9. <a name='fancy_grid'></a>`fancy_grid`

```
╒════════╤═════════╕
│ Name   │   Score │
╞════════╪═════════╡
│ Alice  │      95 │
├────────┼─────────┤
│ Bob    │      87 │
╘════════╧═════════╛
```

### 2.10. <a name='colon_grid'></a>`colon_grid`

```
┌────────┬─────────┐
│ Name   │   Score │
┞════════╪═════════┦
│ Alice  │      95 │
├────────┼─────────┤
│ Bob    │      87 │
└────────┴─────────┘
```

### 2.11. <a name='pipe'></a>`pipe`

```
| Name   |   Score |
|:-------|--------:|
| Alice  |      95 |
| Bob    |      87 |
```

### 2.12. <a name='orgtbl'></a>`orgtbl`

```
| Name   |   Score |
|--------+---------|
| Alice  |      95 |
| Bob    |      87 |
```

### 2.13. <a name='presto'></a>`presto`

```
 Name   |   Score
--------+---------
 Alice  |      95
 Bob    |      87
```

### 2.14. <a name='psql'></a>`psql`

```
+--------+---------+
| Name   |   Score |
|--------+---------|
| Alice  |      95 |
| Bob    |      87 |
+--------+---------+
```

### 2.15. <a name='pretty'></a>`pretty`

```
+-------+-------+
| Name  | Score |
+-------+-------+
| Alice |  95   |
|  Bob  |  87   |
+-------+-------+
```

### 2.16. <a name='rst'></a>`rst`

```
======  =======
Name      Score
======  =======
Alice        95
Bob          87
======  =======
```

### 2.17. <a name='github'></a>`github`

```
| Name   |   Score |
|--------|---------|
| Alice  |      95 |
| Bob    |      87 |
```

### 2.18. <a name='jira'></a>`jira`

```
|| Name   ||   Score ||
| Alice  |      95 |
| Bob    |      87 |
```

### 2.19. <a name='outline'></a>`outline`

```
+--------+---------+
| Name   |   Score |
+========+=========+
| Alice  |      95 |
| Bob    |      87 |
+--------+---------+
```

### 2.20. <a name='simple_outline'></a>`simple_outline`

```
┌────────┬─────────┐
│ Name   │   Score │
├────────┼─────────┤
│ Alice  │      95 │
│ Bob    │      87 │
└────────┴─────────┘
```

### 2.21. <a name='rounded_outline'></a>`rounded_outline`

```
╭────────┬─────────╮
│ Name   │   Score │
├────────┼─────────┤
│ Alice  │      95 │
│ Bob    │      87 │
╰────────┴─────────╯
```

### 2.22. <a name='heavy_outline'></a>`heavy_outline`

```
┏━━━━━━━━┳━━━━━━━━━┓
┃ Name   ┃   Score ┃
┣━━━━━━━━╋━━━━━━━━━┫
┃ Alice  ┃      95 ┃
┃ Bob    ┃      87 ┃
┗━━━━━━━━┻━━━━━━━━━┛
```

### 2.23. <a name='double_outline'></a>`double_outline`

```
╔════════╦═════════╗
║ Name   ║   Score ║
╠════════╬═════════╣
║ Alice  ║      95 ║
║ Bob    ║      87 ║
╚════════╩═════════╝
```

---

## 3. <a name='RichBoxStyles'></a>2. Rich Box Styles

All 18 `rich.box` constants. Sample: 2-column table with header.

### 3.1. <a name='box.ASCII'></a>`box.ASCII`

```
+--------+---------+
| Name   | Score   |
|--------+---------|
| Alice  | 95      |
| Bob    | 87      |
+--------+---------+
```

### 3.2. <a name='box.ASCII2'></a>`box.ASCII2`

```
+---------+---------+
| Name    | Score   |
+---------+---------+
| Alice   | 95      |
| Bob     | 87      |
+---------+---------+
```

### 3.3. <a name='box.ASCII_DOUBLE_HEAD'></a>`box.ASCII_DOUBLE_HEAD`

```
+---------+---------+
| Name    | Score   |
+=========+=========+
| Alice   | 95      |
| Bob     | 87      |
+---------+---------+
```

### 3.4. <a name='box.SQUARE'></a>`box.SQUARE`

```
┌────────┬─────────┐
│ Name   │ Score   │
├────────┼─────────┤
│ Alice  │ 95      │
│ Bob    │ 87      │
└────────┴─────────┘
```

### 3.5. <a name='box.SQUARE_DOUBLE_HEAD'></a>`box.SQUARE_DOUBLE_HEAD`

```
┌────────┬─────────┐
│ Name   │ Score   │
╞════════╪═════════╡
│ Alice  │ 95      │
│ Bob    │ 87      │
└────────┴─────────┘
```

### 3.6. <a name='box.ROUNDED'></a>`box.ROUNDED`

```
╭────────┬─────────╮
│ Name   │ Score   │
├────────┼─────────┤
│ Alice  │ 95      │
│ Bob    │ 87      │
╰────────┴─────────╯
```

### 3.7. <a name='box.HEAVY'></a>`box.HEAVY`

```
┏━━━━━━━━┳━━━━━━━━━┓
┃ Name   ┃ Score   ┃
┣━━━━━━━━╋━━━━━━━━━┫
┃ Alice  ┃ 95      ┃
┃ Bob    ┃ 87      ┃
┗━━━━━━━━┻━━━━━━━━━┛
```

### 3.8. <a name='box.HEAVY_HEAD'></a>`box.HEAVY_HEAD`

```
┏━━━━━━━━┳━━━━━━━━━┓
┃ Name   ┃ Score   ┃
┡━━━━━━━━╇━━━━━━━━━┩
│ Alice  │ 95      │
│ Bob    │ 87      │
└────────┴─────────┘
```

### 3.9. <a name='box.HEAVY_EDGE'></a>`box.HEAVY_EDGE`

```
┏━━━━━━━━┳━━━━━━━━━┓
┃ Name   ┃ Score   ┃
├────────┼─────────┤
│ Alice  │ 95      │
│ Bob    │ 87      │
┗━━━━━━━━┻━━━━━━━━━┛
```

### 3.10. <a name='box.DOUBLE'></a>`box.DOUBLE`

```
╔════════╦═════════╗
║ Name   ║ Score   ║
╠════════╬═════════╣
║ Alice  ║ 95      ║
║ Bob    ║ 87      ║
╚════════╩═════════╝
```

### 3.11. <a name='box.DOUBLE_EDGE'></a>`box.DOUBLE_EDGE`

```
╔════════╤═════════╗
║ Name   │ Score   ║
╟────────┼─────────╢
║ Alice  │ 95      ║
║ Bob    │ 87      ║
╚════════╧═════════╝
```

### 3.12. <a name='box.MINIMAL'></a>`box.MINIMAL`

```
        ╷
 Name   │ Score
 ╶──────┼────────╴
 Alice  │ 95
 Bob    │ 87
        ╵
```

### 3.13. <a name='box.MINIMAL_HEAVY_HEAD'></a>`box.MINIMAL_HEAVY_HEAD`

```
        ╷
 Name   │ Score
 ╺━━━━━━┿━━━━━━━━╸
 Alice  │ 95
 Bob    │ 87
        ╵
```

### 3.14. <a name='box.MINIMAL_DOUBLE_HEAD'></a>`box.MINIMAL_DOUBLE_HEAD`

```
        ╷
 Name   │ Score
 ═══════╪════════
 Alice  │ 95
 Bob    │ 87
        ╵
```

### 3.15. <a name='box.SIMPLE'></a>`box.SIMPLE`

```
                  
 Name    Score    
 ──────  ──────── 
 Alice   95       
 Bob     87       
 ──────  ──────── 
```

### 3.16. <a name='box.SIMPLE_HEAD'></a>`box.SIMPLE_HEAD`

```
 Name    Score
 ──────  ────────
 Alice   95
 Bob     87
```

### 3.17. <a name='box.SIMPLE_HEAVY'></a>`box.SIMPLE_HEAVY`

```
 Name    Score
 ━━━━━━  ━━━━━━━━
 Alice   95
 Bob     87
 ━━━━━━  ━━━━━━━━
```

### 3.18. <a name='box.HORIZONTALS'></a>`box.HORIZONTALS`

```
 ──────────────────
 Name    Score
 ──────────────────
 Alice   95
 ──────────────────
 Bob     87
 ──────────────────
```

### 3.19. <a name='box.MARKDOWN'></a>`box.MARKDOWN`

```
| Name   | Score   |
|--------|---------|
| Alice  | 95      |
| Bob    | 87      |
```

---

## 4. <a name='prettytable'></a>3. prettytable

PrettyTable has its own set of border styles using `set_style()`:

### 4.1. <a name='DEFAULT'></a>`DEFAULT`

```
+-------+-------+
| Name  | Score |
+-------+-------+
| Alice |  95   |
|  Bob  |  87   |
+-------+-------+
```

### 4.2. <a name='PLAIN_COLUMNS'></a>`PLAIN_COLUMNS`

```
 Name     Score 
 Alice       95 
 Bob         87 
```

### 4.3. <a name='MARKDOWN'></a>`MARKDOWN`

```
| Name  | Score |
|-------|-------|
| Alice |  95   |
| Bob   |  87   |
```

### 4.4. <a name='SINGLE_BORDER'></a>`SINGLE_BORDER`

```
┌───────┬───────┐
│ Name  │ Score │
├───────┼───────┤
│ Alice │  95   │
│  Bob  │  87   │
└───────┴───────┘
```

### 4.5. <a name='DOUBLE_BORDER'></a>`DOUBLE_BORDER`

```
╔═══════╦═══════╗
║ Name  ║ Score ║
╠═══════╬═══════╣
║ Alice ║  95   ║
║  Bob  ║  87   ║
╚═══════╩═══════╝
```

---

## 5. <a name='DataFormatJSStructure'></a>4. Data Format & JS Structure

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

## 6. <a name='PythonCodeSnippets'></a>5. Python Code Snippets

### 6.1. <a name='tabulate'></a>tabulate

```python
from tabulate import tabulate

data = [["Alice", 95], ["Bob", 87]]
headers = ["Name", "Score"]

# Try different formats
for fmt in ["grid", "fancy_grid", "heavy_grid", "double_grid", "rounded_grid"]:
    print(f"\n--- {fmt} ---")
    print(tabulate(data, headers, tablefmt=fmt))
```

### 6.2. <a name='Rich'></a>Rich

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

### 6.3. <a name='prettytable-1'></a>prettytable

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

## 7. <a name='CatalogueUISpec'></a>6. Catalogue UI Spec

### 7.1. <a name='CardLayout'></a>Card Layout

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

### 7.2. <a name='CategoryFilters'></a>Category Filters

```
[All] [tabulate] [Rich] [prettytable]
```

### 7.3. <a name='VisualWeightSorting'></a>Visual Weight Sorting

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
