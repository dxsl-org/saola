import gleam/option.{Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import lustre/event as e
import saola/drawer
import saola/preview/model.{type Message, type Model, DrawerClosed, DrawerOpened}

pub fn view_drawers(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Drawer")]),
    h.p([a.class("page-description")], [
      text("A panel that slides in from the edge of the screen with a handle."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Bottom drawer (default)")]),
        h.button(
          [
            a.type_("button"),
            a.class("btn btn-outline"),
            e.on_click(DrawerOpened),
          ],
          [text("Open drawer")],
        ),
        drawer.drawer_simple(
          model.drawer_open,
          "Drawer title",
          h.div([], [
            h.p([], [text("Drawer content goes here.")]),
            h.p([], [text("It slides up from the bottom edge.")]),
          ]),
          fn() { DrawerClosed },
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("With description and footer")]),
        drawer.drawer_full(
          False,
          "Edit Profile",
          Some("Make changes to your profile here."),
          h.div([], [
            h.p([a.class("text-sm text-muted")], [
              text("Profile form goes here."),
            ]),
          ]),
          Some(
            h.div([a.class("flex gap-2")], [
              h.button([a.type_("button"), a.class("btn btn-outline")], [
                text("Cancel"),
              ]),
              h.button([a.type_("button"), a.class("btn btn-primary")], [
                text("Save"),
              ]),
            ]),
          ),
          fn() { DrawerClosed },
          drawer.default_attrs,
        ),
      ]),
    ]),
  ])
}
