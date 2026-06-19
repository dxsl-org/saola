//// CodeMirror editor — registered as a Lustre component.
////
//// ## Setup
////
//// Register once at application startup, before the first render:
////
//// ```gleam
//// import saola/component/code_editor
////
//// pub fn main() {
////   let assert Ok(_) = code_editor.register()
////   // ... start your Lustre app
//// }
//// ```
////
//// ## Basic usage
////
//// ```gleam
//// code_editor.editor(
////   value: "pub fn main() { Nil }",
////   language: "javascript",
////   height: 360,
////   attrs: code_editor.default_editor_attrs,
//// )
////
//// // Or use the simple shortcut:
//// code_editor.editor_simple("pub fn main() { Nil }")
//// ```

import gleam/dynamic.{type Dynamic}
import gleam/dynamic/decode
import gleam/int
import lustre
import lustre/attribute.{type Attribute} as a
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/event as ev

pub const tag = "saola-codemirror-editor"

// ---------------------------------------------------------------------------
// Types
// ---------------------------------------------------------------------------

pub type EditorAttrs {
  EditorAttrs(id: String, read_only: Bool, class: String, aria_label: String)
}

pub const default_editor_attrs = EditorAttrs(
  id: "",
  read_only: False,
  class: "",
  aria_label: "Code editor",
)

// ---------------------------------------------------------------------------
// Lustre component
// ---------------------------------------------------------------------------

type Model {
  Model(ready: Bool)
}

type Message {
  EditorReady
}

/// Registers the `<saola-codemirror-editor>` custom element with the browser.
/// Call once at application startup before rendering any editor elements.
pub fn register() -> Result(Nil, lustre.Error) {
  lustre.register(lustre.component(init, update, view, []), tag)
}

fn init(_) -> #(Model, Effect(Message)) {
  #(Model(ready: False), init_editor())
}

fn init_editor() -> Effect(Message) {
  use dispatch, root <- effect.after_paint
  ffi_build_editor(root, fn() { dispatch(EditorReady) })
  Nil
}

fn update(_: Model, msg: Message) -> #(Model, Effect(Message)) {
  case msg {
    EditorReady -> #(Model(ready: True), effect.none())
  }
}

fn view(_: Model) -> Element(Message) {
  element.element("div", [], [
    element.element("style", [], [element.text(shadow_css)]),
    element.element("div", [a.class("editor-root")], []),
  ])
}

// ---------------------------------------------------------------------------
// Public API
// ---------------------------------------------------------------------------

/// Creates a `<saola-codemirror-editor>` element accepting raw attribute lists.
pub fn element(attrs: List(Attribute(m))) -> Element(m) {
  element.element(tag, attrs, [])
}

/// Renders a CodeMirror editor element.
pub fn editor(
  value value: String,
  language language: String,
  height height: Int,
  attrs attrs: EditorAttrs,
) -> Element(msg) {
  let EditorAttrs(id:, read_only:, class:, aria_label:) = attrs
  element([
    case id {
      "" -> a.none()
      v -> a.id(v)
    },
    a.class("saola-codemirror-editor " <> class),
    a.attribute("value", value),
    a.attribute("language", language),
    a.attribute("height", int.to_string(height)),
    a.attribute("read-only", case read_only {
      True -> "true"
      False -> "false"
    }),
    a.aria_label(aria_label),
  ])
}

/// Simple editor with default attributes.
pub fn editor_simple(value: String) -> Element(msg) {
  editor(
    value: value,
    language: "javascript",
    height: 360,
    attrs: default_editor_attrs,
  )
}

/// Fires when the editor content changes. The handler receives the new content string.
pub fn on_change(handler: fn(String) -> m) -> Attribute(m) {
  ev.on("saola-change", {
    use value <- decode.subfield(["detail", "value"], decode.string)
    decode.success(handler(value))
  })
}

// ---------------------------------------------------------------------------
// Shadow CSS
// ---------------------------------------------------------------------------
//
// Shadow DOM boundaries prevent CodeMirror from injecting its dynamic styles
// into the main document — those styles would be invisible inside this shadow
// root. Instead we pass `root: shadowRoot` to EditorView so CodeMirror injects
// its StyleModules directly into the shadow root alongside this base CSS.

const shadow_css = "
  :host { display: block; min-width: 0; }
  .editor-root { width: 100%; }
"

// ---------------------------------------------------------------------------
// FFI
// ---------------------------------------------------------------------------

@external(javascript, "./code-editor.ffi.mjs", "buildEditor")
fn ffi_build_editor(root: Dynamic, on_ready: fn() -> Nil) -> Nil
