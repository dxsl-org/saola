import gleam/int
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Msg, SliderChanged}
import saola/slider

pub fn view_sliders(volume: Int, brightness: Int) -> Element(Msg) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Slider")]),
    h.p([a.class("page-description")], [
      text("A range input for selecting a value within a numeric range."),
    ]),
    h.div([a.class("mt-4 grid gap-6")], [
      h.div([a.class("grid gap-2")], [
        h.label([a.class("label")], [
          text("Volume: " <> int.to_string(volume)),
        ]),
        slider.slider_simple(volume, fn(v) { SliderChanged("volume", v) }),
      ]),
      h.div([a.class("grid gap-2")], [
        h.label([a.class("label")], [
          text("Brightness: " <> int.to_string(brightness) <> "%"),
        ]),
        slider.slider_full(
          slider.SyncValue(brightness),
          on_input: fn(v) { SliderChanged("brightness", v) },
          attrs: slider.SliderAttrs(
            ..slider.default_attrs,
            min: 10,
            max: 100,
            step: 10,
            aria_label: "Brightness",
          ),
        ),
      ]),
      h.div([a.class("grid gap-2")], [
        h.label([a.class("label")], [text("Disabled slider")]),
        slider.slider_full(
          slider.SyncValue(40),
          on_input: fn(v) { SliderChanged("disabled", v) },
          attrs: slider.SliderAttrs(..slider.default_attrs, disabled: True),
        ),
      ]),
    ]),
  ])
}
