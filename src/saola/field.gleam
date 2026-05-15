import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

pub const class_field = "field"

pub type FieldOrientation {
  Vertical
  Horizontal
}

pub type FieldAttrs {
  FieldAttrs(
    label: String,
    description: String,
    error: String,
    orientation: FieldOrientation,
  )
}

pub const default_attrs = FieldAttrs(
  label: "",
  description: "",
  error: "",
  orientation: Vertical,
)

/// Wraps an input with a label, optional description, and optional error message.
///
/// Example:
/// ```gleam
/// field(
///   FieldAttrs(label: "Email", description: "We won't spam.", error: "", orientation: Vertical),
///   input.input_email("you@example.com", EmailChanged),
/// )
/// ```
pub fn field(attrs: FieldAttrs, input: Element(msg)) -> Element(msg) {
  let FieldAttrs(label:, description:, error:, orientation:) = attrs
  let is_invalid = error != ""
  h.div(
    [
      a.class(class_field),
      case is_invalid {
        True -> a.attribute("data-invalid", "true")
        False -> a.none()
      },
      case orientation {
        Vertical -> a.none()
        Horizontal -> a.attribute("data-orientation", "horizontal")
      },
    ],
    [
      case label {
        "" -> element.none()
        l -> h.label([a.class("label")], [h.text(l)])
      },
      input,
      case description {
        "" -> element.none()
        d ->
          h.p([a.class("text-muted-foreground text-sm")], [h.text(d)])
      },
      case error {
        "" -> element.none()
        err -> h.p([a.role("alert")], [h.text(err)])
      },
    ],
  )
}

pub fn field_simple(label: String, input: Element(msg)) -> Element(msg) {
  field(FieldAttrs(..default_attrs, label: label), input)
}
