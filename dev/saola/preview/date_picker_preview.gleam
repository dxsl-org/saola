import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/date_picker
import saola/preview/event_helper
import saola/preview/model.{
  type Message, type Model, DatePicker2DateSelected, DatePicker2MonthChanged,
  DatePicker2OpenChanged, DatePickerDateSelected, DatePickerMonthChanged,
  DatePickerOpenChanged, UserClickedOutside,
}

pub fn view(model: Model) -> Element(Message) {
  h.div([event_helper.on_click_outside(".date-picker", UserClickedOutside)], [
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
          model.date_picker_2_selected,
          model.date_picker_2_open,
          model.date_picker_2_view_year,
          model.date_picker_2_view_month,
          DatePicker2DateSelected,
          DatePicker2MonthChanged,
          DatePicker2OpenChanged,
          date_picker.DatePickerAttrs(
            ..date_picker.default_attrs,
            placeholder: "Select a date...",
          ),
        ),
      ]),
    ]),
  ])
}
