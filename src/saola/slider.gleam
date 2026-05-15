import gleam/int
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub const class_input = "input"

pub type SliderValue {
  /// Seeds the value once. Use with the `formal` library.
  InitValue(Int)
  /// Kept in sync with the app model.
  SyncValue(Int)
}

pub type SliderAttrs {
  SliderAttrs(
    min: Int,
    max: Int,
    step: Int,
    disabled: Bool,
    name: String,
    class: String,
    aria_label: String,
  )
}

pub const default_attrs = SliderAttrs(
  min: 0,
  max: 100,
  step: 1,
  disabled: False,
  name: "",
  class: "",
  aria_label: "",
)

fn fill_pct(value: Int, min: Int, max: Int) -> String {
  let range = max - min
  let pct = case range {
    0 -> 0
    r -> { value - min } * 100 / r
  }
  int.clamp(pct, min: 0, max: 100) |> int.to_string
}

/// Fully customizable range slider.
pub fn slider_full(
  value: SliderValue,
  on_input on_input: fn(String) -> msg,
  attrs attrs: SliderAttrs,
) -> Element(msg) {
  let SliderAttrs(min:, max:, step:, disabled:, name:, class:, aria_label:) =
    attrs
  let raw_value = case value {
    InitValue(v) -> v
    SyncValue(v) -> v
  }
  let pct = fill_pct(raw_value, min, max)
  h.input([
    a.type_("range"),
    a.class(class_input <> case class {
      "" -> ""
      c -> " " <> c
    }),
    a.min(int.to_string(min)),
    a.max(int.to_string(max)),
    a.step(int.to_string(step)),
    case value {
      InitValue(v) -> a.default_value(int.to_string(v))
      SyncValue(v) -> a.value(int.to_string(v))
    },
    a.style("--slider-value", pct <> "%"),
    case name {
      "" -> a.none()
      n -> a.name(n)
    },
    case disabled {
      True -> a.disabled(True)
      False -> a.none()
    },
    case aria_label {
      "" -> a.none()
      l -> a.aria_label(l)
    },
    e.on_input(on_input),
  ])
}

pub fn slider_simple(
  value: Int,
  on_input: fn(String) -> msg,
) -> Element(msg) {
  slider_full(SyncValue(value), on_input: on_input, attrs: default_attrs)
}
