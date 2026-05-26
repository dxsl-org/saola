import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/carousel
import saola/preview/model.{type Message, type Model, CarouselChanged}

pub fn view_carousels(model: Model) -> Element(Message) {
  let slides = [
    h.div([a.class("carousel-slide-demo")], [h.span([], [text("Slide 1")])]),
    h.div([a.class("carousel-slide-demo")], [h.span([], [text("Slide 2")])]),
    h.div([a.class("carousel-slide-demo")], [h.span([], [text("Slide 3")])]),
  ]
  h.div([], [
    h.h1([a.class("page-title")], [text("Carousel")]),
    h.p([a.class("page-description")], [
      text(
        "Scroll-snap carousel wrapping a web component. Swipe or scroll to navigate.",
      ),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Horizontal (default)")]),
        h.div([a.style("width", "400px")], [
          carousel.carousel_simple(
            slides,
            model.carousel_index,
            fn(idx, can_prev, can_next) {
              CarouselChanged(idx, can_prev, can_next)
            },
          ),
        ]),
        h.p([a.class("text-sm text-muted-foreground")], [
          text(
            "Current: "
            <> {
              case model.carousel_index {
                0 -> "Slide 1"
                1 -> "Slide 2"
                _ -> "Slide 3"
              }
            },
          ),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Vertical")]),
        h.div([a.style("width", "400px; height: 250px")], [
          carousel.carousel_full(
            slides,
            0,
            False,
            True,
            fn(idx, can_prev, can_next) {
              CarouselChanged(idx, can_prev, can_next)
            },
            carousel.CarouselAttrs(
              orientation: carousel.Vertical,
              loop: False,
              class: "",
            ),
          ),
        ]),
      ]),
    ]),
  ])
}
