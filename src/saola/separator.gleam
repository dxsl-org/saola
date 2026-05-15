import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

/// A horizontal rule used as a visual divider.
pub fn separator() -> Element(msg) {
  h.hr([a.role("separator")])
}

/// A vertical rule. Use inside flex rows.
pub fn separator_vertical() -> Element(msg) {
  h.hr([a.role("separator"), a.attribute("aria-orientation", "vertical")])
}
