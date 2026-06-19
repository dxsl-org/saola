import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Message}
import saola/progress

pub fn view() -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Progress")]),
    h.p([a.class("page-description")], [
      text("Accessible progress bars with ARIA attributes."),
    ]),
    h.div([a.class("grid gap-6")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Default")]),
        progress.progress_simple(0),
        progress.progress_simple(30),
        progress.progress_simple(65),
        progress.progress_simple(100),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Variants")]),
        progress.progress(
          50,
          progress.Default,
          progress.ProgressAttrs(..progress.default_attrs, label: "Loading…"),
        ),
        progress.progress(
          75,
          progress.Success,
          progress.ProgressAttrs(
            ..progress.default_attrs,
            label: "75% complete",
          ),
        ),
        progress.progress(
          25,
          progress.Destructive,
          progress.ProgressAttrs(
            ..progress.default_attrs,
            label: "Error — 25% processed",
          ),
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Custom range (0–5 steps)")]),
        progress.progress(
          3,
          progress.Default,
          progress.ProgressAttrs(
            min: 0,
            max: 5,
            label: "Step 3 of 5",
            class: "",
          ),
        ),
      ]),
    ]),
  ])
}
