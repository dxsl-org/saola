# Saola System Architecture

**Last Updated:** 2026-05-18

This document describes the system design of the Saola Gleam/Lustre UI widget library, including the display list canvas architecture introduced in May 2026.

---

## Overview

Saola is a stateless UI widget library providing:
1. **Core Widgets** (63+ pure-Gleam components via HTML/CSS)
2. **Canvas Visualization** (display-list rendering with hit-testing)
3. **Graph Layout** (D3 force simulation via Worker thread)
4. **Web Components** (custom elements for carousel, multiselect, resizable, canvas)

All widgets follow a consistent pattern: **stateless functions** producing typed `Element(msg)` or `CanvasOutput(msg)`, with consumers managing state in their Lustre `Model`.

---

## Design Principles

### 1. Stateless Widgets

Every widget is a pure function:
```gleam
widget_full(variant, size, content, attrs, on_click) -> Element(msg)
```

- No internal mutable state
- Consumer owns all state in their `Model`
- Widgets are idempotent and composable
- Tests verify rendering, not state mutations

### 2. Full + Shortcut Pattern

Each widget module exposes:
- `widget_full(...)` — All configuration options available
- Shortcut functions (`widget_primary`, `widget_simple`, etc.) — Common cases with sensible defaults

Shortcuts delegate to `*_full` using `const default_*` records or `fn default_*() -> T` functions.

### 3. CSS + Basecoat Design Tokens

All widgets use [Basecoat](https://basecoatui.com) CSS class names:
- No Tailwind, no shadcn/ui class dependencies
- CSS variables for theming: `--color-primary`, `--color-border`, etc.
- Dark mode via `.dark` class on root element
- Flat CSS selectors (no nested Shadow DOM class isolation)

### 4. Typed ARIA + Accessibility

ARIA attributes are explicit, not imported from Radix:
```gleam
a.role("alert")
a.aria_label("Close")
a.aria_expanded(is_open)
a.aria_disabled(is_disabled)
```

All widgets provide semantic HTML and keyboard navigation.

### 5. Web Component Pattern

When external interactivity is needed (canvas, carousel, resizable):
- Gleam handles all state logic
- Custom element (`<saola-*>`) is a thin presentation layer
- Properties for structured data (arrays, objects)
- Attributes for string scalars
- Custom events for user interactions

---

## Canvas Architecture

Introduced May 2026. Enables efficient, scalable visualization with no JS state management.

### Conceptual Flow

```
Gleam (owns logic)
  ↓
  Generates List(CanvasCommand) + List(HitArea(msg))
  ↓
<saola-canvas> (element)
  ↓
  Executes commands via Canvas 2D API
  ↓
  User clicks → coordinate event
  ↓
Gleam hit_test(areas, x, y) → Option(msg)
  ↓
  Consumer's update(msg, model) → new model
  ↓
  Consumer re-renders → new CanvasOutput
  ↓
  <saola-canvas> re-draws
```

### Key Types

**`canvas_command.gleam`**

```gleam
pub type CanvasCommand {
  // Style
  SetFill(color: String)
  SetStroke(color: String)
  SetLineWidth(width: Float)
  SetFont(font: String)
  SetAlpha(alpha: Float)
  SetLineDash(segments: List(Float))
  SetTextAlign(align: String)
  SetTextBaseline(baseline: String)
  // Transform
  Save
  Restore
  Translate(x: Float, y: Float)
  Scale(x: Float, y: Float)
  Rotate(angle: Float)
  // Paths
  BeginPath
  MoveTo(x: Float, y: Float)
  LineTo(x: Float, y: Float)
  Arc(cx: Float, cy: Float, r: Float, start: Float, end: Float, ccw: Bool)
  QuadTo(cpx: Float, cpy: Float, x: Float, y: Float)
  BezierTo(cp1x: Float, cp1y: Float, cp2x: Float, cp2y: Float, x: Float, y: Float)
  ClosePath
  Fill
  Stroke
  Clip
  // Rect
  FillRect(x: Float, y: Float, w: Float, h: Float)
  StrokeRect(x: Float, y: Float, w: Float, h: Float)
  ClearRect(x: Float, y: Float, w: Float, h: Float)
  // Text
  FillText(text: String, x: Float, y: Float)
  StrokeText(text: String, x: Float, y: Float)
}

pub type HitArea(msg) {
  RectHit(x: Float, y: Float, w: Float, h: Float, msg: msg)
  CircleHit(cx: Float, cy: Float, r: Float, msg: msg)
}

pub type CanvasOutput(msg) {
  CanvasOutput(commands: List(CanvasCommand), hit_areas: List(HitArea(msg)))
}
```

**`canvas_ffi.mjs` — `<saola-canvas>` Custom Element**

- **Light DOM** (not Shadow DOM — retargeting breaks coordinate calculations)
- **Properties:**
  - `commands: Array<CanvasCommand>` — JSON-serialized commands
  - `hitAreas: Array<HitArea>` — JSON-serialized hit areas (not used directly in JS)
- **Events:**
  - `canvas-tap` with `detail: { x, y }` — click at coordinates
  - `canvas-drag` with `detail: { dx, dy }` — mouse drag delta
  - `canvas-hover` with `detail: { x, y }` — mouse move
  - `canvas-wheel` with `detail: { delta }` — wheel scroll
- **Responsibilities:**
  - DPR-scaled canvas sizing via ResizeObserver
  - Command execution: interprets each `CanvasCommand` on Canvas 2D context
  - Event handling: converts browser events to custom events with coordinates
  - No state management

**Hit Testing** (`canvas_command.gleam`)

```gleam
pub fn hit_test(areas: List(HitArea(msg)), x: Float, y: Float) -> Option(msg) {
  // Runs in Gleam on every canvas-tap event
  // Returns first hit area, or None
}
```

Runs **in Gleam**, not JavaScript. Typed messages returned directly to consumer's `update()` function.

---

## Graph Layout System

D3 force simulation offloaded to a Worker thread for non-blocking layout.

### Pipeline

1. **Consumer calls:**
   ```gleam
   request_layout(nodes, edges, LayoutReceived)
     -> Effect(msg)
   ```

2. **Effect spawns Worker** (via `graph_layout_ffi.mjs`):
   - Sends JSON-encoded nodes and edges
   - Worker runs D3 force simulation
   - Worker returns normalized positions [0, 1]

3. **Consumer receives `LayoutReceived(LayoutResult)` message:**
   ```gleam
   pub type LayoutResult {
     LayoutResult(positions: List(NodePosition), edge_routes: List(EdgeRoute))
   }
   ```

4. **Consumer renders via `entity_graph_canvas()`:**
   ```gleam
   entity_graph_canvas(nodes, edges, positions, attrs, on_node_tap)
     -> CanvasOutput(msg)
   ```

### Types

**`graph_layout.gleam`**

```gleam
pub type LayoutNode {
  LayoutNode(id: String)
}

pub type LayoutEdge {
  LayoutEdge(source: String, target: String)
}

pub type NodePosition {
  NodePosition(id: String, x: Float, y: Float)
}

pub type EdgeRoute {
  EdgeRoute(source_id: String, target_id: String, points: List(#(Float, Float)))
}

pub type LayoutResult {
  LayoutResult(positions: List(NodePosition), edge_routes: List(EdgeRoute))
}
```

**`graph_layout_worker.js`**

- Lazy-loaded Worker script
- D3 force simulation:
  - Node repulsion (coulomb force)
  - Edge attraction (Hooke's law)
  - Friction / velocity damping
  - Iterations until convergence
- Returns normalized [0, 1] coordinates (decouples from canvas size)

**`entity_graph_canvas.gleam`**

```gleam
pub fn entity_graph_canvas(
  nodes: List(GraphNode),
  edges: List(GraphEdge),
  positions: List(NodePosition),
  attrs: EntityGraphCanvasAttrs,
  on_node_tap: Option(fn(String) -> msg),
) -> CanvasOutput(msg)
```

- Builds draw commands from positions
- Creates hit areas for nodes
- Applies pan/zoom transforms
- Returns typed messages on node click

---

## Widget Categorization

### Phase 1: Core Widgets (100% Complete — 10 widgets)

Basic UI building blocks:
- Button, Input, Textarea, Label
- Badge, Alert, Card
- Checkbox, Radio, Switch

**Pattern:** Flat API, no compounds, ARIA-accessible, CSS-only styling.

### Phase 2: Advanced Widgets (100% Complete — 12 widgets)

Compound interactions:
- Dropdown Menu, Select, Combobox
- Dialog, Popover, Tooltip
- Tabs, Accordion, Carousel
- Toast, Modal, Hover Card

**Pattern:** Consumer owns state (open/close, selection, active tab), widget is presentation layer.

### Phase 3: Form & Input Widgets (100% Complete — 12 widgets)

Specialized inputs:
- Form Field (required, hint, error states)
- Slider, Range Slider
- Toggle Group, Segmented Control
- Date Picker, Calendar, Time Picker
- Command Palette, Multiselect, Rating, Search

**Pattern:** `InitValue` / `SyncValue` ADT for two-mode value binding.

### Phase 4: Specialized Widgets (100% Complete — 6 widgets)

Focus-specific interactions:
- Spinner (animated loading)
- Native Select (styled native `<select>`)
- Button Group, Input Group
- Context Menu, Drawer

**Pattern:** CSS animations, ARIA roles, event delegation.

### Phase 5: Layout & Navigation (100% Complete — 9 widgets)

Structural components:
- Breadcrumb, Pagination
- Sidebar, Resizable
- Empty (empty-state placeholder)
- Item (row-layout primitive)
- Navigation Bar, Stepper

**Pattern:** Flexbox layouts, semantic list/nav roles, no state.

### Phase 6: Data Display (100% Complete — 14 widgets)

Complex data rendering:
- Data Table (typed columns, sorting, filtering, pagination)
- Tree View (nested, collapsible tree)
- Timeline (vertical event list)
- Badge List

**Pattern:** Generic types for column/node customization, consumer manages open_ids / sort / filter.

---

## Web Components

### Multiselect (`saola-multiselect`)

- **Properties:** `max-selected`, `disabled`
- **Attributes:** `multiple`
- **Event:** `multiselect-change` with `detail: { selected: [...] }`
- **Template:** Shadow DOM, chip-based UI, dropdown panel

### Carousel (`saola-carousel`)

- **Properties:** `loop`, `direction` (horizontal/vertical)
- **Event:** `slide-change` with `detail: { index }`
- **Template:** Scroll-snap viewport, flex layout

### Resizable (`saola-resizable-panels`)

- **Properties:** `direction` (horizontal/vertical)
- **Drag handles:** User-draggable, smooth resize
- **Segments:** Panel sizes persist across window resize

### Canvas (`saola-canvas`)

- **Properties:** `commands`, `hitAreas` (JSON-encoded)
- **Events:** `canvas-tap`, `canvas-drag`, `canvas-hover`, `canvas-wheel`
- **DPR Scaling:** Automatic via ResizeObserver

---

## Theming System

### Theme Types

```gleam
pub type Theme {
  Light
  Dark
  System  // Follows OS preference
}

pub fn theme_attr(theme: Theme) -> Attribute(msg)
// Returns .dark class for Dark, or a.none() for Light
// System preference handled by index.html media query script

pub fn theme_sub(
  is_system_active: Bool,
  to_msg: fn(Bool) -> msg,
) -> lustre.Sub(msg)
// Subscription fires when OS dark-mode preference changes
```

### CSS Tokens

All widgets use Basecoat CSS variables:
- `--color-primary`, `--color-secondary`
- `--color-border`, `--color-background`
- `--color-muted`, `--color-muted-foreground`
- `--color-destructive`, `--color-destructive-foreground`
- `--radius-sm`, `--radius-md`, `--radius-lg`

Dark mode applied via `.dark` class prefix (Basecoat convention).

---

## Testing Strategy

### Unit Tests

- **Rendering tests:** `element.to_string()` + string assertions
- **Attribute tests:** Verify presence of ARIA, role, class attributes
- **Functional tests:** Helper functions (e.g., filter logic, sorting)

### Test Suite

- **File:** `test/new_widget_tests*.gleam`
- **Coverage:** 307+ passing tests (as of Batch 11)
- **Tools:** Gleam test runner, no external JS test framework

### Canvas Architecture Testing

- Hit-testing logic verified in Gleam
- Command execution not tested in JS (rely on Canvas 2D API correctness)
- Integration tested via entity_graph_canvas and bar_chart_canvas examples

---

## Build & Deployment

### Project Structure

```
src/saola/
├── *.gleam           # Widget modules
├── *_ffi.mjs         # JavaScript FFI helpers
├── *_worker.js       # Worker threads
└── theme.gleam       # Theme system

assets/
├── app.css           # Widget styles (Basecoat)
├── basecoat.css      # Design tokens
└── saola-*.mjs       # Web component definitions

dev/saola/preview/
└── *.gleam           # Dev preview app (not shipped)

test/
└── *.gleam           # Test suite (not shipped)
```

### Publishing

- Target: [Hex.pm](https://hex.pm/packages/saola)
- Command: `gleam publish` (requires `HEXPM_API_KEY`)
- Includes: src/, assets/, README.md, CHANGELOG.md, gleam.toml

### Consumer Setup

```bash
gleam add saola
```

Then in Lustre app:
```gleam
import lustre
import saola/button

fn main() -> Nil {
  let app = lustre.element(button.button_primary("Click me", on_click))
  lustre.start(app, "#app", Nil)
}
```

CSS must be imported:
```html
<link rel="stylesheet" href="/basecoat.css">
<link rel="stylesheet" href="/app.css">
```

---

## Future Architecture Considerations

1. **Canvas Optimization:** Dirty rect tracking for incremental renders
2. **Worker Pool:** Multiple layout workers for parallel graph simulations
3. **Accessibility:** Canvas-specific a11y (focus rings, keyboard nav)
4. **Performance:** Memoization for expensive rendering paths
5. **Extensibility:** Plugin system for custom canvas renderers

---

## References

- **Basecoat:** https://basecoatui.com
- **Lustre:** https://lustre.build
- **D3 Force:** https://github.com/d3/d3-force
- **Canvas 2D API:** https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API
