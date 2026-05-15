import lustre/attribute.{type Attribute} as a
import lustre/element.{type Element}
import lustre/element/html as h

pub type TooltipSide {
  Top
  Bottom
  Left
  Right
}

/// Add a CSS-only tooltip to any element via the data-tooltip attribute.
///
/// Example:
/// ```gleam
/// h.button([tooltip.attr("Save file"), e.on_click(Save)], [text("Save")])
/// ```
pub fn attr(text: String) -> Attribute(msg) {
  a.attribute("data-tooltip", text)
}

/// Add a tooltip with explicit positioning.
pub fn side_attr(side: TooltipSide) -> Attribute(msg) {
  a.attribute("data-side", case side {
    Top -> "top"
    Bottom -> "bottom"
    Left -> "left"
    Right -> "right"
  })
}

/// Wrap a child element in a span with a tooltip.
/// Use this when you cannot add attributes directly to the child element.
pub fn tooltip(text: String, child: Element(msg)) -> Element(msg) {
  h.span([a.attribute("data-tooltip", text)], [child])
}

/// Wrap with explicit tooltip side.
pub fn tooltip_side(
  text: String,
  side: TooltipSide,
  child: Element(msg),
) -> Element(msg) {
  h.span(
    [
      a.attribute("data-tooltip", text),
      a.attribute("data-side", case side {
        Top -> "top"
        Bottom -> "bottom"
        Left -> "left"
        Right -> "right"
      }),
    ],
    [child],
  )
}
