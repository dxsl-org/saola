import gleam/int
import lustre/attribute as a
import lustre/element.{type Element}

pub type EditorAttrs {
  EditorAttrs(
    id: String,
    value: String,
    language: String,
    theme: String,
    height: Int,
    read_only: Bool,
    class: String,
    aria_label: String,
  )
}

pub const default_editor_attrs = EditorAttrs(
  id: "",
  value: "",
  language: "javascript",
  theme: "vs-dark",
  height: 360,
  read_only: False,
  class: "",
  aria_label: "Code editor",
)

/// Render a Monaco Editor as a blackbox custom element.
///
/// Import `assets/saola-monaco-editor.mjs` once in the host app. Monaco owns
/// the editor runtime, workers, keyboard interaction, and text model.
pub fn editor(attrs attrs: EditorAttrs) -> Element(msg) {
  let EditorAttrs(id:, value:, language:, theme:, height:, read_only:, class:, aria_label:) =
    attrs
  element.element("saola-monaco-editor", [
    case id {
      "" -> a.none()
      v -> a.id(v)
    },
    a.class("saola-monaco-editor " <> class),
    a.attribute("value", value),
    a.attribute("language", language),
    a.attribute("theme", theme),
    a.attribute("height", height |> int.to_string),
    a.attribute("read-only", case read_only {
      True -> "true"
      False -> "false"
    }),
    a.aria_label(aria_label),
  ], [])
}
