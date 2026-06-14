import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type SearchSize {
  Small
  Large
}

pub type SearchAttrs {
  SearchAttrs(placeholder: String, disabled: Bool, name: String, class: String)
}

pub const default_attrs = SearchAttrs(
  placeholder: "Search…",
  disabled: False,
  name: "",
  class: "",
)

/// Search input with optional clear button.
///
/// - `on_clear`: when `Some(msg)`, an X button appears and dispatches `msg` on click.
pub fn search(
  size: SearchSize,
  value: String,
  on_input: fn(String) -> msg,
  on_clear: Option(msg),
  attrs: SearchAttrs,
) -> Element(msg) {
  let size_class = case size {
    Small -> " input-sm"
    Large -> ""
  }
  let extra_class = case attrs.class {
    "" -> ""
    c -> " " <> c
  }
  let clear_btn = case on_clear {
    None -> element.none()
    Some(msg) ->
      h.button(
        [
          a.type_("button"),
          a.class("btn-icon btn-ghost search-clear"),
          a.aria_label("Clear search"),
          e.on_click(msg),
        ],
        [h.text("✕")],
      )
  }
  h.div(
    [a.class("input-wrapper" <> size_class <> extra_class), a.role("search")],
    [
      h.span([a.class("input-icon input-icon-left")], [h.text("🔍")]),
      h.input([
        a.type_("search"),
        a.class(
          "input has-icon-left"
          <> case on_clear {
            None -> ""
            Some(_) -> " has-icon-right"
          },
        ),
        a.value(value),
        case attrs.placeholder {
          "" -> a.none()
          p -> a.placeholder(p)
        },
        case attrs.name {
          "" -> a.none()
          n -> a.name(n)
        },
        case attrs.disabled {
          True -> a.disabled(True)
          False -> a.none()
        },
        e.on_input(on_input),
      ]),
      clear_btn,
    ],
  )
}

pub fn search_simple(
  value: String,
  on_input: fn(String) -> msg,
) -> Element(msg) {
  search(Large, value, on_input, None, default_attrs)
}

pub fn search_clearable(
  value: String,
  on_input: fn(String) -> msg,
  on_clear: msg,
) -> Element(msg) {
  search(Large, value, on_input, Some(on_clear), default_attrs)
}
