import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

pub type ItemVariant {
  Default
  Outline
  Muted
}

pub type ItemSize {
  Large
  Small
}

pub type ItemMediaVariant {
  MediaDefault
  MediaIcon
  MediaImage
}

fn variant_class(v: ItemVariant) -> String {
  case v {
    Default -> "item-default"
    Outline -> "item-outline"
    Muted -> "item-muted"
  }
}

fn size_class(s: ItemSize) -> String {
  case s {
    Large -> "item-lg"
    Small -> "item-sm"
  }
}

fn media_class(v: ItemMediaVariant) -> String {
  case v {
    MediaDefault -> "item-media"
    MediaIcon -> "item-media item-media-icon"
    MediaImage -> "item-media item-media-image"
  }
}

fn root_class(variant: ItemVariant, size: ItemSize, extra: String) -> String {
  let base = "item " <> variant_class(variant) <> " " <> size_class(size)
  case extra {
    "" -> base
    c -> base <> " " <> c
  }
}

fn item_body(
  media: Option(Element(msg)),
  media_variant: ItemMediaVariant,
  title: String,
  description: String,
  actions: List(Element(msg)),
) -> List(Element(msg)) {
  let media_el = case media {
    None -> element.none()
    Some(m) -> h.div([a.class(media_class(media_variant))], [m])
  }
  let title_el = case title {
    "" -> element.none()
    t -> h.div([a.class("item-title")], [h.text(t)])
  }
  let desc_el = case description {
    "" -> element.none()
    d -> h.p([a.class("item-description")], [h.text(d)])
  }
  let content_el = case title, description {
    "", "" -> element.none()
    _, _ -> h.div([a.class("item-content")], [title_el, desc_el])
  }
  let actions_el = case actions {
    [] -> element.none()
    acts -> h.div([a.class("item-actions")], acts)
  }
  [media_el, content_el, actions_el]
}

pub fn item_full(
  variant variant: ItemVariant,
  size size: ItemSize,
  media media: Option(Element(msg)),
  media_variant media_variant: ItemMediaVariant,
  title title: String,
  description description: String,
  actions actions: List(Element(msg)),
  class class: String,
) -> Element(msg) {
  let cls = root_class(variant, size, class)
  let body = item_body(media, media_variant, title, description, actions)
  h.div([a.class(cls)], body)
}

pub fn item_simple(
  title: String,
  description: String,
  action: Option(Element(msg)),
) -> Element(msg) {
  let actions = case action {
    None -> []
    Some(act) -> [act]
  }
  item_full(
    variant: Default,
    size: Large,
    media: None,
    media_variant: MediaDefault,
    title: title,
    description: description,
    actions: actions,
    class: "",
  )
}

pub fn item_link(
  href href: String,
  title title: String,
  description description: String,
  action action: Option(Element(msg)),
  class class: String,
) -> Element(msg) {
  let cls = root_class(Default, Large, class)
  let actions = case action {
    None -> []
    Some(act) -> [act]
  }
  let body = item_body(None, MediaDefault, title, description, actions)
  h.a([a.class(cls), a.href(href)], body)
}

pub fn item_group(children: List(Element(msg))) -> Element(msg) {
  h.div([a.role("list"), a.class("item-group")], children)
}

pub fn item_separator() -> Element(msg) {
  h.hr([a.role("separator"), a.class("item-separator")])
}
