import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Message}
import saola/spinner

pub fn view_spinners() -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Spinner")]),
    h.p([a.class("page-description")], [
      text("A loading indicator."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Sizes")]),
        h.div([a.class("flex items-center gap-4")], [
          spinner.spinner_full(spinner.SpinnerAttrs(
            size: spinner.Small,
            class: "",
          )),
          spinner.spinner_full(spinner.SpinnerAttrs(
            size: spinner.Medium,
            class: "",
          )),
          spinner.spinner_full(spinner.SpinnerAttrs(
            size: spinner.Large,
            class: "",
          )),
        ]),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Default (medium)")]),
        spinner.spinner_simple(),
      ]),
    ]),
  ])
}
