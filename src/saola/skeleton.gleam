import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

/// Render a skeleton loading placeholder.
///
/// `class` should control the shape/size — add `skeleton-text`, `skeleton-circle`,
/// or any sizing utility class (e.g. `"w-48 h-4"`).
///
/// Example:
/// ```gleam
/// skeleton("")         // block skeleton
/// skeleton_text()      // full-width text line
/// skeleton_circle()    // circular avatar placeholder
/// ```
pub fn skeleton(class: String) -> Element(msg) {
  let extra_class = case class {
    "" -> a.none()
    c -> a.class(c)
  }
  h.div(
    [
      a.class("skeleton"),
      extra_class,
      a.role("status"),
      a.aria_busy(True),
      a.aria_live("polite"),
    ],
    [h.span([a.aria_hidden(True)], [])],
  )
}

/// A full-width skeleton line (for text placeholders).
pub fn skeleton_text() -> Element(msg) {
  skeleton("skeleton-text")
}

/// A circular skeleton (for avatar placeholders).
pub fn skeleton_circle() -> Element(msg) {
  skeleton("skeleton-circle")
}
