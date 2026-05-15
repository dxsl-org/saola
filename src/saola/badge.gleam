import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

pub type BadgeVariant {
  Default
  Secondary
  Destructive
  Outline
}

/// Render a badge with the given label and variant.
///
/// Example:
/// ```gleam
/// badge("New", Default)
/// badge("Beta", Secondary)
/// badge("Error", Destructive)
/// badge("Draft", Outline)
/// ```
pub fn badge(label: String, variant: BadgeVariant) -> Element(msg) {
  let css = case variant {
    Default -> "badge"
    Secondary -> "badge-secondary"
    Destructive -> "badge-destructive"
    Outline -> "badge-outline"
  }
  h.span([a.class(css)], [h.text(label)])
}

pub fn badge_default(label: String) -> Element(msg) {
  badge(label, Default)
}

pub fn badge_secondary(label: String) -> Element(msg) {
  badge(label, Secondary)
}

pub fn badge_destructive(label: String) -> Element(msg) {
  badge(label, Destructive)
}

pub fn badge_outline(label: String) -> Element(msg) {
  badge(label, Outline)
}
