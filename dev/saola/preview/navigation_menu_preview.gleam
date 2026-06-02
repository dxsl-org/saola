import gleam/option.{None}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/navigation_menu
import saola/preview/event_helper
import saola/preview/model.{type Message, type Model, NavMenuOpenChanged}

pub fn view(model: Model) -> Element(Message) {
  let items = [
    navigation_menu.NavMenuLink(label: "Home", href: "#", active: True),
    navigation_menu.NavMenuLink(label: "About", href: "#", active: False),
    navigation_menu.NavMenuDropdown(
      label: "Products",
      id: "products",
      content: navigation_menu.NavMenuSimple([
        #("Widget A", "#"),
        #("Widget B", "#"),
        #("Widget C", "#"),
      ]),
    ),
    navigation_menu.NavMenuDropdown(
      label: "Resources",
      id: "resources",
      content: navigation_menu.NavMenuSimple([
        #("Documentation", "#"),
        #("Blog", "#"),
      ]),
    ),
  ]
  h.div([event_helper.on_click_outside(".nav-menu", NavMenuOpenChanged(None))], [
    h.h1([a.class("page-title")], [text("Navigation Menu")]),
    h.p([a.class("page-description")], [
      text(
        "Horizontal nav bar with optional dropdowns. Click a dropdown to open/close.",
      ),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Simple links + dropdowns")]),
        navigation_menu.navigation_menu_simple(
          items,
          model.nav_menu_open,
          NavMenuOpenChanged,
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("All links closed")]),
        navigation_menu.navigation_menu_simple(
          [
            navigation_menu.NavMenuLink(label: "Docs", href: "#", active: False),
            navigation_menu.NavMenuLink(
              label: "Pricing",
              href: "#",
              active: False,
            ),
            navigation_menu.NavMenuLink(
              label: "Contact",
              href: "#",
              active: False,
            ),
          ],
          None,
          NavMenuOpenChanged,
        ),
      ]),
    ]),
  ])
}
