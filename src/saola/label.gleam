import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

pub const class_label = "label"

/// Render a styled label element.
///
/// Example:
/// ```gleam
/// label("Email address", "", "")
/// label("Username", "username-input", "")
/// ```
pub fn label(text: String, for_: String, class: String) -> Element(msg) {
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
  label(text, input_id, "")
}
