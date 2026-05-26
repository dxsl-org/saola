import gleam/int
import gleam/option.{Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Message, type Model, RatingChanged}
import saola/rating

pub fn view_ratings(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Rating")]),
    h.p([a.class("page-description")], [
      text("A star rating widget with read-only and interactive modes."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Read-only")]),
        h.div([a.class("flex gap-4")], [
          rating.rating_readonly(0),
          rating.rating_readonly(2),
          rating.rating_readonly(4),
          rating.rating_readonly(5),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Interactive")]),
        rating.rating_interactive(model.rating_value, RatingChanged),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Custom max (10 stars)")]),
        rating.rating_full(
          model.rating_value,
          rating.Interactive,
          Some(RatingChanged),
          rating.RatingAttrs(max: 10, class: "", aria_label: "Rating"),
        ),
      ]),
      h.div([a.class("mt-4")], [
        h.p([a.class("text-muted-foreground text-sm")], [
          text("Current value: " <> int.to_string(model.rating_value)),
        ]),
      ]),
    ]),
  ])
}
