import gleam/list
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type MenubarItem(msg) {
  MenubarItem(label: String, items: List(MenubarSubItem(msg)))
  MenubarItemDisabled(label: String)
}

pub type MenubarSubItem(msg) {
  MenubarSubItem(label: String, on_click: msg)
  MenubarSubItemDisabled(label: String)
  MenubarSeparator
}

pub type MenubarAttrs {
  MenubarAttrs(class: String)
}

pub const default_attrs = MenubarAttrs(class: "")

pub fn menubar(
  items: List(MenubarItem(msg)),
  open_menu: String,
  on_open: fn(String) -> msg,
  on_close: fn() -> msg,
  attrs: MenubarAttrs,
) -> Element(msg) {
  let extra_class = case attrs.class {
    "" -> a.none()
    c -> a.class(c)
  }
  h.div(
    [a.class("menubar"), extra_class, a.role("menubar")],
    list.map(items, fn(item) {
      case item {
        MenubarItemDisabled(label) ->
          h.button(
            [a.type_("button"), a.class("menubar-trigger"), a.disabled(True)],
            [h.text(label)],
          )
        MenubarItem(label, sub_items) -> {
          let is_open = open_menu == label
          h.div([a.class("menubar-menu")], [
            h.button(
              [
                a.type_("button"),
                a.class("menubar-trigger"),
                a.aria_haspopup("menu"),
                a.aria_expanded(is_open),
                e.on_click(case is_open {
                  True -> on_close()
                  False -> on_open(label)
                }),
              ],
              [h.text(label)],
            ),
            case is_open {
              False -> h.text("")
              True ->
                h.div(
                  [a.class("dropdown-menu"), a.role("menu")],
                  list.map(sub_items, fn(sub) {
                    case sub {
                      MenubarSeparator ->
                        h.div(
                          [a.class("dropdown-separator"), a.role("separator")],
                          [],
                        )
                      MenubarSubItemDisabled(l) ->
                        h.div(
                          [
                            a.class("dropdown-item"),
                            a.aria_disabled(True),
                          ],
                          [h.text(l)],
                        )
                      MenubarSubItem(l, click_msg) ->
                        h.button(
                          [
                            a.type_("button"),
                            a.class("dropdown-item"),
                            a.role("menuitem"),
                            e.on_click(click_msg),
                          ],
                          [h.text(l)],
                        )
                    }
                  }),
                )
            },
          ])
        }
      }
    }),
  )
}

pub fn menubar_simple(
  items: List(MenubarItem(msg)),
  open_menu: String,
  on_open: fn(String) -> msg,
  on_close: fn() -> msg,
) -> Element(msg) {
  menubar(items, open_menu, on_open, on_close, default_attrs)
}
