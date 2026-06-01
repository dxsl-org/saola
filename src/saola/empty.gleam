import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

pub type EmptyMediaVariant {
  Default
  Icon
}

pub fn empty_full(
  media media: Option(Element(msg)),
  media_variant media_variant: EmptyMediaVariant,
  title title: String,
  description description: List(Element(msg)),
  content content: List(Element(msg)),
  class class: String,
) -> Element(msg) {
  let root_class = case class {
    "" -> "empty"
    c -> "empty " <> c
  }
  let media_el = case media {
    None -> element.none()
    Some(m) -> {
      let mc = case media_variant {
        Default -> "empty-media"
        Icon -> "empty-media empty-media-icon"
      }
      h.div([a.class(mc)], [m])
    }
  }
  let title_el = case title {
    "" -> element.none()
    t -> h.h2([a.class("empty-title")], [h.text(t)])
  }
  let desc_el = case description {
    [] -> element.none()
    children -> h.p([a.class("empty-description")], children)
  }
  let header_el = case media, title, description {
    None, "", [] -> element.none()
    _, _, _ -> h.div([a.class("empty-header")], [media_el, title_el, desc_el])
  }
  let content_el = case content {
    [] -> element.none()
    children -> h.div([a.class("empty-content")], children)
  }
  h.div([a.class(root_class)], [header_el, content_el])
}

pub fn empty_simple(
  icon: Option(Element(msg)),
  title: String,
  description: String,
  action: Option(Element(msg)),
) -> Element(msg) {
  let desc_children = case description {
    "" -> []
    t -> [h.text(t)]
  }
  let content_children = case action {
    None -> []
    Some(act) -> [act]
  }
  empty_full(
    media: icon,
    media_variant: Icon,
    title: title,
    description: desc_children,
    content: content_children,
    class: "",
  )
}
