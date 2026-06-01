import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type PopoverSide {
  Top
  Bottom
  Left
  Right
}

pub fn popover_full(
  open: Bool,
  trigger: Element(msg),
  content: Element(msg),
  on_close: fn() -> msg,
  side: PopoverSide,
  class: String,
) -> Element(msg) {
  let side_attr = case side {
    Top -> a.attribute("data-side", "top")
    Bottom -> a.attribute("data-side", "bottom")
    Left -> a.attribute("data-side", "left")
    Right -> a.attribute("data-side", "right")
  }
  let extra_class = case class {
    "" -> a.none()
    c -> a.class(c)
  }
  h.div([a.class("popover-wrapper"), extra_class], [
    trigger,
    case open {
      False -> h.text("")
      True ->
        h.div(
          [
            a.class("popover"),
            side_attr,
            a.attribute("data-popover", ""),
            a.attribute("role", "dialog"),
          ],
          [
            content,
            h.button(
              [
                a.type_("button"),
                a.class("popover-close"),
                a.attribute("aria-label", "Close"),
                e.on_click(on_close()),
              ],
              [h.text("×")],
            ),
          ],
        )
    },
  ])
}

pub fn popover_simple(
  open: Bool,
  trigger: Element(msg),
  content: Element(msg),
  on_close: fn() -> msg,
) -> Element(msg) {
  popover_full(open, trigger, content, on_close, Bottom, "")
}
