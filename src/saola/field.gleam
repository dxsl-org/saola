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
    required: Bool,
    hint: String,
  )
}

pub const default_attrs = FieldAttrs(
  label: "",
  description: "",
  error: "",
  orientation: Vertical,
  required: False,
  hint: "",
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
  let FieldAttrs(label:, description:, error:, orientation:, required:, hint:) =
    attrs
  let is_invalid = error != ""
  h.div(
    [
      a.class(class_field),
      case is_invalid {
        True -> a.data("invalid", "true")
        False -> a.none()
      },
      case orientation {
        Vertical -> a.none()
        Horizontal -> a.data("orientation", "horizontal")
      },
    ],
    [
      case label {
        "" -> element.none()
        l ->
          h.label([a.class("label")], [
            h.text(l),
            case required {
              True ->
                h.span(
                  [
                    a.class("field-required"),
                    a.aria_hidden(True),
                  ],
                  [h.text(" *")],
                )
              False -> element.none()
            },
          ])
      },
      input,
      case hint {
        "" -> element.none()
        h_ -> h.p([a.class("field-hint")], [h.text(h_)])
      },
      case description {
        "" -> element.none()
        d -> h.p([a.class("text-muted-foreground text-sm")], [h.text(d)])
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
