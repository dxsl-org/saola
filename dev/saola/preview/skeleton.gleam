import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Message}
import saola/skeleton

pub fn view_skeletons() -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Skeleton")]),
    h.p([a.class("page-description")], [
      text("Loading placeholders that pulse while content is fetching."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Text lines")]),
        skeleton.skeleton_text(),
        skeleton.skeleton_text(),
        skeleton.skeleton("skeleton-text" <> " " <> "w-3/4"),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Card skeleton")]),
        h.div([a.class("grid gap-3")], [
          h.div([a.class("flex gap-3 items-center")], [
            skeleton.skeleton_circle(),
            h.div([a.class("grid gap-2 flex-1")], [
              skeleton.skeleton_text(),
              skeleton.skeleton("skeleton-text" <> " " <> "w-1/2"),
            ]),
          ]),
          skeleton.skeleton_text(),
          skeleton.skeleton_text(),
          skeleton.skeleton("skeleton-text" <> " " <> "w-2/3"),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Circle")]),
        h.div([a.class("flex gap-3")], [
          skeleton.skeleton_circle(),
          skeleton.skeleton_circle(),
          skeleton.skeleton_circle(),
        ]),
      ]),
    ]),
  ])
}
