import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

pub type AlertVariant {
  Default
  Destructive
}

/// Render a fully customizable alert.
///
/// The `icon` appears as an SVG in the left column.
/// `title` maps to `<h2>` (omitted when empty).
/// `description` maps to `<section><p>` (omitted when empty).
///
/// Example:
/// ```gleam
/// alert_full(Default, title: "Heads up!", description: "You can change this.", icon: None)
/// alert_full(Destructive, title: "Error", description: "Something went wrong.", icon: Some(lt.triangle_alert([])))
/// ```
pub fn alert_full(
  variant: AlertVariant,
  title title: String,
  description description: String,
  icon icon: Option(Element(msg)),
) -> Element(msg) {
  let css = case variant {
    Default -> "alert"
    Destructive -> "alert-destructive"
  }
  let icon_el = case icon {
    None -> element.none()
    Some(i) -> i
  }
  let title_el = case title {
    "" -> element.none()
    t -> h.h2([], [h.text(t)])
  }
  let desc_el = case description {
    "" -> element.none()
    d -> h.section([], [h.p([], [h.text(d)])])
  }
  h.div([a.class(css), a.role("alert")], [icon_el, title_el, desc_el])
}

pub fn alert_default(description: String) -> Element(msg) {
  alert_full(Default, title: "", description: description, icon: None)
}

pub fn alert_destructive(title: String, description: String) -> Element(msg) {
  alert_full(Destructive, title: title, description: description, icon: None)
}
