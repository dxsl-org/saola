import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type SheetSide {
  Top
  Bottom
  Left
  Right
}

pub type SheetAttrs {
  SheetAttrs(side: SheetSide, class: String)
}

pub const default_attrs = SheetAttrs(side: Right, class: "")

pub fn sheet(
  open: Bool,
  title: String,
  content: Element(msg),
  on_close: fn() -> msg,
  attrs: SheetAttrs,
) -> Element(msg) {
  case open {
    False -> h.text("")
    True -> {
      let side_class = case attrs.side {
        Top -> "sheet sheet-top"
        Bottom -> "sheet sheet-bottom"
        Left -> "sheet sheet-left"
        Right -> "sheet sheet-right"
      }
      let full_class = case attrs.class {
        "" -> side_class
        c -> side_class <> " " <> c
      }
      h.div(
        [
          a.class("dialog-overlay"),
          a.aria_modal(True),
        ],
        [
          h.div(
            [
              a.class(full_class),
              a.role("dialog"),
              a.aria_labelledby("sheet-title"),
            ],
            [
              h.div([a.class("sheet-header")], [
                h.h2([a.class("sheet-title"), a.id("sheet-title")], [
                  h.text(title),
                ]),
                h.button(
                  [
                    a.type_("button"),
                    a.class("btn btn-ghost btn-sm"),
                    a.aria_label("Close"),
                    e.on_click(on_close()),
                  ],
                  [h.text("×")],
                ),
              ]),
              h.div([a.class("sheet-content")], [content]),
            ],
          ),
        ],
      )
    }
  }
}

pub fn sheet_simple(
  open: Bool,
  title: String,
  content: Element(msg),
  on_close: fn() -> msg,
) -> Element(msg) {
  sheet(open, title, content, on_close, default_attrs)
}
