import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h

pub type HoverCardSide {
  Top
  Bottom
  Left
  Right
}

pub type HoverCardAttrs {
  HoverCardAttrs(side: HoverCardSide, class: String)
}

pub const default_attrs = HoverCardAttrs(side: Bottom, class: "")

/// Render a hover card — trigger + floating content visible on hover.
/// Since Lustre manages state externally, `open` controls visibility.
/// Wire `on_open`/`on_close` to mouseenter/mouseleave on the trigger element.
pub fn hover_card(
  open: Bool,
  trigger: Element(msg),
  content: Element(msg),
  attrs: HoverCardAttrs,
) -> Element(msg) {
  let side_attr = case attrs.side {
    Top -> a.data("side", "top")
    Bottom -> a.data("side", "bottom")
    Left -> a.data("side", "left")
    Right -> a.data("side", "right")
  }
  let extra_class = case attrs.class {
    "" -> a.none()
    c -> a.class(c)
  }
  h.div([a.class("hover-card-wrapper"), extra_class], [
    trigger,
    case open {
      False -> h.text("")
      True ->
        h.div(
          [
            a.class("hover-card"),
            side_attr,
            a.role("tooltip"),
          ],
          [content],
        )
    },
  ])
}

pub fn hover_card_simple(
  open: Bool,
  trigger: Element(msg),
  content: Element(msg),
) -> Element(msg) {
  hover_card(open, trigger, content, default_attrs)
}
