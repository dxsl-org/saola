import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

pub type NavBarVariant {
  Default
  Sticky
  Floating
}

pub type NavBarAttrs {
  NavBarAttrs(class: String)
}

pub const default_attrs = NavBarAttrs(class: "")

/// A horizontal navigation bar with logo, links, and trailing actions.
pub fn nav_bar(
  variant: NavBarVariant,
  logo: Option(Element(msg)),
  links: List(Element(msg)),
  actions: List(Element(msg)),
  attrs: NavBarAttrs,
) -> Element(msg) {
  let variant_class = case variant {
    Default -> "nav-bar"
    Sticky -> "nav-bar nav-bar-sticky"
    Floating -> "nav-bar nav-bar-floating"
  }
  let root_class = case attrs.class {
    "" -> variant_class
    c -> variant_class <> " " <> c
  }
  let logo_el = case logo {
    None -> element.none()
    Some(l) -> h.div([a.class("nav-bar-logo")], [l])
  }
  let links_el = case links {
    [] -> element.none()
    ls -> h.nav([a.class("nav-bar-links"), a.role("navigation")], ls)
  }
  let actions_el = case actions {
    [] -> element.none()
    acts -> h.div([a.class("nav-bar-actions")], acts)
  }
  h.header([a.class(root_class)], [
    h.div([a.class("nav-bar-inner")], [logo_el, links_el, actions_el]),
  ])
}

pub fn nav_bar_simple(
  logo: Option(Element(msg)),
  links: List(Element(msg)),
) -> Element(msg) {
  nav_bar(Default, logo, links, [], default_attrs)
}

/// A single navigation link for use inside `nav_bar_full`.
pub fn nav_bar_link(
  href: String,
  label: String,
  is_active: Bool,
) -> Element(msg) {
  h.a(
    [
      a.href(href),
      a.class(case is_active {
        True -> "nav-bar-link nav-bar-link-active"
        False -> "nav-bar-link"
      }),
      case is_active {
        True -> a.aria_current("page")
        False -> a.none()
      },
    ],
    [h.text(label)],
  )
}
