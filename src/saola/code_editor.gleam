import gleam/int
import lustre/attribute as a
import lustre/element.{type Element}

@external(javascript, "./code_editor_ffi.mjs", "ensure_registered")
fn ensure_registered() -> Nil

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

pub fn editor(attrs attrs: EditorAttrs) -> Element(msg) {
  ensure_registered()
  let EditorAttrs(
    id:,
    value:,
    language:,
    theme:,
    height:,
    read_only:,
    class:,
    aria_label:,
  ) = attrs
  element.element(
    "saola-codemirror-editor",
    [
      case id {
        "" -> a.none()
        value -> a.id(value)
      },
      a.class("saola-codemirror-editor " <> class),
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
