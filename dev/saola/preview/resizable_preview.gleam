import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/component/resizable_split as rp
import saola/preview/model.{type Message, type Model, ResizableSizesChanged}

pub fn view(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Resizable")]),
    h.p([a.class("page-description")], [text("Drag-to-resize split panels.")]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Horizontal (two panes)")]),
        h.div([a.style("height", "200px")], [
          rp.element(
            [
              a.class("resizable-root"),
              rp.direction(rp.Horizontal),
              rp.sizes(model.resizable_sizes),
              rp.min_sizes([20.0, 20.0]),
              rp.on_resize(fn(sizes) { ResizableSizesChanged(sizes) }),
            ],
            [
              rp.panel_slot(
                0,
                h.div(
                  [a.class("flex items-center justify-center h-full text-sm")],
                  [text("Panel 1")],
                ),
              ),
              rp.panel_slot(
                1,
                h.div(
                  [a.class("flex items-center justify-center h-full text-sm")],
                  [text("Panel 2")],
                ),
              ),
            ],
          ),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Three panes")]),
        h.div([a.style("height", "200px")], [
          rp.element(
            [
              a.class("resizable-root"),
              rp.direction(rp.Horizontal),
              rp.sizes([33.0, 34.0, 33.0]),
              rp.min_sizes([15.0, 15.0, 15.0]),
              rp.on_resize(fn(sizes) { ResizableSizesChanged(sizes) }),
            ],
            [
              rp.panel_slot(
                0,
                h.div(
                  [a.class("flex items-center justify-center h-full text-sm")],
                  [text("Left")],
                ),
              ),
              rp.panel_slot(
                1,
                h.div(
                  [a.class("flex items-center justify-center h-full text-sm")],
                  [text("Center")],
                ),
              ),
              rp.panel_slot(
                2,
                h.div(
                  [a.class("flex items-center justify-center h-full text-sm")],
                  [text("Right")],
                ),
              ),
            ],
          ),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Vertical")]),
        h.div([a.style("height", "300px")], [
          rp.element(
            [
              a.class("resizable-root"),
              rp.direction(rp.Vertical),
              rp.sizes([40.0, 60.0]),
              rp.min_sizes([20.0, 20.0]),
              rp.on_resize(fn(sizes) { ResizableSizesChanged(sizes) }),
            ],
            [
              rp.panel_slot(
                0,
                h.div(
                  [a.class("flex items-center justify-center h-full text-sm")],
                  [text("Top")],
                ),
              ),
              rp.panel_slot(
                1,
                h.div(
                  [a.class("flex items-center justify-center h-full text-sm")],
                  [text("Bottom")],
                ),
              ),
            ],
          ),
        ]),
      ]),
    ]),
  ])
}
