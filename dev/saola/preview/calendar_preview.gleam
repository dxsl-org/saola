import gleam/int
import gleam/option.{None, Some}
import gleam/time/calendar
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import saola/calendar as cal
import saola/preview/model.{
  type Message, type Model, CalendarDateSelected, CalendarMonthChanged,
}

pub fn view(model: Model) -> Element(Message) {
  let #(prev_y, prev_m) =
    cal.prev_month(model.calendar_view_year, model.calendar_view_month)
  let #(next_y, next_m) =
    cal.next_month(model.calendar_view_year, model.calendar_view_month)
  h.div([], [
    h.h1([a.class("page-title")], [text("Calendar")]),
    h.p([a.class("page-description")], [
      text("A month-based date grid for selecting dates."),
    ]),
    h.div([a.class("grid gap-8")], [
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("Default")]),
        cal.calendar_simple(
          model.calendar_selected,
          model.calendar_view_year,
          model.calendar_view_month,
          CalendarDateSelected,
          CalendarMonthChanged(prev_y, prev_m),
          CalendarMonthChanged(next_y, next_m),
        ),
        h.p(
          [
            a.style("font-size", "0.875rem"),
            a.style("color", "var(--color-muted-foreground, #6c757d)"),
          ],
          [
            text(case model.calendar_selected {
              None -> "No date selected"
              Some(d) ->
                "Selected: "
                <> calendar.month_to_string(d.month)
                <> " "
                <> int.to_string(d.day)
                <> ", "
                <> int.to_string(d.year)
            }),
          ],
        ),
      ]),
      h.div([a.class("grid gap-4")], [
        h.h2([], [text("With today highlighted")]),
        cal.calendar_full(
          model.calendar_selected,
          model.calendar_view_year,
          model.calendar_view_month,
          CalendarDateSelected,
          CalendarMonthChanged(prev_y, prev_m),
          CalendarMonthChanged(next_y, next_m),
          cal.CalendarAttrs(..cal.default_attrs, today: Some(cal.today())),
        ),
      ]),
    ]),
  ])
}
