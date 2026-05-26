import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Message, type Model, ResizableSizesChanged}
import saola/resizable

pub fn view_resizables(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Resizable")]),
    h.p([a.class("page-description")], [text("Drag-to-resize split panels.")]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Horizontal (two panes)")]),
        h.div([a.style("height", "200px")], [
          resizable.resizable_simple(
            [
              resizable.ResizablePanel(
                content: h.div(
                  [a.class("flex items-center justify-center h-full text-sm")],
                  [text("Panel 1")],
                ),
                min_size: 20.0,
              ),
              resizable.ResizablePanel(
                content: h.div(
                  [a.class("flex items-center justify-center h-full text-sm")],
                  [text("Panel 2")],
                ),
                min_size: 20.0,
              ),
            ],
            model.resizable_sizes,
            fn(sizes) { ResizableSizesChanged(sizes) },
          ),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Three panes")]),
        h.div([a.style("height", "200px")], [
          resizable.resizable_simple(
            [
              resizable.ResizablePanel(
                content: h.div(
                  [a.class("flex items-center justify-center h-full text-sm")],
                  [text("Left")],
                ),
                min_size: 15.0,
              ),
              resizable.ResizablePanel(
                content: h.div(
                  [a.class("flex items-center justify-center h-full text-sm")],
                  [text("Center")],
                ),
                min_size: 15.0,
              ),
              resizable.ResizablePanel(
                content: h.div(
                  [a.class("flex items-center justify-center h-full text-sm")],
                  [text("Right")],
                ),
                min_size: 15.0,
              ),
            ],
            [33.0, 34.0, 33.0],
            fn(sizes) { ResizableSizesChanged(sizes) },
          ),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Vertical")]),
        h.div([a.style("height", "300px")], [
          resizable.resizable_full(
            [
              resizable.ResizablePanel(
                content: h.div(
                  [a.class("flex items-center justify-center h-full text-sm")],
                  [text("Top")],
                ),
                min_size: 20.0,
              ),
              resizable.ResizablePanel(
                content: h.div(
                  [a.class("flex items-center justify-center h-full text-sm")],
                  [text("Bottom")],
                ),
                min_size: 20.0,
              ),
            ],
            [40.0, 60.0],
            fn(sizes) { ResizableSizesChanged(sizes) },
            resizable.ResizableAttrs(direction: resizable.Vertical, class: ""),
          ),
        ]),
      ]),
    ]),
  ])
}
