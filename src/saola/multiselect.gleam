import gleam/dynamic/decode
import gleam/json
import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/event as e

@external(javascript, "./multiselect_ffi.mjs", "ensure_registered")
fn ensure_registered() -> Nil

pub type MultiselectAttrs {
  MultiselectAttrs(
    placeholder: String,
    disabled: Bool,
    max_selected: Option(Int),
    class: String,
  )
}

pub fn default_attrs() -> MultiselectAttrs {
  MultiselectAttrs(
    placeholder: "Select…",
    disabled: False,
    max_selected: None,
    class: "",
  )
}

fn decode_change(
  callback: fn(List(String)) -> msg,
) -> decode.Decoder(msg) {
  use values <- decode.subfield(["detail", "values"], decode.list(decode.string))
  decode.success(callback(values))
}

/// Multi-value select with chips. Backed by `saola-multiselect.mjs`.
///
/// - `options`: list of `#(value, label)` pairs
/// - `selected_values`: currently selected values (consumer owns)
/// - `on_change`: fired when selection changes, receives updated list
pub fn multiselect_full(
  options: List(#(String, String)),
  selected_values: List(String),
  on_change: fn(List(String)) -> msg,
  attrs: MultiselectAttrs,
) -> Element(msg) {
  ensure_registered()
  let root_class = case attrs.class {
    "" -> "multiselect"
    c -> "multiselect " <> c
  }
  let opts_json =
    json.array(options, fn(opt) {
      let #(val, label) = opt
      json.object([#("value", json.string(val)), #("label", json.string(label))])
    })
  let sel_json = json.array(selected_values, json.string)
  let max_attr = case attrs.max_selected {
    None -> a.none()
    Some(n) -> a.attribute("max-selected", int_to_attr_str(n))
  }
  element.element(
    "saola-multiselect",
    [
      a.class(root_class),
      a.property("options", opts_json),
      a.property("selected", sel_json),
      a.attribute("placeholder", attrs.placeholder),
      case attrs.disabled {
        True -> a.attribute("disabled", "")
        False -> a.none()
      },
      max_attr,
      e.on("multiselect-change", decode_change(on_change)),
    ],
    [],
  )
}

pub fn multiselect_simple(
  options: List(#(String, String)),
  selected_values: List(String),
  on_change: fn(List(String)) -> msg,
) -> Element(msg) {
  multiselect_full(options, selected_values, on_change, default_attrs())
}

fn int_to_attr_str(n: Int) -> String {
  case n {
    1 -> "1"
    2 -> "2"
    3 -> "3"
    4 -> "4"
    5 -> "5"
    6 -> "6"
    7 -> "7"
    8 -> "8"
    9 -> "9"
    _ ->
      case n >= 10 {
        True -> "10"
        False -> "1"
      }
  }
}
