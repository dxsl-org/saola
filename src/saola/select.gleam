import gleam/list
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub const class_select = "select"

pub type SelectOption {
  SelectOption(value: String, label: String)
  SelectOptionDisabled(value: String, label: String)
}

pub type SelectValue {
  /// Seeds the selected value once. Use with the `formal` library.
  InitValue(String)
  /// Kept in sync with the app model.
  SyncValue(String)
}

pub type SelectExtraAttrs {
  SelectExtraAttrs(
    id: String,
    name: String,
    disabled: Bool,
    required: Bool,
    aria_invalid: Bool,
    class: String,
  )
}

pub const default_extra_attrs = SelectExtraAttrs(
  id: "",
  name: "",
  disabled: False,
  required: False,
  aria_invalid: False,
  class: "",
)

fn render_option(opt: SelectOption) -> Element(msg) {
  case opt {
    SelectOption(value:, label:) ->
      h.option([a.value(value)], label)
    SelectOptionDisabled(value:, label:) ->
      h.option([a.value(value), a.disabled(True)], label)
  }
}

/// Fully customizable native select.
pub fn select_full(
  options: List(SelectOption),
  value: SelectValue,
  on_change on_change: fn(String) -> msg,
  extra_attrs extra_attrs: SelectExtraAttrs,
) -> Element(msg) {
  let SelectExtraAttrs(id:, name:, disabled:, required:, aria_invalid:, class:) =
    extra_attrs
  h.select(
    [
      a.class(class_select <> case class {
        "" -> ""
        c -> " " <> c
      }),
      case id {
        "" -> a.none()
        v -> a.id(v)
      },
      case name {
        "" -> a.none()
        n -> a.name(n)
      },
      case value {
        InitValue(v) -> a.default_value(v)
        SyncValue(v) -> a.value(v)
      },
      case disabled {
        True -> a.disabled(True)
        False -> a.none()
      },
      case required {
        True -> a.required(True)
        False -> a.none()
      },
      case aria_invalid {
        True -> a.attribute("aria-invalid", "true")
        False -> a.none()
      },
      e.on_input(on_change),
    ],
    list.map(options, render_option),
  )
}

pub fn select_simple(
  options: List(SelectOption),
  on_change: fn(String) -> msg,
) -> Element(msg) {
  select_full(options, InitValue(""), on_change: on_change, extra_attrs: default_extra_attrs)
}
