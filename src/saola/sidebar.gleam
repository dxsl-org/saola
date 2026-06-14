import gleam/list
import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type SidebarSide {
  Left
  Right
}

pub type SidebarCollapsible {
  Offcanvas
  Icon
  SidebarNone
}

pub type SidebarVariant {
  Default
  Floating
  Inset
}

pub type SidebarAttrs {
  SidebarAttrs(
    side: SidebarSide,
    variant: SidebarVariant,
    collapsible: SidebarCollapsible,
    class: String,
  )
}

pub const default_attrs = SidebarAttrs(
  side: Left,
  variant: Default,
  collapsible: Offcanvas,
  class: "",
)

pub type SidebarMenuItemAttrs {
  SidebarMenuItemAttrs(badge: String, class: String)
}

pub const default_menu_item_attrs = SidebarMenuItemAttrs(badge: "", class: "")

// ── Sub-elements ─────────────────────────────────────────────────────────────

pub fn sidebar_header(children: List(Element(msg))) -> Element(msg) {
  h.div([a.class("sidebar-header")], children)
}

pub fn sidebar_footer(children: List(Element(msg))) -> Element(msg) {
  h.div([a.class("sidebar-footer")], children)
}

pub fn sidebar_content(children: List(Element(msg))) -> Element(msg) {
  h.div([a.class("sidebar-content")], children)
}

pub fn sidebar_group(
  label: Option(String),
  children: List(Element(msg)),
) -> Element(msg) {
  h.nav([a.class("sidebar-group")], [
    case label {
      None -> h.text("")
      Some(l) -> h.div([a.class("sidebar-group-label")], [h.text(l)])
    },
    h.ul([a.class("sidebar-menu")], children),
  ])
}

pub fn sidebar_menu_item(
  label: String,
  href: String,
  icon: Option(Element(msg)),
  active: Bool,
  attrs: SidebarMenuItemAttrs,
) -> Element(msg) {
  let btn_class = case active {
    True -> "sidebar-menu-button sidebar-menu-button-active"
    False -> "sidebar-menu-button"
  }
  let extra_class = case attrs.class {
    "" -> a.none()
    c -> a.class(c)
  }
  h.li([a.class("sidebar-menu-item"), extra_class], [
    h.a([a.href(href), a.class(btn_class)], [
      case icon {
        None -> h.text("")
        Some(i) -> h.span([a.class("sidebar-menu-icon")], [i])
      },
      h.span([a.class("sidebar-menu-label")], [h.text(label)]),
      case attrs.badge {
        "" -> h.text("")
        b ->
          h.span([a.class("sidebar-menu-badge"), a.aria_label(b)], [
            h.text(b),
          ])
      },
    ]),
  ])
}

pub fn sidebar_trigger(on_click: msg) -> Element(msg) {
  h.button(
    [
      a.type_("button"),
      a.class("sidebar-trigger"),
      a.aria_label("Toggle sidebar"),
      e.on_click(on_click),
    ],
    [h.text("☰")],
  )
}

// ── Main widget ───────────────────────────────────────────────────────────────

pub fn sidebar(
  open: Bool,
  header: Option(Element(msg)),
  content: Element(msg),
  footer: Option(Element(msg)),
  attrs: SidebarAttrs,
) -> Element(msg) {
  let side_class = case attrs.side {
    Left -> "sidebar-left"
    Right -> "sidebar-right"
  }
  let variant_class = case attrs.variant {
    Default -> ""
    Floating -> " sidebar-floating"
    Inset -> " sidebar-inset"
  }
  let collapsible_class = case attrs.collapsible {
    Offcanvas -> " sidebar-collapsible-offcanvas"
    Icon -> " sidebar-collapsible-icon"
    SidebarNone -> ""
  }
  let open_class = case open {
    True -> " sidebar-open"
    False -> " sidebar-closed"
  }
  let extra_class = case attrs.class {
    "" -> a.none()
    c -> a.class(c)
  }
  let full_class =
    "sidebar " <> side_class <> variant_class <> collapsible_class <> open_class
  h.aside(
    [a.class(full_class), a.aria_label("Sidebar"), extra_class],
    list.flatten([
      [
        case header {
          None -> h.text("")
          Some(hdr) -> hdr
        },
      ],
      [content],
      [
        case footer {
          None -> h.text("")
          Some(ftr) -> ftr
        },
      ],
    ]),
  )
}

pub fn sidebar_simple(open: Bool, content: Element(msg)) -> Element(msg) {
  sidebar(open, None, content, None, default_attrs)
}
