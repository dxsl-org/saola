import gleam/option.{type Option, None, Some}
import gleam/string
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

// The icons are group by the starting letter, and placed in the modules
// of corresponding letter. For example, "arrow" icon is in "icons/la" module.
import saola/icon/lx

pub type ButtonVariant(a) {
  Primary
  Secondary
  // It holds an element created by the functions in `icons/l*` modules.
  WithIcon(Element(a))
}

pub type ButtonSize {
  Large
  Small
}

pub type ButtonAria {
  ButtonAria(label: String, expanded: Option(Bool))
}

pub type ButtonRoleType {
  /// Render as type='button'
  Regular
  /// Render as type='submit'
  Submit
  /// Render as type='reset'
  Reset
}

/// Extra attributes for button
pub type ButtonExtraAttrs {
  ButtonExtraAttrs(
    disabled: Bool,
    type_: Option(ButtonRoleType),
    aria: ButtonAria,
  )
}

/// Fully customizable button
///
/// Example:
/// ```gleam
/// type Msg {
///    UserClickSubmit
/// }
///
/// button_full(Primary, "Submit", Large, Some(UserClickSubmit))
/// button_full(Secondary, "Pay", Small, None)
/// ```
pub fn button_full(
  variant: ButtonVariant(msg),
  label: String,
  size: ButtonSize,
  // Note: `msg` is lowercase, it is a generic (type parameter)
  click_message: Option(msg),
  extra_attrs: ButtonExtraAttrs,
) -> Element(msg) {
  // We are following the CSS class here: https://basecoatui.com/kitchen-sink/#button
  let css_name = case size, variant {
    Large, Primary -> "btn-lg-primary"
    Large, Secondary -> "btn-lg-secondary"
    Large, WithIcon(_i) -> "btn-lg-outline"
    Small, Primary -> "btn-sm-primary"
    Small, Secondary -> "btn-sm-secondary"
    Small, WithIcon(_i) -> "btn-sm-outline"
  }
  let css_class = a.class(css_name)
  let event_handler =
    click_message |> option.map(e.on_click) |> option.unwrap(a.none())
  let icon = case variant {
    WithIcon(icon) -> icon
    _ -> element.none()
  }
  let label = case string.trim(label) {
    "" -> element.none()
    text -> h.text(text)
  }
  let disabled_attr = case extra_attrs.disabled {
    True -> a.disabled(True)
    False -> a.none()
  }
  let type_attr = case extra_attrs.type_ {
    None -> a.none()
    Some(Regular) -> a.type_("button")
    Some(Submit) -> a.type_("submit")
    Some(Reset) -> a.type_("reset")
  }
  let aria_label_attr = a.aria_label(extra_attrs.aria.label)
  let aria_expanded_attr = case extra_attrs.aria.expanded {
    None -> a.none()
    Some(expanded) -> a.aria_expanded(expanded)
  }
  h.button(
    [
      css_class,
      event_handler,
      disabled_attr,
      type_attr,
      aria_label_attr,
      aria_expanded_attr,
    ],
    [icon, label],
  )
}

// -- Default values. Useful for compositon  --

pub const default_aria = ButtonAria("", None)

pub const default_extra_attrs = ButtonExtraAttrs(False, None, default_aria)

// -- Some common used buttons --

/// Create a primary button.
/// 
/// Example:
/// ```gleam
/// type Msg {
///    UserClickSave
/// }
/// 
/// button_primary(UserClickSave)
/// ```
/// 
pub fn button_primary(label: String, click_message: msg) -> Element(msg) {
  button_full(Primary, label, Large, Some(click_message), default_extra_attrs)
}

pub fn button_close(click_message: msg) -> Element(msg) {
  button_full(
    WithIcon(lx.x([])),
    "",
    Small,
    Some(click_message),
    default_extra_attrs,
  )
}
