import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

/// Reuses the same Basecoat CSS class as `<input>` — both elements share the
/// `.input` design token.
pub const class_input = "input"

/// NOTE: Unlike `<input>` which has `defaultValue`/`value` HTML attributes,
/// `<textarea>` only accepts text content. Both `InitValue` and `SyncValue`
/// set the content string on every render — callers using `formal` for
/// uncontrolled forms should pass `InitValue` as a signal of intent, but
/// Lustre will apply the value on each render regardless of which variant is used.
pub type TextareaValue {
  InitValue(String)
  SyncValue(String)
}

pub type TextareaExtraAttrs {
  TextareaExtraAttrs(
    id: String,
    name: String,
    placeholder: String,
    rows: Option(Int),
    disabled: Bool,
    required: Bool,
    class: String,
  )
}

pub const default_extra_attrs = TextareaExtraAttrs("", "", "", None, False, False, "")

/// Fully customizable textarea.
///
/// Example:
/// ```gleam
/// textarea_full(None, on_input: Some(UserTyped), extra_attrs: default_extra_attrs)
/// ```
pub fn textarea_full(
  value: Option(TextareaValue),
  on_input on_input: Option(fn(String) -> msg),
  extra_attrs extra_attrs: TextareaExtraAttrs,
) -> Element(msg) {
  let TextareaExtraAttrs(id:, name:, placeholder:, rows:, disabled:, required:, class:) =
    extra_attrs
  let content = case value {
    None -> ""
    Some(InitValue(v)) -> v
    Some(SyncValue(v)) -> v
  }
  let on_input_attr = case on_input {
    None -> a.none()
    Some(handler) -> e.on_input(handler)
  }
  let id_attr = case id {
    "" -> a.none()
    v -> a.id(v)
  }
  let name_attr = case name {
    "" -> a.none()
    v -> a.name(v)
  }
  let placeholder_attr = case placeholder {
    "" -> a.none()
    v -> a.placeholder(v)
  }
  let rows_attr = case rows {
    None -> a.none()
    Some(n) -> a.rows(n)
  }
  let disabled_attr = case disabled {
    False -> a.none()
    True -> a.disabled(True)
  }
  let required_attr = case required {
    False -> a.none()
    True -> a.required(True)
  }
  let extra_class = case class {
    "" -> a.none()
    c -> a.class(c)
  }
  h.textarea(
    [
      a.class(class_input),
      on_input_attr,
      id_attr,
      name_attr,
      placeholder_attr,
      rows_attr,
      disabled_attr,
      required_attr,
      extra_class,
    ],
    content,
  )
}

pub fn textarea_simple(
  placeholder: String,
  on_input: fn(String) -> msg,
) -> Element(msg) {
  textarea_full(
    None,
    on_input: Some(on_input),
    extra_attrs: TextareaExtraAttrs("", "", placeholder, None, False, False, ""),
  )
}
