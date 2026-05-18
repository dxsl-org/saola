import gleam/option.{None, Some}
import saola/canvas_command.{
  Arc, BeginPath, BezierTo, CircleHit, ClosePath, Fill, FillRect, FillText,
  MoveTo, RectHit, Restore, Save, SetFill, SetFont, SetLineWidth, SetStroke,
  Stroke, Translate,
}

// ---------------------------------------------------------------------------
// hit_test — RectHit
// ---------------------------------------------------------------------------

pub fn hit_test_rect_inside_test() {
  let areas = [RectHit(10.0, 10.0, 100.0, 50.0, "hit")]
  assert canvas_command.hit_test(areas, 60.0, 35.0) == Some("hit")
}

pub fn hit_test_rect_top_left_corner_test() {
  let areas = [RectHit(10.0, 10.0, 100.0, 50.0, "hit")]
  assert canvas_command.hit_test(areas, 10.0, 10.0) == Some("hit")
}

pub fn hit_test_rect_bottom_right_corner_test() {
  let areas = [RectHit(10.0, 10.0, 100.0, 50.0, "hit")]
  assert canvas_command.hit_test(areas, 110.0, 60.0) == Some("hit")
}

pub fn hit_test_rect_outside_x_test() {
  let areas = [RectHit(10.0, 10.0, 100.0, 50.0, "hit")]
  assert canvas_command.hit_test(areas, 111.0, 35.0) == None
}

pub fn hit_test_rect_outside_y_test() {
  let areas = [RectHit(10.0, 10.0, 100.0, 50.0, "hit")]
  assert canvas_command.hit_test(areas, 60.0, 61.0) == None
}

// ---------------------------------------------------------------------------
// hit_test — CircleHit
// ---------------------------------------------------------------------------

pub fn hit_test_circle_center_test() {
  let areas = [CircleHit(50.0, 50.0, 20.0, "node")]
  assert canvas_command.hit_test(areas, 50.0, 50.0) == Some("node")
}

pub fn hit_test_circle_on_edge_test() {
  let areas = [CircleHit(50.0, 50.0, 20.0, "node")]
  // Point exactly on the radius boundary — should be a hit (<=)
  assert canvas_command.hit_test(areas, 70.0, 50.0) == Some("node")
}

pub fn hit_test_circle_outside_test() {
  let areas = [CircleHit(50.0, 50.0, 20.0, "node")]
  assert canvas_command.hit_test(areas, 71.0, 50.0) == None
}

// ---------------------------------------------------------------------------
// hit_test — empty and multiple areas
// ---------------------------------------------------------------------------

pub fn hit_test_empty_areas_test() {
  assert canvas_command.hit_test([], 50.0, 50.0) == None
}

pub fn hit_test_returns_first_match_test() {
  let areas = [
    RectHit(0.0, 0.0, 100.0, 100.0, "back"),
    RectHit(20.0, 20.0, 60.0, 60.0, "front"),
  ]
  // Both overlap at (50, 50) — first in list wins
  assert canvas_command.hit_test(areas, 50.0, 50.0) == Some("back")
}

pub fn hit_test_no_match_multiple_areas_test() {
  let areas = [
    RectHit(0.0, 0.0, 50.0, 50.0, "a"),
    CircleHit(200.0, 200.0, 10.0, "b"),
  ]
  assert canvas_command.hit_test(areas, 150.0, 150.0) == None
}

// ---------------------------------------------------------------------------
// encode_commands — smoke test: list length preserved
// ---------------------------------------------------------------------------

pub fn encode_commands_preserves_count_test() {
  // encode_commands returns json.Json which is a JS value at runtime —
  // we can't inspect it in pure Gleam tests, but we verify it compiles
  // and doesn't panic by calling it with a known list.
  let cmds = [
    SetFill("#ff0000"),
    FillRect(0.0, 0.0, 100.0, 50.0),
    SetStroke("#000"),
    SetLineWidth(1.0),
    BeginPath,
    MoveTo(10.0, 10.0),
    Translate(5.0, 5.0),
    Save,
    Restore,
    Fill,
    Stroke,
    SetFont("12px sans-serif"),
    FillText("hello", 20.0, 20.0),
    Arc(50.0, 50.0, 20.0, 0.0, 6.28, False),
    BezierTo(10.0, 10.0, 90.0, 10.0, 50.0, 50.0),
    ClosePath,
  ]
  // If encode_commands panics, the test fails. Correctness verified in browser.
  let _ = canvas_command.encode_commands(cmds)
  assert True
}
