import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/menubar
import saola/preview/model.{
  type Message, type Model, MenubarClosed, MenubarOpened,
}

pub fn view(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Menubar")]),
    h.p([a.class("page-description")], [
      text("A horizontal menu bar with dropdown submenus."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Default")]),
        menubar.menubar_simple(
          [
            menubar.MenubarItem("File", [
              menubar.MenubarSubItem("New", MenubarClosed),
              menubar.MenubarSubItem("Open", MenubarClosed),
              menubar.MenubarSeparator,
              menubar.MenubarSubItem("Save", MenubarClosed),
              menubar.MenubarSubItemDisabled("Save As"),
            ]),
            menubar.MenubarItem("Edit", [
              menubar.MenubarSubItem("Undo", MenubarClosed),
              menubar.MenubarSubItem("Redo", MenubarClosed),
              menubar.MenubarSeparator,
              menubar.MenubarSubItem("Cut", MenubarClosed),
              menubar.MenubarSubItem("Copy", MenubarClosed),
            ]),
            menubar.MenubarItemDisabled("View"),
          ],
          model.menubar_open,
          MenubarOpened,
          fn() { MenubarClosed },
        ),
      ]),
    ]),
  ])
}
