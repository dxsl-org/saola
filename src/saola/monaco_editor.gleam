import gleam/int
import lustre/attribute as a
import lustre/element.{type Element}

pub type EditorAttrs {
  EditorAttrs(id: String, read_only: Bool, class: String, aria_label: String)
}

pub const default_editor_attrs = EditorAttrs(
  id: "",
  read_only: False,
  class: "",
  aria_label: "Code editor",
)

/// Render a Monaco Editor as a blackbox custom element.
///
/// Import `assets/saola-monaco-editor.mjs` once in the host app. Monaco owns
/// the editor runtime, workers, keyboard interaction, and text model.
pub fn editor(
  value value: String,
  language language: String,
  theme theme: String,
  height height: Int,
  attrs attrs: EditorAttrs,
) -> Element(msg) {
  let EditorAttrs(id:, read_only:, class:, aria_label:) = attrs
  element.element(
    "saola-monaco-editor",
    [
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
    ],
    [],
  )
}
