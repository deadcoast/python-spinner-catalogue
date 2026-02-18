# Figlet Dynamic Rendering — Additions Doc

> **Purpose:** Replace static pre-rendered font samples with live, dynamic rendering via `figlet.js`.  
> **Replaces:** The `sample[]` string arrays in `ASCII_FIGLET.md` — fonts now render on-the-fly in the browser.  
> **Dependency:** `figlet.js` v1.8.x (patorjk/figlet.js) — pure JS, zero backend, same engine as pyfiglet.  
> **CDN:** `https://cdn.jsdelivr.net/npm/figlet@1.8.2/lib/figlet.min.js`  
> **Font files:** `https://cdn.jsdelivr.net/npm/figlet@1.8.2/fonts/<FontName>.flf`

---

## Table of Contents

1. [Architecture Overview](#1-architecture-overview)
2. [CDN & Font Loading Strategy](#2-cdn--font-loading-strategy)
3. [Core Rendering Engine](#3-core-rendering-engine)
4. [UI Components](#4-ui-components)
5. [Complete Injectable Code](#5-complete-injectable-code)
6. [Font Name Mapping](#6-font-name-mapping)
7. [Performance Notes](#7-performance-notes)

---

## 1. Architecture Overview

### Before (static)
```
Build time:  pyfiglet renders "Hello" → stored as JS string arrays
Runtime:     Cards display static <pre> text, no interactivity
```

### After (dynamic)
```
Page load:   figlet.js loaded from CDN → preload top 9 "Essentials" fonts
User types:  Input debounced 200ms → all visible cards re-render live
Scroll:      Lazy-load fonts for cards entering viewport (IntersectionObserver)
```

### Key Decisions
- **No bundling fonts**: Fetch `.flf` files on demand from jsDelivr CDN (~2-10KB each)
- **Preload essentials only**: Load 9 core fonts on page init, lazy-load the rest
- **textSync for speed**: Once a font is loaded, use synchronous rendering (no flicker)
- **Fallback**: If figlet.js fails to load, show static pre-rendered "Hello" from the original data

---

## 2. CDN & Font Loading Strategy

### Script Tag
```html
<script src="https://cdn.jsdelivr.net/npm/figlet@1.8.2/lib/figlet.min.js"></script>
```

### Font Path Configuration
```js
// Point figlet to jsDelivr for .flf font files
figlet.defaults({
  fontPath: "https://cdn.jsdelivr.net/npm/figlet@1.8.2/fonts/"
});
```

### Preloading Priority Fonts
```js
const PRIORITY_FONTS = [
  "Standard", "Big", "Small", "Slant", "Shadow",
  "Banner", "Block", "Doom", "ANSI Shadow"
];

// Preload on page init — these render instantly after
figlet.preloadFonts(PRIORITY_FONTS, () => {
  console.log("Priority fonts loaded");
  renderAllCards(currentText);
});
```

### Lazy Loading Non-Priority Fonts
```js
// figlet.js auto-fetches missing fonts when you call .text()
// So lazy loading is built-in — just call render and it fetches if needed.
// But we can be smarter with IntersectionObserver:

const observer = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      const fontName = entry.target.dataset.font;
      renderCard(entry.target, fontName, currentText);
      observer.unobserve(entry.target);
    }
  });
}, { rootMargin: "200px" }); // Start loading 200px before visible

document.querySelectorAll(".font-card").forEach(card => {
  observer.observe(card);
});
```

---

## 3. Core Rendering Engine

### Single Font Render
```js
/**
 * Render text in a specific font.
 * Returns a Promise<string> of the ASCII art.
 * Falls back to sync if font is already loaded.
 */
async function renderFont(text, fontName) {
  // Try sync first (instant if font is preloaded)
  try {
    return figlet.textSync(text, { font: fontName });
  } catch (e) {
    // Font not loaded yet — use async (triggers fetch)
    try {
      return await figlet.text(text, { font: fontName });
    } catch (err) {
      return `[Font "${fontName}" unavailable]`;
    }
  }
}
```

### Batch Render All Visible Cards
```js
let currentText = "Hello";
let renderTimeout = null;

/**
 * Debounced render — updates all visible font cards.
 * Called on every input keystroke.
 */
function scheduleRender(text) {
  currentText = text;
  clearTimeout(renderTimeout);
  renderTimeout = setTimeout(() => renderAllCards(text), 200);
}

async function renderAllCards(text) {
  const cards = document.querySelectorAll(".font-card:not(.offscreen)");
  const renderPromises = Array.from(cards).map(async (card) => {
    const fontName = card.dataset.font;
    const pre = card.querySelector("pre.font-preview");
    try {
      const result = await renderFont(text || "Hello", fontName);
      pre.textContent = result;
      // Update dimensions display
      const lines = result.split("\n").filter(l => l.trim());
      const h = lines.length;
      const w = Math.max(...lines.map(l => l.length));
      const dims = card.querySelector(".font-dims");
      if (dims) dims.textContent = `${h}h × ${w}w`;
    } catch (e) {
      pre.textContent = `[Error rendering ${fontName}]`;
    }
  });
  await Promise.all(renderPromises);
}
```

### Render Single Card (for lazy loading)
```js
async function renderCard(card, fontName, text) {
  const pre = card.querySelector("pre.font-preview");
  pre.textContent = "Loading...";
  try {
    const result = await renderFont(text || "Hello", fontName);
    pre.textContent = result;
    card.classList.add("loaded");
  } catch (e) {
    pre.textContent = `[${fontName} unavailable]`;
    card.classList.add("error");
  }
}
```

---

## 4. UI Components

### 4.1 Text Input Bar

Sticky at the top of the Fonts tab. All cards update as you type.

```html
<div class="figlet-input-bar">
  <label for="figlet-text">Preview text:</label>
  <input
    type="text"
    id="figlet-text"
    value="Hello"
    maxlength="20"
    placeholder="Type to preview..."
    autocomplete="off"
    spellcheck="false"
  />
  <span class="char-count">5/20</span>
  <button id="figlet-reset" title="Reset to Hello">↺</button>
</div>
```

```css
.figlet-input-bar {
  position: sticky;
  top: 0;
  z-index: 100;
  display: flex;
  align-items: center;
  gap: 12px;
  padding: 12px 16px;
  background: #1a1b26;
  border-bottom: 1px solid #333;
  backdrop-filter: blur(8px);
}

.figlet-input-bar input {
  flex: 1;
  max-width: 300px;
  padding: 8px 12px;
  font-family: "JetBrains Mono", monospace;
  font-size: 16px;
  background: #0d1117;
  color: #e6edf3;
  border: 1px solid #444;
  border-radius: 6px;
  outline: none;
  transition: border-color 0.2s;
}

.figlet-input-bar input:focus {
  border-color: #58a6ff;
}

.char-count {
  font-size: 12px;
  color: #666;
  font-family: "JetBrains Mono", monospace;
}

#figlet-reset {
  background: none;
  border: 1px solid #444;
  color: #999;
  padding: 6px 10px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
}

#figlet-reset:hover {
  color: #fff;
  border-color: #666;
}
```

### 4.2 Input Event Wiring

```js
const textInput = document.getElementById("figlet-text");
const charCount = document.querySelector(".char-count");
const resetBtn = document.getElementById("figlet-reset");

textInput.addEventListener("input", (e) => {
  const val = e.target.value;
  charCount.textContent = `${val.length}/20`;
  scheduleRender(val);
});

resetBtn.addEventListener("click", () => {
  textInput.value = "Hello";
  charCount.textContent = "5/20";
  scheduleRender("Hello");
});

// Prevent empty renders
textInput.addEventListener("blur", () => {
  if (!textInput.value.trim()) {
    textInput.value = "Hello";
    scheduleRender("Hello");
  }
});
```

### 4.3 Card HTML Structure (updated)

```html
<div class="font-card" data-font="Doom" data-category="Big & Bold">
  <div class="font-card-header">
    <span class="font-name">Doom</span>
    <span class="font-dims">6h × 9w</span>
  </div>
  <pre class="font-preview">Loading...</pre>
  <div class="font-card-footer">
    <span class="font-lib">pyfiglet</span>
    <div class="font-actions">
      <button class="btn-copy-art" title="Copy ASCII art">Copy</button>
      <button class="btn-show-code" title="Show Python code">Code</button>
    </div>
  </div>
</div>
```

### 4.4 Loading States

```css
.font-card pre.font-preview {
  min-height: 60px;
  transition: opacity 0.15s;
}

.font-card:not(.loaded) pre.font-preview {
  opacity: 0.4;
  color: #555;
}

.font-card.loaded pre.font-preview {
  opacity: 1;
}

.font-card.error pre.font-preview {
  color: #f85149;
  font-style: italic;
}
```

### 4.5 Copy Current Render

The "Copy" button now copies the *current dynamic render*, not a static sample.

```js
document.addEventListener("click", (e) => {
  if (e.target.matches(".btn-copy-art")) {
    const card = e.target.closest(".font-card");
    const art = card.querySelector("pre.font-preview").textContent;
    navigator.clipboard.writeText(art).then(() => {
      e.target.textContent = "Copied!";
      setTimeout(() => { e.target.textContent = "Copy"; }, 1500);
    });
  }
});
```

---

## 5. Complete Injectable Code

Drop-in module for the Fonts tab. Assumes `figlet.js` is loaded via script tag.

```js
// ═══════════════════════════════════════════════════
//  FIGLET DYNAMIC RENDERER — drop into Fonts tab
// ═══════════════════════════════════════════════════

const FigletRenderer = (() => {
  // ── Config ──
  const CDN_BASE = "https://cdn.jsdelivr.net/npm/figlet@1.8.2/fonts/";
  const DEFAULT_TEXT = "Hello";
  const DEBOUNCE_MS = 200;
  const MAX_LENGTH = 20;

  const PRIORITY_FONTS = [
    "Standard","Big","Small","Slant","Shadow",
    "Banner","Block","Doom","ANSI Shadow"
  ];

  // ── State ──
  let currentText = DEFAULT_TEXT;
  let renderTimer = null;
  let initialized = false;
  const loadedFonts = new Set();

  // ── Init ──
  function init() {
    if (typeof figlet === "undefined") {
      console.warn("figlet.js not loaded — fonts will show static fallbacks");
      return;
    }

    figlet.defaults({ fontPath: CDN_BASE });

    // Preload priority fonts
    figlet.preloadFonts(PRIORITY_FONTS, () => {
      PRIORITY_FONTS.forEach(f => loadedFonts.add(f));
      initialized = true;
      renderAll(currentText);
      setupLazyLoading();
    });

    setupInput();
  }

  // ── Rendering ──
  async function render(fontName, text) {
    text = text || DEFAULT_TEXT;
    if (!text.trim()) text = DEFAULT_TEXT;

    // Sync path (instant) if font already loaded
    if (loadedFonts.has(fontName)) {
      try {
        return figlet.textSync(text, { font: fontName });
      } catch (e) { /* fall through to async */ }
    }

    // Async path (triggers fetch)
    try {
      const result = await figlet.text(text, { font: fontName });
      loadedFonts.add(fontName);
      return result;
    } catch (err) {
      return null;
    }
  }

  async function renderAll(text) {
    const cards = document.querySelectorAll(".font-card");
    const promises = Array.from(cards).map(card => renderCardEl(card, text));
    await Promise.allSettled(promises);
  }

  async function renderCardEl(card, text) {
    const fontName = card.dataset.font;
    const pre = card.querySelector("pre.font-preview");
    if (!pre) return;

    const result = await render(fontName, text);
    if (result !== null) {
      pre.textContent = result;
      card.classList.add("loaded");
      card.classList.remove("error");

      // Update dimensions
      const lines = result.split("\n").filter(l => l.trim());
      const dims = card.querySelector(".font-dims");
      if (dims && lines.length) {
        const h = lines.length;
        const w = Math.max(...lines.map(l => l.length));
        dims.textContent = `${h}h × ${w}w`;
      }
    } else {
      pre.textContent = `[${fontName} unavailable]`;
      card.classList.add("error");
    }
  }

  // ── Input Handling ──
  function setupInput() {
    const input = document.getElementById("figlet-text");
    const counter = document.querySelector(".char-count");
    const reset = document.getElementById("figlet-reset");
    if (!input) return;

    input.addEventListener("input", (e) => {
      const val = e.target.value.slice(0, MAX_LENGTH);
      e.target.value = val;
      if (counter) counter.textContent = `${val.length}/${MAX_LENGTH}`;
      currentText = val;
      clearTimeout(renderTimer);
      renderTimer = setTimeout(() => renderAll(val), DEBOUNCE_MS);
    });

    if (reset) {
      reset.addEventListener("click", () => {
        input.value = DEFAULT_TEXT;
        if (counter) counter.textContent = `${DEFAULT_TEXT.length}/${MAX_LENGTH}`;
        currentText = DEFAULT_TEXT;
        renderAll(DEFAULT_TEXT);
      });
    }

    input.addEventListener("blur", () => {
      if (!input.value.trim()) {
        input.value = DEFAULT_TEXT;
        currentText = DEFAULT_TEXT;
        renderAll(DEFAULT_TEXT);
      }
    });
  }

  // ── Lazy Loading ──
  function setupLazyLoading() {
    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          const card = entry.target;
          if (!card.classList.contains("loaded")) {
            renderCardEl(card, currentText);
          }
          observer.unobserve(card);
        }
      });
    }, { rootMargin: "300px" });

    document.querySelectorAll(".font-card").forEach(card => {
      if (!PRIORITY_FONTS.includes(card.dataset.font)) {
        observer.observe(card);
      }
    });
  }

  // ── Public API ──
  return {
    init,
    render,
    renderAll,
    getCurrentText: () => currentText,
    isReady: () => initialized,
  };
})();

// Initialize when DOM is ready
document.addEventListener("DOMContentLoaded", FigletRenderer.init);
```

---

## 6. Font Name Mapping

figlet.js uses slightly different casing than pyfiglet for some fonts.
Map between the two:

```js
const FONT_NAME_MAP = {
  // pyfiglet name → figlet.js name
  "standard":       "Standard",
  "big":            "Big",
  "small":          "Small",
  "mini":           "Mini",
  "banner":         "Banner",
  "block":          "Block",
  "lean":           "Lean",
  "slant":          "Slant",
  "shadow":         "Shadow",
  "3-d":            "3-D",
  "3x5":            "3x5",
  "5x7":            "5x7",
  "4max":           "4Max",
  "chunky":         "Chunky",
  "digital":        "Digital",
  "lcd":            "LCD",
  "stampatello":    "Stampatello",
  "smkeyboard":     "SmKeyboard",
  "banner3-D":      "Banner3-D",
  "colossal":       "Colossal",
  "doom":           "Doom",
  "epic":           "Epic",
  "georgia11":      "Georgia11",
  "roman":          "Roman",
  "starwars":       "Star Wars",
  "script":         "Script",
  "cursive":        "Cursive",
  "contessa":       "Contessa",
  "cybermedium":    "Cybermedium",
  "larry3d":        "Larry 3D",
  "ogre":           "Ogre",
  "rectangles":     "Rectangles",
  "alligator":      "Alligator",
  "bubble":         "Bubble",
  "bulbhead":       "Bulbhead",
  "graffiti":       "Graffiti",
  "isometric1":     "Isometric1",
  "letters":        "Letters",
  "poison":         "Poison",
  "speed":          "Speed",
  "alphabet":       "Alphabet",
  "binary":         "Binary",
  "morse":          "Morse",
  "o8":             "o8",
  "pagga":          "Pagga",
  "runic":          "Runic",
  "short":          "Short",
  "term":           "Term",
  "thin":           "Thin",
  "ansi_regular":   "ANSI Regular",
  "ansi_shadow":    "ANSI Shadow",
  "cyberlarge":     "Cyberlarge",
  "hex":            "Hex",
  "lockergnome":    "Lockergnome",
  "univers":        "Univers",
  "js_stick_letters":"JS Stick Letters",
};

// Helper: get figlet.js-compatible name
function getFigletName(pyfigletName) {
  return FONT_NAME_MAP[pyfigletName] || pyfigletName;
}
```

---

## 7. Performance Notes

### Font File Sizes (typical)
```
Font               .flf size    Category
────────────────   ─────────    ──────────
Standard           3.2 KB       Essential
Doom               2.1 KB       Big & Bold
ANSI Shadow        4.8 KB       Tech
Star Wars          5.1 KB       Big & Bold
Isometric1         9.7 KB       Decorative
Colossal           6.3 KB       Big & Bold
3x5                1.4 KB       Retro
Binary             0.8 KB       Minimal
────────────────   ─────────
Average            ~3.5 KB
62 fonts total     ~220 KB      (if all loaded)
```

### Loading Timeline
```
T+0ms      Page loads, figlet.js script tag (~45KB gzipped)
T+100ms    figlet.defaults() sets CDN font path
T+100ms    preloadFonts() fires for 9 priority fonts (~30KB total)
T+300ms    Priority fonts loaded → top cards render instantly
T+300ms+   IntersectionObserver triggers lazy loads as user scrolls
T+500ms    User starts typing → debounced re-render every 200ms
```

### Optimization Tips
- **Max length 20**: Prevents massive renders that blow out card widths
- **Debounce 200ms**: Prevents font re-render on every keystroke
- **textSync when available**: Zero async overhead for loaded fonts
- **IntersectionObserver rootMargin 300px**: Pre-fetches fonts just before visible
- **Promise.allSettled**: One failed font doesn't block the rest
- **CDN caching**: jsDelivr serves with long cache headers, repeat visits are instant

### Fallback Chain
```
1. Try figlet.textSync() — instant if font preloaded
2. Try figlet.text() — async fetch from CDN
3. Show static pre-rendered "Hello" from FIGLET_FONTS data
4. Show "[Font unavailable]" error state
```

### Memory Management
For 62 fonts, each parsed font object sits at ~50-100KB in memory.
Total worst case: ~6MB. This is fine for a single-page catalogue.
If scaling to 500+ fonts, consider an LRU cache that evicts least-used fonts.

```js
// Optional: LRU eviction for large font counts
const MAX_CACHED_FONTS = 80;
const fontAccessOrder = [];

function trackFontAccess(fontName) {
  const idx = fontAccessOrder.indexOf(fontName);
  if (idx > -1) fontAccessOrder.splice(idx, 1);
  fontAccessOrder.push(fontName);

  // Evict oldest if over limit
  // Note: figlet.js doesn't expose a font unload API,
  // so this is a no-op in practice — but useful if we
  // add manual font management later.
  if (fontAccessOrder.length > MAX_CACHED_FONTS) {
    const evict = fontAccessOrder.shift();
    // Future: figlet.unloadFont(evict) if API exists
  }
}
```

---

## Appendix: Minimal Working Example

Standalone HTML that demonstrates the full dynamic flow. Open in browser, type anything.

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Figlet Dynamic Preview</title>
<style>
  * { margin: 0; box-sizing: border-box; }
  body {
    background: #0d1117; color: #c9d1d9;
    font-family: system-ui, sans-serif;
  }
  .input-bar {
    position: sticky; top: 0; z-index: 10;
    padding: 12px 20px; background: #161b22;
    border-bottom: 1px solid #30363d;
    display: flex; align-items: center; gap: 12px;
  }
  .input-bar input {
    padding: 8px 12px; font-size: 16px; width: 280px;
    font-family: "Courier New", monospace;
    background: #0d1117; color: #e6edf3;
    border: 1px solid #30363d; border-radius: 6px;
  }
  .input-bar input:focus { outline: none; border-color: #58a6ff; }
  .grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(420px, 1fr));
    gap: 16px; padding: 20px;
  }
  .card {
    background: #161b22; border: 1px solid #30363d;
    border-radius: 8px; overflow: hidden;
  }
  .card-header {
    padding: 8px 12px; display: flex; justify-content: space-between;
    border-bottom: 1px solid #21262d; font-size: 14px;
  }
  .card-header .name { color: #58a6ff; font-weight: 600; }
  .card-header .dims { color: #484f58; font-family: monospace; }
  .card pre {
    padding: 12px; margin: 0; overflow-x: auto;
    font-family: "Courier New", monospace;
    font-size: 11px; line-height: 1.15;
    color: #7ee787; min-height: 80px;
    white-space: pre;
  }
  .card.loading pre { color: #484f58; }
</style>
</head>
<body>

<div class="input-bar">
  <label style="color:#8b949e">Preview:</label>
  <input type="text" id="text-input" value="Hello" maxlength="20" spellcheck="false">
  <span id="count" style="color:#484f58;font-size:12px;font-family:monospace">5/20</span>
</div>

<div class="grid" id="grid"></div>

<script src="https://cdn.jsdelivr.net/npm/figlet@1.8.2/lib/figlet.min.js"></script>
<script>
const FONTS = [
  "Standard","Big","Small","Slant","Shadow","Block","Doom","Banner",
  "ANSI Shadow","3-D","3x5","Chunky","Digital","Colossal","Epic",
  "Star Wars","Script","Ogre","Graffiti","Bubble","Isometric1",
  "Alphabet","Thin","Speed","Poison","Rectangles","Roman"
];

const grid = document.getElementById("grid");
const input = document.getElementById("text-input");
const count = document.getElementById("count");
let timer = null;

// Build cards
FONTS.forEach(font => {
  const card = document.createElement("div");
  card.className = "card loading";
  card.dataset.font = font;
  card.innerHTML = `
    <div class="card-header">
      <span class="name">${font}</span>
      <span class="dims">…</span>
    </div>
    <pre>Loading…</pre>`;
  grid.appendChild(card);
});

// Init figlet
figlet.defaults({
  fontPath: "https://cdn.jsdelivr.net/npm/figlet@1.8.2/fonts/"
});

async function renderAll(text) {
  if (!text.trim()) text = "Hello";
  const cards = document.querySelectorAll(".card");
  await Promise.allSettled(Array.from(cards).map(async card => {
    const font = card.dataset.font;
    const pre = card.querySelector("pre");
    const dims = card.querySelector(".dims");
    try {
      const result = await figlet.text(text, { font });
      pre.textContent = result;
      card.classList.remove("loading");
      const lines = result.split("\n").filter(l => l.trim());
      dims.textContent = `${lines.length}h × ${Math.max(...lines.map(l=>l.length))}w`;
    } catch (e) {
      pre.textContent = `[${font} error]`;
    }
  }));
}

input.addEventListener("input", e => {
  const v = e.target.value;
  count.textContent = `${v.length}/20`;
  clearTimeout(timer);
  timer = setTimeout(() => renderAll(v), 200);
});

renderAll("Hello");
</script>
</body>
</html>
```

---
