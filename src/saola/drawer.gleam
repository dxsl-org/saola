import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type DrawerSide {
  Bottom
  Top
  Left
  Right
}

pub type DrawerAttrs {
  DrawerAttrs(side: DrawerSide, class: String)
}

pub const default_attrs = DrawerAttrs(side: Bottom, class: "")

pub fn drawer(
  open: Bool,
  title: String,
  description: Option(String),
  content: Element(msg),
  footer: Option(Element(msg)),
  on_close: fn() -> msg,
  attrs: DrawerAttrs,
) -> Element(msg) {
  case open {
    False -> h.text("")
    True -> {
      let side_class = case attrs.side {
        Bottom -> "drawer drawer-bottom"
        Top -> "drawer drawer-top"
        Left -> "drawer drawer-left"
        Right -> "drawer drawer-right"
      }
      let full_class = case attrs.class {
        "" -> side_class
        c -> side_class <> " " <> c
      }
      let show_handle = case attrs.side {
        Bottom | Top -> True
        Left | Right -> False
      }
      h.div([a.class("drawer-root")], [
        h.div([a.class("drawer-backdrop"), e.on_click(on_close())], []),
        h.div(
          [
            a.class(full_class),
            a.role("dialog"),
            a.aria_modal(True),
            a.aria_labelledby("drawer-title"),
          ],
          [
            case show_handle {
              True -> h.div([a.class("drawer-handle")], [])
              False -> h.text("")
            },
            h.div([a.class("drawer-header")], [
              h.h2([a.class("drawer-title"), a.id("drawer-title")], [
                h.text(title),
              ]),
              case description {
                None -> h.text("")
                Some(d) -> h.p([a.class("drawer-description")], [h.text(d)])
              },
            ]),
            h.div([a.class("drawer-content")], [content]),
            case footer {
              None -> h.text("")
              Some(f) -> h.div([a.class("drawer-footer")], [f])
            },
          ],
        ),
      ])
    }
  }
}

pub fn drawer_simple(
  open: Bool,
  title: String,
  content: Element(msg),
  on_close: fn() -> msg,
) -> Element(msg) {
  drawer(open, title, None, content, None, on_close, default_attrs)
}
