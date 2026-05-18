import gleam/list
import gleam/option
import saola/canvas_command as canvas
import saola/lustre_bar_chart.{
  BarChartAttrs, ChartPoint, bar_chart_canvas, default_bar_chart_attrs,
}

// ---------------------------------------------------------------------------
// Empty data
// ---------------------------------------------------------------------------

pub fn empty_data_no_data_text_test() {
  let output = bar_chart_canvas([], default_bar_chart_attrs, option.None)
  let has_no_data =
    list.any(output.commands, fn(cmd) {
      case cmd {
        canvas.FillText("No data", _, _) -> True
        _ -> False
      }
    })
  assert has_no_data
}

pub fn empty_data_no_hit_areas_test() {
  let output = bar_chart_canvas([], default_bar_chart_attrs, option.None)
  assert output.hit_areas == []
}

pub fn empty_data_no_fill_rect_test() {
  let output = bar_chart_canvas([], default_bar_chart_attrs, option.None)
  let has_rect =
    list.any(output.commands, fn(cmd) {
      case cmd {
        canvas.FillRect(_, _, _, _) -> True
        _ -> False
      }
    })
  assert !has_rect
}

// ---------------------------------------------------------------------------
// Single bar
// ---------------------------------------------------------------------------

pub fn single_bar_has_fill_rect_test() {
  let data = [ChartPoint("A", 100.0)]
  let output = bar_chart_canvas(data, default_bar_chart_attrs, option.None)
  let rects =
    list.filter(output.commands, fn(cmd) {
      case cmd {
        canvas.FillRect(_, _, _, _) -> True
        _ -> False
      }
    })
  assert list.length(rects) == 1
}

pub fn single_bar_no_hit_areas_when_none_test() {
  let data = [ChartPoint("A", 100.0)]
  let output = bar_chart_canvas(data, default_bar_chart_attrs, option.None)
  assert output.hit_areas == []
}

pub fn single_bar_one_hit_area_when_handler_test() {
  let data = [ChartPoint("A", 100.0)]
  let output =
    bar_chart_canvas(data, default_bar_chart_attrs, option.Some(fn(p) { p }))
  assert list.length(output.hit_areas) == 1
}

// ---------------------------------------------------------------------------
// Multiple bars
// ---------------------------------------------------------------------------

pub fn bar_count_matches_data_test() {
  let data = [
    ChartPoint("Jan", 10.0),
    ChartPoint("Feb", 20.0),
    ChartPoint("Mar", 30.0),
    ChartPoint("Apr", 40.0),
  ]
  let output = bar_chart_canvas(data, default_bar_chart_attrs, option.None)
  let rects =
    list.filter(output.commands, fn(cmd) {
      case cmd {
        canvas.FillRect(_, _, _, _) -> True
        _ -> False
      }
    })
  assert list.length(rects) == 4
}

pub fn hit_area_count_matches_data_test() {
  let data = [ChartPoint("A", 10.0), ChartPoint("B", 20.0), ChartPoint("C", 30.0)]
  let output =
    bar_chart_canvas(data, default_bar_chart_attrs, option.Some(fn(p) { p }))
  assert list.length(output.hit_areas) == 3
}

// ---------------------------------------------------------------------------
// Command structure
// ---------------------------------------------------------------------------

pub fn translate_command_present_test() {
  let data = [ChartPoint("A", 50.0)]
  let output = bar_chart_canvas(data, default_bar_chart_attrs, option.None)
  let has_translate =
    list.any(output.commands, fn(cmd) {
      case cmd {
        canvas.Translate(_, _) -> True
        _ -> False
      }
    })
  assert has_translate
}

pub fn grid_begin_path_present_test() {
  let data = [ChartPoint("A", 100.0)]
  let output = bar_chart_canvas(data, default_bar_chart_attrs, option.None)
  let has_begin_path =
    list.any(output.commands, fn(cmd) {
      case cmd {
        canvas.BeginPath -> True
        _ -> False
      }
    })
  assert has_begin_path
}

pub fn x_axis_labels_present_test() {
  let data = [ChartPoint("Q1", 10.0), ChartPoint("Q2", 20.0)]
  let output = bar_chart_canvas(data, default_bar_chart_attrs, option.None)
  let has_q1 =
    list.any(output.commands, fn(cmd) {
      case cmd {
        canvas.FillText("Q1", _, _) -> True
        _ -> False
      }
    })
  let has_q2 =
    list.any(output.commands, fn(cmd) {
      case cmd {
        canvas.FillText("Q2", _, _) -> True
        _ -> False
      }
    })
  assert has_q1
  assert has_q2
}

pub fn title_command_present_when_set_test() {
  let data = [ChartPoint("X", 5.0)]
  let attrs =
    BarChartAttrs(..default_bar_chart_attrs, title: "Revenue")
  let output = bar_chart_canvas(data, attrs, option.None)
  let has_title =
    list.any(output.commands, fn(cmd) {
      case cmd {
        canvas.FillText("Revenue", _, _) -> True
        _ -> False
      }
    })
  assert has_title
}

pub fn no_title_command_when_empty_test() {
  let data = [ChartPoint("X", 5.0)]
  let output = bar_chart_canvas(data, default_bar_chart_attrs, option.None)
  // default title is "", so no title FillText for "" specifically —
  // but we just verify no FillText with empty string
  let has_empty_title =
    list.any(output.commands, fn(cmd) {
      case cmd {
        canvas.FillText("", _, _) -> True
        _ -> False
      }
    })
  assert !has_empty_title
}

// ---------------------------------------------------------------------------
// Hit area geometry — RectHit should have positive width and height
// ---------------------------------------------------------------------------

pub fn hit_areas_have_positive_dimensions_test() {
  let data = [ChartPoint("A", 50.0), ChartPoint("B", 100.0)]
  let output =
    bar_chart_canvas(data, default_bar_chart_attrs, option.Some(fn(p) { p }))
  let all_positive =
    list.all(output.hit_areas, fn(area) {
      case area {
        canvas.RectHit(_, _, w, h, _) -> w >. 0.0 && h >. 0.0
        canvas.CircleHit(_, _, r, _) -> r >. 0.0
      }
    })
  assert all_positive
}
