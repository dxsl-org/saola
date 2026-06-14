# Saola — Coding Rules

## Terminology

Call UI building blocks **widgets**, not *components*. In Lustre, `component` is a heavier construct that carries its own runtime instance. Saola widgets are pure functions.

When this project grows, we will add complex UI elements in the form of (Lustre) *componenent*.

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
- `widget(...)` — all options available
- Shortcut functions for common cases (`widget_primary`, `widget_simple`, etc.)

Shortcuts delegate to `widget` using `default_*` values.

```gleam
pub fn button_primary(label: String, click_message: msg) -> Element(msg) {
  button(Primary, label, Large, Some(click_message), default_extra_attrs)
}
```

### 3. Default values

Use `pub const default_*` for records whose fields are all scalar (String, Bool, Int, Option of scalar).

Use `pub fn default_*() -> T` (a function) for records that contain `Element(msg)` or any polymorphic field — because `pub const` cannot hold generic types.

### 4. Widget `Attrs` types — only for long parameter lists

Introduce a `WidgetAttrs` record type **only** when `widget` would otherwise take more parameters than is readable (roughly 4+). The sole purpose of `Attrs` is to reduce the number of positional arguments — not to add abstraction for its own sake.

Keep the most important parameters as direct arguments; bundle secondary or optional ones into `Attrs`. The goal is a balanced signature, not collapsing everything into one record.

```gleam
// CORRECT: two parameters, no need for a wrapper type
pub fn spinner(size: SpinnerSize, class: String) -> Element(msg)

// CORRECT: primary params stay direct, secondary ones are bundled
pub type DialogAttrs {
  DialogAttrs(description: String, icon: Option(Element(msg)), class: String)
}
pub fn dialog(open: Bool, title: String, attrs: DialogAttrs) -> Element(msg)

// WRONG: wrapping everything into one record just to reduce to a single parameter
pub fn dialog(attrs: DialogAttrs) -> Element(msg)
```

When an `Attrs` type is justified, pair it with a `pub const default_*` (or `pub fn default_*()` for generic fields) so callers can opt in to just the fields they need.

### 5. Form inputs — InitValue / SyncValue

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

### 7. Flat API — prefer constructors over builder pattern

We prefer flat functions over builder/compound patterns, because Gleam’s features make builders verbose and unnecessary.

```gleam
// Preferred: flat function
alert(Destructive, title: "Error", description: "...", icon: some_icon)
alert_danger(title: "Error")

// Discourage: compound/builder pattern
Alert.root() |> Alert.title("Error") |> Alert.description("...") |> Alert.icon(some_icon)
```

Builder patterns are not banned but should only be used in rare cases where they significantly improve ergonomics.

### 8. ARIA attributes — explicit, no Radix dependency

- Prefer semantic HTML tags over ARIA attributes (e.g., use `<button>` instead of `<div role="button">`).
- Design widget constructors to accept ARIA attributes relevant to the widget (grouped in a parameter). This helps users learn which attributes are applicable.
- If the design is incomplete, users can manually add ARIA attributes via `lustre/attribute`.

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

## File Naming

### JavaScript / ES module files (`.mjs`)

Use **kebab-case** for all `.mjs` files — hyphens, not underscores.

FFI bridge files follow the Lustre convention and use a **dot separator** before `ffi`:

```
canvas.ffi.mjs              ✓  (FFI bridge file)
graph-layout.ffi.mjs        ✓  (FFI bridge file)
component-helpers.ffi.mjs   ✓  (FFI bridge file)
canvas_ffi.mjs              ✗
canvas-ffi.mjs              ✗
```

Hyphens are valid in file names and import paths (they appear only in string literals, never as bare identifiers), and are the standard convention for ES modules.

---

## Gleam Type Rules

### 10. Named types over homogeneous tuples

When a tuple has two or more members of the same type, define a custom type instead. Homogeneous tuples like `#(Int, Int, Int)` or `#(Int, Int, Float, Float)` offer no indication of what each position means — callers must remember positional order, and the compiler cannot catch transpositions.

```gleam
// WRONG: members are the same type, order is ambiguous
heatmap_svg_hover: Option(#(Int, Int, Int, Float, Float))

// CORRECT: named fields document intent and prevent transposition
pub type HeatmapHover {
  HeatmapHover(row: Int, col: Int, value: Int, mouse_x: Float, mouse_y: Float)
}
heatmap_svg_hover: Option(HeatmapHover)
```

The exception is short, universally-understood pairs like `#(Float, Float)` for `(x, y)` coordinates — but prefer a named type even there once the tuple grows or appears in multiple places.

### 11. Function names start with verbs — avoid variable name collisions

When a function might collide with variable names in the same scope (e.g., `days_in_month()` function vs. a `month_days` variable), prefix functions with action verbs: `get_`, `calculate_`, `fetch_`, etc.

```gleam
// WRONG: function and variable names are too similar
fn days_in_month(year: Int, month: Month) -> Int { ... }
// Then later: let days_in_month = days_in_month(view_year, view_month)  // ← shadowing!
// Confusing for non-English speakers; hard to distinguish action from data.

// CORRECT: function verb-prefix makes intent and allows concise variable names
fn get_days_in_month(year: Int, month: Month) -> Int { ... }
// Then: let month_days = get_days_in_month(view_year, view_month)
// Function action is obvious; variable names can be concise without collision risk.
```

Benefits:
- **Clarity for international teams**: verb-prefixed functions are immediately recognizable as actions
- **Enables concise variables**: no need for verbose names like `days_in_current_month` when `month_days` is unambiguous
- **Consistency**: follows Python conventions (PEP 8) where functions use verb-based names

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

`{library}-{type}` — examples: `d3-bar-chart`, `codemirror-editor`.

Use the `saola-` prefix only to avoid collision with another registered element of the same name.

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
