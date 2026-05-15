import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/badge
import saola/preview/model.{type Msg}

pub fn view_badges() -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Badges")]),
    h.p([a.class("page-description")], [
      text("Inline labels to highlight status or category."),
    ]),
    h.div([a.class("flex gap-3 flex-wrap mt-4")], [
      badge.badge_default("Default"),
      badge.badge_secondary("Secondary"),
      badge.badge_destructive("Destructive"),
      badge.badge_outline("Outline"),
    ]),
  ])
}
