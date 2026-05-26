import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/date_picker
import saola/preview/model.{
  type Message, type Model, DatePickerDateSelected, DatePickerMonthChanged,
  DatePickerOpenChanged,
}

pub fn view_date_pickers(model: Model) -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Date Picker")]),
    h.p([a.class("page-description")], [
      text("An input that opens a calendar popover to pick a date."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Default")]),
        date_picker.date_picker_simple(
          model.date_picker_selected,
          model.date_picker_open,
          model.date_picker_view_year,
          model.date_picker_view_month,
          DatePickerDateSelected,
          DatePickerMonthChanged,
          DatePickerOpenChanged,
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Custom placeholder")]),
        date_picker.date_picker_full(
          model.date_picker_selected,
          model.date_picker_open,
          model.date_picker_view_year,
          model.date_picker_view_month,
          DatePickerDateSelected,
          DatePickerMonthChanged,
          DatePickerOpenChanged,
          date_picker.DatePickerAttrs(
            ..date_picker.default_attrs,
            placeholder: "Select a date...",
          ),
        ),
      ]),
    ]),
  ])
}
