# Saola — Consumer Setup Guide

Practical guide for adding Saola to a Lustre application.

---

## 1. Installation

```sh
gleam add saola
```

That's it — no JavaScript build step required for most widgets.

---

## 2. CSS Setup

Saola widgets are styled with [Basecoat CSS](https://basecoatui.com/) — a pure-HTML port of shadcn/ui.

**Option A — CDN (simplest):**

```html
<head>
  <link rel="stylesheet" href="https://unpkg.com/basecoat-css@latest/dist/basecoat.css" />
</head>
```

**Option B — self-hosted (recommended for production):**

After running `gleam add saola`, copy the CSS from the package cache:

```sh
# Vite project
cp build/packages/saola/assets/basecoat.css public/basecoat.css
```

Then reference it in your HTML shell:

```html
<link rel="stylesheet" href="/basecoat.css" />
```

> `assets/app.css` in the Saola repo is the demo app's layout — you do **not** need it.

---

## 3. Quick Start

```gleam
import lustre/element/html as h
import saola/button
import saola/badge

fn view(model: Model) -> Element(Msg) {
  h.div([], [
    badge.badge_secondary("New"),
    button.button_primary("Get started", UserClickedStart),
  ])
}
```

Every widget follows the pattern:
- `widget_full(...)` — all options available
- Shortcut helpers like `widget_primary`, `widget_simple` delegate to `_full` with defaults

---

## 4. Web Component Widgets

Some widgets are backed by custom elements. Their JavaScript is co-located in the Saola
package and bundled automatically by Vite — no manual file copying or `<script>` tags needed.

Widgets with external peer dependencies lazy-load those libraries on first render.
Install only the ones you use:

```sh
npm install d3          # saola/d3_bar_chart
npm install codemirror @codemirror/lang-javascript @codemirror/state  # saola/code_editor
npm install cytoscape cytoscape-fcose  # saola/entity_graph
```

| Widget | Gleam module | Peer dependency |
|--------|--------------|-----------------|
| Carousel | `saola/carousel` | — |
| Resizable panels | `saola/resizable` | — |
| Multi-select | `saola/multiselect` | — |
| D3 bar chart | `saola/d3_bar_chart` | `d3` |
| CodeMirror editor | `saola/code_editor` | `codemirror`, `@codemirror/lang-javascript`, `@codemirror/state` |
| Entity graph | `saola/entity_graph` | `cytoscape`, `cytoscape-fcose` |

---

## 5. Dark Mode

### Static theme

Apply `theme_attr` to your root element:

```gleam
import saola/theme

fn view(model: Model) -> Element(Msg) {
  h.div([theme.theme_attr(model.theme)], [
    // your app content
  ])
}
```

`theme.Theme` variants: `Light` (default) · `Dark` · `System`

### Avoid flash-of-wrong-theme

Add this inline script to `<head>` **before** any stylesheet:

```html
<script>
  if (window.matchMedia('(prefers-color-scheme: dark)').matches)
    document.documentElement.classList.add('dark')
</script>
```

### Reactive System mode (OS preference changes)

`theme_attr(System)` returns `a.none()` — it does not manage the `.dark` class.
When using System mode reactively, skip `theme_attr` entirely and manage the class yourself via `theme_sub`:

```gleam
import saola/theme

// 1. In your Model, track OS dark-mode state:
//    system_os_dark: Bool

// 2. In init — set up the listener once and read the initial state:
fn init(_) -> #(Model, Effect(Msg)) {
  #(
    Model(
      theme: theme.System,
      system_os_dark: theme.get_system_dark(),
      // ...
    ),
    effect.batch([
      // other effects...
      theme.theme_sub(True, SystemOsDarkChanged),
    ]),
  )
}

// 3. In your Msg ADT:
//    SystemOsDarkChanged(Bool)

// 4. Handle in update:
SystemOsDarkChanged(is_dark) ->
  #(Model(..model, system_os_dark: is_dark), effect.none())

// 5. Apply the correct class in view:
fn view(model: Model) -> Element(Msg) {
  let theme_class = case model.theme {
    theme.System ->
      case model.system_os_dark {
        True  -> a.class("dark")
        False -> a.none()
      }
    _ -> theme.theme_attr(model.theme)
  }
  h.div([theme_class], [ /* ... */ ])
}
```

`theme_sub(is_system_active, to_msg)` returns `effect.none()` when `False`,
so it's safe to call even when the user is on Light or Dark theme.

---

## 6. Form Fields and Validation

`saola/field` wraps any input with a label, hint, and error message:

```gleam
import saola/field
import saola/input
import gleam/option.{Some}

field.field(
  field.FieldAttrs(
    ..field.default_attrs,
    label: "Email",
    required: True,
    hint: "We'll never share your email.",
    error: "",          // "" = no error shown
  ),
  input.input_full(
    input.Email,
    Some(input.SyncValue(model.email)),
    on_input: Some(EmailChanged),
    extra_attrs: input.InputExtraAttrs(
      ..input.default_extra_attrs,
      placeholder: "you@example.com",
    ),
  ),
)
```

### Wiring with the `formal` library

Add `formal` to your `[dependencies]` in `gleam.toml`, then use this bridge helper:

```gleam
import formal/form as f
import saola/field

fn field_from_result(
  result: Result(a, String),
  attrs: field.FieldAttrs,
) -> field.FieldAttrs {
  case result {
    Ok(_)    -> field.FieldAttrs(..attrs, error: "")
    Error(e) -> field.FieldAttrs(..attrs, error: e)
  }
}
```

---

## 7. Icons

Install the `lucide_lustre` package:

```sh
gleam add lucide_lustre
```

Pass icons to any widget `icon` slot:

```gleam
import lucide/info
import saola/alert

alert.alert_full(
  alert.Default,
  title: "Heads up",
  description: "You can add components to your app.",
  icon: Some(info.info([], [])),
)
```

Or in button:

```gleam
import lucide/arrow_right
import saola/button

button.button_full(
  button.Primary, "Continue", button.Default,
  icon: Some(arrow_right.arrow_right([], [])),
  on_click: Some(UserContinued),
  extra_attrs: button.default_extra_attrs,
)
```

---

## 8. Widget Reference

Full widget table: [README.md on GitHub](https://github.com/tindn/saola#widgets)

Architecture and state management patterns: [development-roadmap.md](development-roadmap.md)

Code standards: [code-standards.md](code-standards.md)
