import gleam/list
import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e
import saola/icon/lc

pub type NavMenuContent(msg) {
  NavMenuSimple(items: List(#(String, String)))
  NavMenuRich(content: Element(msg))
}

pub type NavMenuItem(msg) {
  NavMenuLink(label: String, href: String, active: Bool)
  NavMenuDropdown(label: String, id: String, content: NavMenuContent(msg))
}

pub type NavMenuAttrs {
  NavMenuAttrs(class: String)
}

pub const default_attrs = NavMenuAttrs(class: "")

fn render_simple_panel(items: List(#(String, String))) -> Element(msg) {
  h.ul(
    [a.class("nav-menu-simple-list")],
    list.map(items, fn(pair) {
      let #(label, href) = pair
      h.li([], [
        h.a([a.href(href), a.class("nav-menu-simple-link")], [h.text(label)]),
      ])
    }),
  )
}

fn render_content(content: NavMenuContent(msg)) -> Element(msg) {
  case content {
    NavMenuSimple(items) -> render_simple_panel(items)
    NavMenuRich(el) -> el
  }
}

fn render_item(
  item: NavMenuItem(msg),
  open_id: Option(String),
  on_open_change: fn(Option(String)) -> msg,
) -> Element(msg) {
  case item {
    NavMenuLink(label, href, active) -> {
      let cls = case active {
        True -> "nav-menu-link nav-menu-link-active"
        False -> "nav-menu-link"
      }
      h.li([a.class("nav-menu-item")], [
        h.a([a.href(href), a.class(cls)], [h.text(label)]),
      ])
    }
    NavMenuDropdown(label, id, content) -> {
      let is_open = case open_id {
        Some(o) -> o == id
        None -> False
      }
      let next_open = case is_open {
        True -> None
        False -> Some(id)
      }
      let panel = case is_open {
        False -> element.none()
        True ->
          h.div([a.class("nav-menu-content"), a.role("menu")], [
            render_content(content),
          ])
      }
      h.li([a.class("nav-menu-item")], [
        h.button(
          [
            a.type_("button"),
            a.class("nav-menu-trigger"),
            a.aria_expanded(is_open),
            a.aria_haspopup("true"),
            e.on_click(on_open_change(next_open)),
          ],
          [
            h.text(label),
            lc.chevron_down([a.class("nav-menu-trigger-icon")]),
          ],
        ),
        panel,
      ])
    }
  }
}

pub fn navigation_menu(
  items: List(NavMenuItem(msg)),
  open_id: Option(String),
  on_open_change: fn(Option(String)) -> msg,
  attrs: NavMenuAttrs,
) -> Element(msg) {
  let extra_class = case attrs.class {
    "" -> a.none()
    c -> a.class(c)
  }
  h.nav([a.class("nav-menu"), a.aria_label("Main"), extra_class], [
    h.ul(
      [a.class("nav-menu-list")],
      list.map(items, fn(i) { render_item(i, open_id, on_open_change) }),
    ),
  ])
}

pub fn navigation_menu_simple(
  items: List(NavMenuItem(msg)),
  open_id: Option(String),
  on_open_change: fn(Option(String)) -> msg,
) -> Element(msg) {
  navigation_menu(items, open_id, on_open_change, default_attrs)
}
