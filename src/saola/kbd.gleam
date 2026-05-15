import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

/// Render a keyboard key.
///
/// Example:
/// ```gleam
/// kbd("⌘K")
/// kbd("Ctrl+S")
/// ```
pub fn kbd(key: String) -> Element(msg) {
  h.kbd([a.class("kbd")], [h.text(key)])
}
