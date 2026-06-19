import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

/// Render a card. Uses semantic HTML structure: `<header>`, `<section>`, `<footer>`.
pub fn card(
  title title: String,
  description description: String,
  content content: List(Element(msg)),
  footer footer: Option(Element(msg)),
) -> Element(msg) {
  let header_el = case title, description {
    "", "" -> element.none()
    _, _ -> {
      let title_el = case title {
        "" -> element.none()
        t -> h.h2([], [h.text(t)])
      }
      let desc_el = case description {
        "" -> element.none()
        d -> h.p([], [h.text(d)])
      }
      h.header([], [title_el, desc_el])
    }
  }
  let content_el = case content {
    [] -> element.none()
    children -> h.section([], children)
  }
  let footer_el = case footer {
    None -> element.none()
    Some(f) -> h.footer([], [f])
  }
  h.div([a.class("card")], [header_el, content_el, footer_el])
}

/// Render a card with a title and content only.
pub fn card_simple(title: String, content: List(Element(msg))) -> Element(msg) {
  card(title: title, description: "", content: content, footer: None)
}
