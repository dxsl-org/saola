import gleam/int
import gleam/option.{None, Some}
import gleam/string
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/preview/model.{type Message, type Model, TimePickerChanged}
import saola/time_picker

pub fn view_time_pickers(model: Model) -> Element(Message) {
  let display_value = case model.time_picker_value {
    None -> "None"
    Some(tv) -> display_time(tv)
  }
  h.div([], [
    h.h1([a.class("page-title")], [text("Time Picker")]),
    h.p([a.class("page-description")], [
      text("A time input using native selects for hour, minute, and second."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("24-hour (simple)")]),
        time_picker.time_picker_simple(
          model.time_picker_value,
          TimePickerChanged,
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("12-hour format")]),
        time_picker.time_picker_full(
          model.time_picker_value,
          time_picker.TwelveHour,
          TimePickerChanged,
          time_picker.default_attrs,
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("With seconds")]),
        time_picker.time_picker_full(
          model.time_picker_value,
          time_picker.TwentyFourHour,
          TimePickerChanged,
          time_picker.TimePickerAttrs(
            show_seconds: True,
            disabled: False,
            class: "",
          ),
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Disabled")]),
        time_picker.time_picker_full(
          None,
          time_picker.TwentyFourHour,
          TimePickerChanged,
          time_picker.TimePickerAttrs(
            show_seconds: False,
            disabled: True,
            class: "",
          ),
        ),
      ]),
      h.div([a.class("mt-4")], [
        h.p([a.class("text-muted-foreground text-sm")], [
          text("Current value: " <> display_value),
        ]),
      ]),
    ]),
  ])
}

fn display_time(tv: time_picker.TimeValue) -> String {
  let pad = fn(n: Int) -> String {
    let s = int.to_string(n)
    case string.length(s) < 2 {
      True -> "0" <> s
      False -> s
    }
  }
  let base = pad(tv.hour) <> ":" <> pad(tv.minute)
  case tv.second {
    None -> base
    Some(s) -> base <> ":" <> pad(s)
  }
}
