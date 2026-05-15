import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

pub const class_label = "label"

pub type LabelExtraAttrs {
  LabelExtraAttrs(for_: String, class: String)
}

pub const default_label_attrs = LabelExtraAttrs("", "")

/// Render a styled label element.
///
/// Example:
/// ```gleam
/// label("Email address", default_label_attrs)
/// label("Username", LabelExtraAttrs(for_: "username-input", class: ""))
/// ```
pub fn label(text: String, extra_attrs: LabelExtraAttrs) -> Element(msg) {
  let LabelExtraAttrs(for_:, class:) = extra_attrs
  let for_attr = case for_ {
    "" -> a.none()
    v -> a.for(v)
  }
  let extra_class = case class {
    "" -> a.none()
    c -> a.class(c)
  }
  h.label([a.class(class_label), for_attr, extra_class], [h.text(text)])
}

/// Shortcut for a label associated with an input by ID.
pub fn label_for(text: String, input_id: String) -> Element(msg) {
  label(text, LabelExtraAttrs(for_: input_id, class: ""))
}
