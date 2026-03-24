import gleam/option.{type Option}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub const class_input = "input"

pub const class_label = "label"

pub type CheckStatus {
  /// The value which is to be passed to Lustre's `default_checked`.
  /// It only applies to the first time the checkbox is rendered.
  /// Should be used when the form is handled with `formal` library.
  InitChecked(Bool)
  /// The value which is to be passed to Lustre's `checked`.
  /// It will be kept in sync with the app model.
  /// Use when you want to control the checkbox in the same manner as Vue / React.
  SyncChecked(Bool)
}

pub type CheckboxValue {
  /// The value which is to be passed to Lustre's `default_value`.
  /// It only applies to the first time the checkbox is rendered.
  /// Should be used when the form is handled with `formal` library.
  InitValue(String)
  /// The value which is to be passed to Lustre's `value`.
  /// It will be kept in sync with the app model.
  /// Use when you want to control the checkbox in the same manner as Vue / React.
  SyncValue(String)
}

/// Checkbox attribute which makes sense if checkbox is used in a form.
/// The `value` argument will be passed to Lustre's `default_value`
pub type FormAttr {
  FormAttr(name: String, value: CheckboxValue)
}

pub const default_check_status = InitChecked(False)

pub const default_value = InitValue("on")

pub const default_form_attr = FormAttr("", default_value)

fn base_input(status: CheckStatus, form_attr: FormAttr) {
  let FormAttr(name:, value:) = form_attr
  let second_attrs = case name {
    "" -> []
    name -> [
      a.name(name),
      case value {
        InitValue(v) -> a.default_value(v)
        SyncValue(v) -> a.value(v)
      },
    ]
  }
  h.input([
    a.type_("checkbox"),
    a.class(class_input),
    case status {
      InitChecked(v) -> a.default_checked(v)
      SyncChecked(v) -> a.checked(v)
    },
    ..second_attrs
  ])
}

/// Fully customizable checkbox.
/// 
/// Example:
/// 
/// ```gleam
/// let attr = FormAttr("tnc", InitValue("yes"))
/// checkbox_full("Accept terms and conditions", default_check_status, attr, "")
/// ```
pub fn checkbox_full(
  label: String,
  status: CheckStatus,
  form_attr: FormAttr,
  help_text help_text: String,
) {
  case help_text {
    "" ->
      h.label([a.class(class_label), a.class("gap-3")], [
        base_input(status, form_attr),
        h.text(label),
      ])

    help ->
      h.div([a.class("flex items-start gap-3")], [
        base_input(status, form_attr),
        h.div([a.class("grid gap-2")], [
          h.label([a.class(class_label)], [h.text(label)]),
          h.p([a.class("text-muted-foreground text-sm")], [h.text(help)]),
        ]),
      ])
  }
}

// --- Common used checkboxes ---

/// Example:
/// ```gleam
/// checkbox_basic("Accept terms and conditions")
/// ```
pub fn checkbox_basic(label: String) {
  checkbox_full(label, default_check_status, default_form_attr, "")
}
