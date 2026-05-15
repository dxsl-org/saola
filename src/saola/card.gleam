import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

/// Configuration for the card widget.
pub type CardAttrs(msg) {
  CardAttrs(
    title: String,
    description: String,
    content: List(Element(msg)),
    footer: Option(Element(msg)),
  )
}

pub fn default_card_attrs() -> CardAttrs(msg) {
  CardAttrs(title: "", description: "", content: [], footer: None)
}

/// Render a card. Uses semantic HTML structure: `<header>`, `<section>`, `<footer>`.
///
/// Example:
/// ```gleam
/// card(CardAttrs(title: "Account", description: "Manage your settings.", content: [...], footer: None))
/// ```
pub fn card(attrs: CardAttrs(msg)) -> Element(msg) {
  let header_el = case attrs.title, attrs.description {
    "", "" -> element.none()
    _, _ -> {
      let title_el = case attrs.title {
        "" -> element.none()
        t -> h.h2([], [h.text(t)])
      }
      let desc_el = case attrs.description {
        "" -> element.none()
        d -> h.p([], [h.text(d)])
      }
      h.header([], [title_el, desc_el])
    }
  }
  let content_el = case attrs.content {
    [] -> element.none()
    children -> h.section([], children)
  }
  let footer_el = case attrs.footer {
    None -> element.none()
    Some(f) -> h.footer([], [f])
  }
  h.div([a.class("card")], [header_el, content_el, footer_el])
}

/// Render a card with a title and content only.
pub fn card_simple(title: String, content: List(Element(msg))) -> Element(msg) {
  card(CardAttrs(title: title, description: "", content: content, footer: None))
}
