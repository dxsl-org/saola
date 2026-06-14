import gleam/int
import gleam/list
import gleam/option.{type Option, None, Some}
import gleam/string
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type TimePickerFormat {
  TwelveHour
  TwentyFourHour
}

pub type TimeValue {
  TimeValue(hour: Int, minute: Int, second: Option(Int))
}

pub type TimePickerAttrs {
  TimePickerAttrs(show_seconds: Bool, disabled: Bool, class: String)
}

pub const default_attrs = TimePickerAttrs(
  show_seconds: False,
  disabled: False,
  class: "",
)

/// Time picker using three native selects (hour, minute, optional second).
pub fn time_picker(
  value: Option(TimeValue),
  format: TimePickerFormat,
  on_change: fn(TimeValue) -> msg,
  attrs: TimePickerAttrs,
) -> Element(msg) {
  let current = case value {
    None -> TimeValue(0, 0, None)
    Some(v) -> v
  }
  let root_class = case attrs.class {
    "" -> "time-picker"
    c -> "time-picker " <> c
  }
  let max_hour = case format {
    TwelveHour -> 12
    TwentyFourHour -> 23
  }
  let min_hour = case format {
    TwelveHour -> 1
    TwentyFourHour -> 0
  }
  let hour_opts = range(min_hour, max_hour)
  let minute_opts = range(0, 59)
  let second_opts = range(0, 59)

  let hour_select =
    h.div([a.class("time-picker-field")], [
      h.label([a.class("time-picker-label")], [h.text("HH")]),
      h.select(
        [
          a.class("select time-picker-select"),
          a.aria_label("Hour"),
          case attrs.disabled {
            True -> a.disabled(True)
            False -> a.none()
          },
          e.on_change(fn(v) {
            let h = int.parse(v) |> result_unwrap(current.hour)
            on_change(TimeValue(..current, hour: h))
          }),
        ],
        list.map(hour_opts, fn(n) {
          h.option(
            [
              a.value(int.to_string(n)),
              case n == current.hour {
                True -> a.selected(True)
                False -> a.none()
              },
            ],
            pad2(n),
          )
        }),
      ),
    ])

  let colon1 = h.span([a.class("time-picker-sep")], [h.text(":")])

  let minute_select =
    h.div([a.class("time-picker-field")], [
      h.label([a.class("time-picker-label")], [h.text("MM")]),
      h.select(
        [
          a.class("select time-picker-select"),
          a.aria_label("Minute"),
          case attrs.disabled {
            True -> a.disabled(True)
            False -> a.none()
          },
          e.on_change(fn(v) {
            let m = int.parse(v) |> result_unwrap(current.minute)
            on_change(TimeValue(..current, minute: m))
          }),
        ],
        list.map(minute_opts, fn(n) {
          h.option(
            [
              a.value(int.to_string(n)),
              case n == current.minute {
                True -> a.selected(True)
                False -> a.none()
              },
            ],
            pad2(n),
          )
        }),
      ),
    ])

  let second_section = case attrs.show_seconds {
    False -> []
    True -> {
      let cur_sec = case current.second {
        None -> 0
        Some(s) -> s
      }
      [
        h.span([a.class("time-picker-sep")], [h.text(":")]),
        h.div([a.class("time-picker-field")], [
          h.label([a.class("time-picker-label")], [h.text("SS")]),
          h.select(
            [
              a.class("select time-picker-select"),
              a.aria_label("Second"),
              case attrs.disabled {
                True -> a.disabled(True)
                False -> a.none()
              },
              e.on_change(fn(v) {
                let s = int.parse(v) |> result_unwrap(cur_sec)
                on_change(TimeValue(..current, second: Some(s)))
              }),
            ],
            list.map(second_opts, fn(n) {
              h.option(
                [
                  a.value(int.to_string(n)),
                  case n == cur_sec {
                    True -> a.selected(True)
                    False -> a.none()
                  },
                ],
                pad2(n),
              )
            }),
          ),
        ]),
      ]
    }
  }

  h.div([a.class(root_class)], [
    hour_select,
    colon1,
    minute_select,
    ..second_section
  ])
}

pub fn time_picker_simple(
  value: Option(TimeValue),
  on_change: fn(TimeValue) -> msg,
) -> Element(msg) {
  time_picker(value, TwentyFourHour, on_change, default_attrs)
}

fn pad2(n: Int) -> String {
  let s = int.to_string(n)
  case string.length(s) < 2 {
    True -> "0" <> s
    False -> s
  }
}

fn range(from: Int, to: Int) -> List(Int) {
  case from > to {
    True -> []
    False -> [from, ..range(from + 1, to)]
  }
}

fn result_unwrap(r: Result(a, e), default: a) -> a {
  case r {
    Ok(v) -> v
    Error(_) -> default
  }
}
