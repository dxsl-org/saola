import gleam/option.{Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/date_picker
import saola/preview/event_helper
import saola/preview/model.{
  type Message, type Model, DatePicker1Changed, DatePicker2Changed,
  DatePickerClose, DatePickerDateSelected, DatePickerMonthChanged,
  DatePickerOpen, UserClickedOutside,
}

pub fn view(model: Model) -> Element(Message) {
  let state1 = model.date_picker_1_state
  let state2 = model.date_picker_2_state
  h.div([event_helper.on_click_outside(".date-picker", UserClickedOutside)], [
    h.h1([a.class("page-title")], [text("Date Picker")]),
    h.p([a.class("page-description")], [
      text("An input that opens a calendar popover to pick a date."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Default")]),
        date_picker.date_picker_simple(
          Some(state1.selected_date),
          state1.open,
          state1.viewed_year,
          state1.viewed_month,
          fn(date) { DatePicker1Changed(DatePickerDateSelected(date)) },
          fn(year, month) {
            DatePicker1Changed(DatePickerMonthChanged(year, month))
          },
          fn(open) {
            case open {
              True -> DatePicker1Changed(DatePickerOpen)
              False -> DatePicker1Changed(DatePickerClose)
            }
          },
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Custom placeholder")]),
        date_picker.date_picker(
          Some(state2.selected_date),
          state2.open,
          state2.viewed_year,
          state2.viewed_month,
          fn(date) { DatePicker2Changed(DatePickerDateSelected(date)) },
          fn(year, month) {
            DatePicker2Changed(DatePickerMonthChanged(year, month))
          },
          fn(open) {
            case open {
              True -> DatePicker2Changed(DatePickerOpen)
              False -> DatePicker2Changed(DatePickerClose)
            }
          },
          date_picker.DatePickerAttrs(
            ..date_picker.default_attrs,
            placeholder: "Select a date...",
          ),
        ),
      ]),
    ]),
  ])
}
