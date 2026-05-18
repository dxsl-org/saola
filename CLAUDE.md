# Saola — Coding Rules

## Terminology

Call UI building blocks **widgets**, not *components*. In Lustre, `component` is a heavier construct that carries its own runtime instance. Saola widgets are pure functions.

---

## Saola Widget Rules

### 1. Stateless widgets — external state only

Widgets never own mutable state. All state lives in the consumer's Lustre `Model`.

```gleam
// CORRECT: consumer owns open/close state
pub fn dropdown_menu(is_open: Bool, on_close: fn() -> msg, ...) -> Element(msg)

// WRONG: do not keep is_open inside the widget
```

### 2. Full function + convenience shortcuts

Every widget exposes:
- `widget_full(...)` — all options available
- Shortcut functions for common cases (`widget_primary`, `widget_simple`, etc.)

Shortcuts delegate to `widget_full` using `default_*` values.

```gleam
pub fn button_primary(label: String, click_message: msg) -> Element(msg) {
  button_full(Primary, label, Large, Some(click_message), default_extra_attrs)
}
```

### 3. Default values

Use `pub const default_*` for records whose fields are all scalar (String, Bool, Int, Option of scalar).

Use `pub fn default_*() -> T` (a function) for records that contain `Element(msg)` or any polymorphic field — because `pub const` cannot hold generic types.

### 4. Form inputs — InitValue / SyncValue

Form inputs expose a two-mode ADT for value binding:

```gleam
pub type InputValue {
  InitValue(String)  // seeds default_value once — use with `formal` library
  SyncValue(String)  // kept in sync with model — use for controlled inputs
}
```

`InitValue` maps to `a.default_value`, `SyncValue` maps to `a.value`.

### 5. Variants as ADTs

Use Gleam ADTs for visual variants, never magic strings.

```gleam
pub type BadgeVariant { Default | Secondary | Destructive | Outline }
```

### 6. CSS — Basecoat class names, string concatenation

Derive class names from [Basecoat](https://basecoatui.com) directly. Build with string concatenation; no `cn()` utility is needed.

```gleam
let class = case variant {
  Default     -> "alert"
  Destructive -> "alert alert-destructive"
}
```

### 7. Flat API — no compound component pattern

```gleam
// CORRECT: flat function
alert_full(Destructive, title: "Error", description: "...", icon: some_icon)

// WRONG: compound/builder pattern
Alert.root() |> Alert.title("Error") |> Alert.description("...")
```

### 8. ARIA attributes — explicit, no Radix dependency

Add ARIA attributes directly via Lustre's typed helpers:

```gleam
a.role("alert")
a.aria_label("Close")
a.aria_expanded(is_open)
a.aria_labelledby(title_id)
```

### 9. Auto-generated IDs

Use `typeid` when an accessible ID is needed but not provided by the consumer:

```gleam
import typeid
let id = typeid.new(prefix: "dlg") |> result.map(typeid.to_string) |> result.unwrap("dlg-fallback")
```

---

## Web Component (External Library Wrapper) Rules

### 1. Properties for structured data, attributes for strings

HTML attributes are **always strings**. Use `a.property` for arrays and objects — Lustre's reconciler sets them as native JS properties (`element.propName = value`).

```gleam
// CORRECT: native JS array, no serialization
a.property("series", json.array(data, of: encode_point))

// WRONG: JSON round-trip through a string attribute
a.attribute("data-series", json.array(data, of: encode_point) |> json.to_string)
```

`gleam_json` values (`json.array`, `json.object`, etc.) are bare JS values at runtime — `json.array` compiles to a plain JS array. There is no intermediate wrapper to unwrap.

### 2. JS custom element — property setter, not observedAttributes

Only list **string scalar attributes** in `observedAttributes`. Handle structured data through a JavaScript property setter:

```js
// CORRECT
static observedAttributes = ['chart-title', 'height']

set series(value) {
  this._series = Array.isArray(value) ? value : []
  if (this.isConnected) this.render()
}
```

```js
// WRONG
static observedAttributes = ['data-series']  // can't receive arrays via attributes
```

### 3. Guard isConnected before rendering

Always check `this.isConnected` before rendering in setters and callbacks, because setters can fire before the element is attached to the DOM.

```js
set series(value) {
  this._series = Array.isArray(value) ? value : []
  if (this.isConnected) this.render()  // guard required
}
```

### 4. Custom element naming convention

`saola-{library}-{type}` — examples: `saola-d3-bar-chart`, `saola-monaco-editor`, `saola-codemirror-editor`.

### 5. Shadow DOM + template

Use Shadow DOM by default for encapsulation. Define the template once outside the class, clone it in the constructor:

```js
const template = document.createElement('template')
template.innerHTML = `<style>:host { display: block; }</style>...`

class MyElement extends HTMLElement {
  constructor() {
    super()
    this.attachShadow({ mode: 'open' }).append(template.content.cloneNode(true))
  }
}
```

**Exception — canvas-based renderers (Cytoscape.js, sigma.js, raw `<canvas>`):** use light DOM (no `attachShadow`). Shadow DOM breaks canvas mouse event retargeting, causing drag and hover to malfunction (Cytoscape.js bug #3273).

### 6. element.to_string skips properties

`lustre/element.to_string` (used in tests) serializes HTML attributes but **silently skips DOM properties**. Tests cannot assert on property values — assert on attributes and the element tag instead.

```gleam
// CORRECT: assert on attributes only
assert string.contains(html, "saola-d3-bar-chart")
assert string.contains(html, "chart-title=\"Revenue\"")

// WRONG: property "series" will never appear in to_string output
assert string.contains(html, "series=")
```
