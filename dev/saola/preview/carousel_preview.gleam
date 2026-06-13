import gleam/int
import gleam/json
import gleam/list
import gleam/option.{None, Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/button
import saola/component/carousel
import saola/preview/model.{
  type Message, type Model, CarouselHasChanged, CarouselHorizontalMessage,
  CarouselNavNextClicked, CarouselNavPrevClicked, CarouselVerticalMessage,
}

const slide_class = "carousel-slide-demo"

pub fn view(model: Model) -> Element(Message) {
  let slides = [
    h.div([a.class(slide_class)], [h.span([], [text("Slide 1")])]),
    h.div([a.class(slide_class)], [h.span([], [text("Slide 2")])]),
    h.div([a.class(slide_class)], [h.span([], [text("Slide 3")])]),
  ]
  let total = list.length(slides)
  let h_state = model.carousel_horizontal
  let v_state = model.carousel_vertical
  h.div([], [
    h.h1([a.class("page-title")], [text("Carousel")]),
    h.p([a.class("page-description")], [
      text("Scroll-snap carousel. Swipe, scroll, or use the controls."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Horizontal")]),
        render_nav(
          h_state.has_prev,
          h_state.has_next,
          h_state.index,
          total,
          CarouselHorizontalMessage(CarouselNavPrevClicked),
          CarouselHorizontalMessage(CarouselNavNextClicked),
          False,
        ),
        h.div([a.style("width", "400px")], [
          carousel.element(
            [
              a.class("carousel-root"),
              a.property("target-index", json.int(h_state.index)),
              carousel.on_change(fn(index, has_prev, has_next) {
                CarouselHorizontalMessage(CarouselHasChanged(
                  index,
                  has_prev,
                  has_next,
                ))
              }),
            ],
            slides,
          ),
        ]),
        render_dots(h_state.index, total),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Vertical")]),
        render_nav(
          v_state.has_prev,
          v_state.has_next,
          v_state.index,
          total,
          CarouselVerticalMessage(CarouselNavPrevClicked),
          CarouselVerticalMessage(CarouselNavNextClicked),
          True,
        ),
        h.div([a.style("width", "400px"), a.style("height", "250px")], [
          carousel.element(
            [
              a.class("carousel-root"),
              a.attribute("orientation", "vertical"),
              a.property("target-index", json.int(v_state.index)),
              carousel.on_change(fn(index, has_prev, has_next) {
                CarouselVerticalMessage(CarouselHasChanged(
                  index,
                  has_prev,
                  has_next,
                ))
              }),
            ],
            slides,
          ),
        ]),
      ]),
    ]),
  ])
}

fn render_nav(
  can_prev: Bool,
  can_next: Bool,
  index: Int,
  total: Int,
  prev_msg: Message,
  next_msg: Message,
  vertical: Bool,
) -> Element(Message) {
  let #(prev_label, next_label) = case vertical {
    True -> #("↑ Prev", "Next ↓")
    False -> #("← Prev", "Next →")
  }
  h.div([a.class("flex items-center gap-2")], [
    button.button(
      button.Outline,
      prev_label,
      button.Small,
      None,
      Some(prev_msg),
      button.ButtonExtraAttrs(
        disabled: !can_prev,
        type_: Some(button.Regular),
        aria: button.default_aria,
      ),
    ),
    h.span([a.class("text-sm text-muted-foreground flex-1 text-center")], [
      text(int.to_string(index + 1) <> " / " <> int.to_string(total)),
    ]),
    button.button(
      button.Outline,
      next_label,
      button.Small,
      None,
      Some(next_msg),
      button.ButtonExtraAttrs(
        disabled: !can_next,
        type_: Some(button.Regular),
        aria: button.default_aria,
      ),
    ),
  ])
}

fn render_dots(current: Int, total: Int) -> Element(Message) {
  h.div(
    [a.class("flex gap-2 justify-center")],
    list.index_map(list.repeat(Nil, total), fn(_, i) {
      h.div(
        [
          case i == current {
            True -> a.class("w-2 h-2 rounded-full bg-foreground")
            False -> a.class("w-2 h-2 rounded-full bg-muted")
          },
        ],
        [],
      )
    }),
  )
}
