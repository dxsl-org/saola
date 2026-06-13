import gleam/int
import gleam/list
import gleam/option.{type Option, None, Some}
import gleam/time/calendar.{
  type Date, type Month, April, August, Date, December, February, January, July,
  June, March, May, November, October, September, month_to_int, month_to_string,
}
import gleam/time/timestamp
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

/// Configuration attributes for calendar display.
pub type CalendarAttrs {
  CalendarAttrs(
    /// Highlight today's date. Set to `None` to disable.
    today: Option(Date),
    /// Show days from previous/next month in empty cells.
    show_outside_days: Bool,
    /// Additional CSS classes to apply to the calendar root.
    class: String,
  )
}

/// Default calendar attributes: no highlight, show outside days, no extra classes.
pub const default_attrs = CalendarAttrs(
  today: None,
  show_outside_days: True,
  class: "",
)

// ── Date helpers ──────────────────────────────────────────

fn count_days_in_month(year: Int, month: Month) -> Int {
  case month {
    January | March | May | July | August | October | December -> 31
    April | June | September | November -> 30
    February ->
      case calendar.is_leap_year(year) {
        True -> 29
        False -> 28
      }
  }
}

// Zeller's congruence — returns 0=Sunday … 6=Saturday
fn get_month_start_day_of_week(year: Int, month: Month) -> Int {
  let m = month_to_int(month)
  let #(zm, zy) = case m <= 2 {
    True -> #(m + 12, year - 1)
    False -> #(m, year)
  }
  let k = zy % 100
  let j = zy / 100
  let h = { 1 + 13 * { zm + 1 } / 5 + k + k / 4 + j / 4 - 2 * j } % 7
  let dow = { h + 6 } % 7
  case dow < 0 {
    True -> dow + 7
    False -> dow
  }
}

/// Get the previous month.
///
/// Returns a tuple of `#(year, month)` for the month before the given month.
/// Handles year transitions correctly (e.g., January → previous December).
pub fn prev_month(year: Int, month: Month) -> #(Int, Month) {
  case month {
    January -> #(year - 1, December)
    February -> #(year, January)
    March -> #(year, February)
    April -> #(year, March)
    May -> #(year, April)
    June -> #(year, May)
    July -> #(year, June)
    August -> #(year, July)
    September -> #(year, August)
    October -> #(year, September)
    November -> #(year, October)
    December -> #(year, November)
  }
}

/// Get the next month.
///
/// Returns a tuple of `#(year, month)` for the month after the given month.
/// Handles year transitions correctly (e.g., December → next January).
pub fn next_month(year: Int, month: Month) -> #(Int, Month) {
  case month {
    January -> #(year, February)
    February -> #(year, March)
    March -> #(year, April)
    April -> #(year, May)
    May -> #(year, June)
    June -> #(year, July)
    July -> #(year, August)
    August -> #(year, September)
    September -> #(year, October)
    October -> #(year, November)
    November -> #(year, December)
    December -> #(year + 1, January)
  }
}

/// Return the current local date. Uses the system clock.
pub fn today() -> Date {
  let #(date, _) =
    timestamp.to_calendar(timestamp.system_time(), calendar.local_offset())
  date
}

fn cell_indices(n: Int) -> List(Int) {
  case n <= 0 {
    True -> []
    False -> list.append(cell_indices(n - 1), [n - 1])
  }
}

// For a given cell index (0..41), return the date it represents and
// whether it belongs to the current month.
fn cell_date(
  idx: Int,
  year: Int,
  month: Month,
  start_day: Int,
  month_days: Int,
) -> #(Date, Bool) {
  case idx < start_day {
    True -> {
      let #(py, pm) = prev_month(year, month)
      let prev_days = count_days_in_month(py, pm)
      #(Date(py, pm, prev_days - start_day + idx + 1), False)
    }
    False ->
      case idx < start_day + month_days {
        True -> #(Date(year, month, idx - start_day + 1), True)
        False -> {
          let #(ny, nm) = next_month(year, month)
          #(Date(ny, nm, idx - start_day - month_days + 1), False)
        }
      }
  }
}

fn is_same_day(a: Date, b: Date) -> Bool {
  a.year == b.year && a.month == b.month && a.day == b.day
}

// ── Rendering ─────────────────────────────────────────────

fn render_day_cell(
  date: Date,
  is_current_month: Bool,
  selected: Option(Date),
  today: Option(Date),
  show_outside: Bool,
  on_select: fn(Date) -> msg,
) -> Element(msg) {
  let is_selected = case selected {
    Some(s) -> is_same_day(date, s)
    None -> False
  }
  let is_today = case today {
    Some(t) -> is_same_day(date, t)
    None -> False
  }
  let base_class = case is_selected {
    True -> "calendar-day calendar-day-selected"
    False ->
      case is_today {
        True -> "calendar-day calendar-day-today"
        False ->
          case is_current_month {
            True -> "calendar-day"
            False -> "calendar-day calendar-day-outside"
          }
      }
  }
  case !is_current_month && !show_outside {
    True -> h.div([a.class("calendar-day calendar-day-empty")], [])
    False ->
      h.button(
        [
          a.type_("button"),
          a.class(base_class),
          a.aria_label(
            month_to_string(date.month)
            <> " "
            <> int.to_string(date.day)
            <> ", "
            <> int.to_string(date.year),
          ),
          case is_selected {
            True -> a.aria_selected(True)
            False -> a.none()
          },
          case !is_current_month {
            True -> a.aria_disabled(True)
            False -> a.none()
          },
          e.on_click(on_select(date)),
        ],
        [h.text(int.to_string(date.day))],
      )
  }
}

/// Fully customizable calendar widget.
///
/// Displays a month view with day cells, navigation buttons, and optional
/// highlighting for today's date and selected date.
///
/// Example:
/// ```gleam
/// calendar(
///   selected: Some(current_date),
///   view_year: 2026,
///   view_month: calendar.May,
///   on_select: DateSelected,
///   on_prev_month: PrevMonthClicked,
///   on_next_month: NextMonthClicked,
///   attrs: CalendarAttrs(
///     ..default_attrs,
///     today: Some(today_date),
///     show_outside_days: True,
///   ),
/// )
/// ```
pub fn calendar(
  selected: Option(Date),
  view_year: Int,
  view_month: Month,
  on_select: fn(Date) -> msg,
  on_prev_month: msg,
  on_next_month: msg,
  attrs: CalendarAttrs,
) -> Element(msg) {
  let month_days = count_days_in_month(view_year, view_month)
  let start_day = get_month_start_day_of_week(view_year, view_month)
  let extra_class = case attrs.class {
    "" -> a.none()
    c -> a.class(c)
  }
  let day_headers =
    ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]
    |> list.map(fn(d) { h.div([a.class("calendar-day-header")], [h.text(d)]) })
  let cells =
    cell_indices(42)
    |> list.map(fn(idx) {
      let #(date, is_current) =
        cell_date(idx, view_year, view_month, start_day, month_days)
      render_day_cell(
        date,
        is_current,
        selected,
        attrs.today,
        attrs.show_outside_days,
        on_select,
      )
    })
  h.div([a.class("calendar"), extra_class], [
    h.div([a.class("calendar-header")], [
      h.button(
        [
          a.type_("button"),
          a.class("calendar-nav-btn"),
          a.aria_label("Previous month"),
          e.on_click(on_prev_month),
        ],
        [h.text("‹")],
      ),
      h.div([a.class("calendar-title")], [
        h.text(month_to_string(view_month) <> " " <> int.to_string(view_year)),
      ]),
      h.button(
        [
          a.type_("button"),
          a.class("calendar-nav-btn"),
          a.aria_label("Next month"),
          e.on_click(on_next_month),
        ],
        [h.text("›")],
      ),
    ]),
    h.div([a.class("calendar-grid")], list.append(day_headers, cells)),
  ])
}

/// Simplified calendar using default attributes.
///
/// Convenience function that uses `default_attrs` for configuration.
/// Equivalent to calling `calendar()` with default styling options.
///
/// Example:
/// ```gleam
/// calendar_simple(
///   selected: Some(current_date),
///   view_year: 2026,
///   view_month: calendar.May,
///   on_select: DateSelected,
///   on_prev_month: PrevMonthClicked,
///   on_next_month: NextMonthClicked,
/// )
/// ```
pub fn calendar_simple(
  selected: Option(Date),
  view_year: Int,
  view_month: Month,
  on_select: fn(Date) -> msg,
  on_prev_month: msg,
  on_next_month: msg,
) -> Element(msg) {
  calendar(
    selected,
    view_year,
    view_month,
    on_select,
    on_prev_month,
    on_next_month,
    default_attrs,
  )
}
