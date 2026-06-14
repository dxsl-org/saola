import gleam/list
import gleam/result
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e
import typeid

pub const class_input = "input"

pub const class_label = "label"

pub type RadioOption {
  RadioOption(value: String, label: String)
  RadioOptionDisabled(value: String, label: String)
}

pub type RadioGroupOrientation {
  Horizontal
  Vertical
}

pub type RadioGroupAttrs {
  RadioGroupAttrs(
    name: String,
    orientation: RadioGroupOrientation,
    disabled: Bool,
    required: Bool,
    class: String,
  )
}

pub const default_attrs = RadioGroupAttrs(
  name: "",
  orientation: Vertical,
  disabled: False,
  required: False,
  class: "",
)

fn render_option(
  opt: RadioOption,
  selected_value: String,
  attrs: RadioGroupAttrs,
  on_change: fn(String) -> msg,
  group_id: String,
) -> Element(msg) {
  let #(value, label, is_disabled) = case opt {
    RadioOption(v, l) -> #(v, l, False)
    RadioOptionDisabled(v, l) -> #(v, l, True)
  }
  let input_id = group_id <> "-" <> value
  h.label([a.class(class_label <> " gap-2 cursor-pointer")], [
    h.input([
      a.type_("radio"),
      a.class(class_input),
      a.id(input_id),
      case attrs.name {
        "" -> a.none()
        n -> a.name(n)
      },
      a.value(value),
      case selected_value == value {
        True -> a.checked(True)
        False -> a.none()
      },
      case is_disabled || attrs.disabled {
        True -> a.disabled(True)
        False -> a.none()
      },
      case attrs.required {
        True -> a.required(True)
        False -> a.none()
      },
      e.on_check(fn(_) { on_change(value) }),
    ]),
    h.text(label),
  ])
}

/// Render a group of radio buttons.
///
/// Example:
/// ```gleam
/// radio_group_simple(
///   options: [RadioOption("light", "Light"), RadioOption("dark", "Dark")],
///   value: model.theme,
///   name: "theme",
///   on_change: ThemeChanged,
/// )
/// ```
pub fn radio_group(
  options: List(RadioOption),
  value: String,
  on_change: fn(String) -> msg,
  attrs: RadioGroupAttrs,
) -> Element(msg) {
  let group_id =
    typeid.new(prefix: "rg")
    |> result.map(typeid.to_string)
    |> result.unwrap("radio-group")
  let orientation_attr = case attrs.orientation {
    Horizontal -> a.data("orientation", "horizontal")
    Vertical -> a.none()
  }
  let extra_class = case attrs.class {
    "" -> a.none()
    c -> a.class(c)
  }
  h.div(
    [
      a.class("radio-group"),
      extra_class,
      a.role("radiogroup"),
      orientation_attr,
    ],
    list.map(options, fn(opt) {
      render_option(opt, value, attrs, on_change, group_id)
    }),
  )
}

pub fn radio_group_simple(
  options options: List(RadioOption),
  value value: String,
  name name: String,
  on_change on_change: fn(String) -> msg,
) -> Element(msg) {
  radio_group(
    options,
    value,
    on_change,
    RadioGroupAttrs(..default_attrs, name: name),
  )
}
