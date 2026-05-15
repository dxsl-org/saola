import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/button
import saola/preview/model.{type Msg, Home, OnRouteChange}
import saola/tooltip

pub fn view_tooltips() -> Element(Msg) {
  let noop = OnRouteChange(Home)
  h.div([], [
    h.h1([a.class("page-title")], [text("Tooltip")]),
    h.p([a.class("page-description")], [
      text("CSS-only tooltips via the data-tooltip attribute. No JavaScript."),
    ]),
    h.div([a.class("mt-4 flex flex-wrap gap-6 items-center")], [
      tooltip.tooltip(
        "Default tooltip — top",
        button.button_primary("Hover me (top)", noop),
      ),
      tooltip.tooltip_side(
        "Appears below",
        tooltip.Bottom,
        button.button_primary("Hover me (bottom)", noop),
      ),
      tooltip.tooltip_side(
        "Appears to the left",
        tooltip.Left,
        button.button_primary("Hover me (left)", noop),
      ),
      tooltip.tooltip_side(
        "Appears to the right",
        tooltip.Right,
        button.button_primary("Hover me (right)", noop),
      ),
    ]),
    h.div([a.class("mt-6")], [
      h.h2([], [text("Using attributes directly")]),
      h.p([a.class("mt-2 text-sm text-muted-foreground")], [
        text(
          "Apply tooltip.attr() directly when you own the element's attribute list.",
        ),
      ]),
      h.div([a.class("mt-4 flex gap-4")], [
        h.button(
          [tooltip.attr("Plain HTML button tooltip"), a.class("btn-lg-outline")],
          [text("Plain button")],
        ),
      ]),
    ]),
  ])
}
