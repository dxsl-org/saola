import gleam/dynamic/decode
import gleam/json
import gleam/list
import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/event as e

// ---------------------------------------------------------------------------
// ADTs
// ---------------------------------------------------------------------------

pub type CanvasCommand {
  // Style
  SetFill(color: String)
  SetStroke(color: String)
  SetLineWidth(width: Float)
  SetFont(font: String)
  SetAlpha(alpha: Float)
  SetLineDash(segments: List(Float))
  SetTextAlign(align: String)
  SetTextBaseline(baseline: String)
  // Transform stack
  Save
  Restore
  Translate(x: Float, y: Float)
  Scale(x: Float, y: Float)
  Rotate(angle: Float)
  // Paths
  BeginPath
  MoveTo(x: Float, y: Float)
  LineTo(x: Float, y: Float)
  Arc(cx: Float, cy: Float, r: Float, start: Float, end: Float, ccw: Bool)
  QuadTo(cpx: Float, cpy: Float, x: Float, y: Float)
  BezierTo(
    cp1x: Float,
    cp1y: Float,
    cp2x: Float,
    cp2y: Float,
    x: Float,
    y: Float,
  )
  ClosePath
  Fill
  Stroke
  Clip
  // Rect shortcuts
  FillRect(x: Float, y: Float, w: Float, h: Float)
  StrokeRect(x: Float, y: Float, w: Float, h: Float)
  ClearRect(x: Float, y: Float, w: Float, h: Float)
  // Text
  FillText(text: String, x: Float, y: Float)
  StrokeText(text: String, x: Float, y: Float)
}

pub type HitArea(msg) {
  RectHit(x: Float, y: Float, w: Float, h: Float, msg: msg)
  CircleHit(cx: Float, cy: Float, r: Float, msg: msg)
}

pub type CanvasOutput(msg) {
  CanvasOutput(commands: List(CanvasCommand), hit_areas: List(HitArea(msg)))
}

// ---------------------------------------------------------------------------
// Hit testing — runs in Gleam on every canvas-tap event
// ---------------------------------------------------------------------------

pub fn hit_test(areas: List(HitArea(msg)), x: Float, y: Float) -> Option(msg) {
  case
    list.find_map(areas, fn(area) {
      case area {
        RectHit(ax, ay, w, h, msg) ->
          case x >=. ax && x <=. ax +. w && y >=. ay && y <=. ay +. h {
            True -> Ok(msg)
            False -> Error(Nil)
          }
        CircleHit(cx, cy, r, msg) -> {
          let dx = x -. cx
          let dy = y -. cy
          case dx *. dx +. dy *. dy <=. r *. r {
            True -> Ok(msg)
            False -> Error(Nil)
          }
        }
      }
    })
  {
    Ok(msg) -> Some(msg)
    Error(_) -> None
  }
}

// ---------------------------------------------------------------------------
// JSON encoding — json.array compiles to a plain JS array at runtime,
// so no serialization overhead when set via a.property
// ---------------------------------------------------------------------------

pub fn encode_commands(commands: List(CanvasCommand)) -> json.Json {
  json.array(commands, encode_command)
}

fn encode_command(cmd: CanvasCommand) -> json.Json {
  case cmd {
    SetFill(color) ->
      json.object([
        #("type", json.string("SetFill")),
        #("color", json.string(color)),
      ])
    SetStroke(color) ->
      json.object([
        #("type", json.string("SetStroke")),
        #("color", json.string(color)),
      ])
    SetLineWidth(width) ->
      json.object([
        #("type", json.string("SetLineWidth")),
        #("width", json.float(width)),
      ])
    SetFont(font) ->
      json.object([
        #("type", json.string("SetFont")),
        #("font", json.string(font)),
      ])
    SetAlpha(alpha) ->
      json.object([
        #("type", json.string("SetAlpha")),
        #("alpha", json.float(alpha)),
      ])
    SetLineDash(segments) ->
      json.object([
        #("type", json.string("SetLineDash")),
        #("segments", json.array(segments, json.float)),
      ])
    SetTextAlign(align) ->
      json.object([
        #("type", json.string("SetTextAlign")),
        #("align", json.string(align)),
      ])
    SetTextBaseline(baseline) ->
      json.object([
        #("type", json.string("SetTextBaseline")),
        #("baseline", json.string(baseline)),
      ])
    Save -> json.object([#("type", json.string("Save"))])
    Restore -> json.object([#("type", json.string("Restore"))])
    Translate(x, y) ->
      json.object([
        #("type", json.string("Translate")),
        #("x", json.float(x)),
        #("y", json.float(y)),
      ])
    Scale(x, y) ->
      json.object([
        #("type", json.string("Scale")),
        #("x", json.float(x)),
        #("y", json.float(y)),
      ])
    Rotate(angle) ->
      json.object([
        #("type", json.string("Rotate")),
        #("angle", json.float(angle)),
      ])
    BeginPath -> json.object([#("type", json.string("BeginPath"))])
    MoveTo(x, y) ->
      json.object([
        #("type", json.string("MoveTo")),
        #("x", json.float(x)),
        #("y", json.float(y)),
      ])
    LineTo(x, y) ->
      json.object([
        #("type", json.string("LineTo")),
        #("x", json.float(x)),
        #("y", json.float(y)),
      ])
    Arc(cx, cy, r, start, end_, ccw) ->
      json.object([
        #("type", json.string("Arc")),
        #("cx", json.float(cx)),
        #("cy", json.float(cy)),
        #("r", json.float(r)),
        #("start", json.float(start)),
        #("end", json.float(end_)),
        #("ccw", json.bool(ccw)),
      ])
    QuadTo(cpx, cpy, x, y) ->
      json.object([
        #("type", json.string("QuadTo")),
        #("cpx", json.float(cpx)),
        #("cpy", json.float(cpy)),
        #("x", json.float(x)),
        #("y", json.float(y)),
      ])
    BezierTo(cp1x, cp1y, cp2x, cp2y, x, y) ->
      json.object([
        #("type", json.string("BezierTo")),
        #("cp1x", json.float(cp1x)),
        #("cp1y", json.float(cp1y)),
        #("cp2x", json.float(cp2x)),
        #("cp2y", json.float(cp2y)),
        #("x", json.float(x)),
        #("y", json.float(y)),
      ])
    ClosePath -> json.object([#("type", json.string("ClosePath"))])
    Fill -> json.object([#("type", json.string("Fill"))])
    Stroke -> json.object([#("type", json.string("Stroke"))])
    Clip -> json.object([#("type", json.string("Clip"))])
    FillRect(x, y, w, h) ->
      json.object([
        #("type", json.string("FillRect")),
        #("x", json.float(x)),
        #("y", json.float(y)),
        #("w", json.float(w)),
        #("h", json.float(h)),
      ])
    StrokeRect(x, y, w, h) ->
      json.object([
        #("type", json.string("StrokeRect")),
        #("x", json.float(x)),
        #("y", json.float(y)),
        #("w", json.float(w)),
        #("h", json.float(h)),
      ])
    ClearRect(x, y, w, h) ->
      json.object([
        #("type", json.string("ClearRect")),
        #("x", json.float(x)),
        #("y", json.float(y)),
        #("w", json.float(w)),
        #("h", json.float(h)),
      ])
    FillText(text, x, y) ->
      json.object([
        #("type", json.string("FillText")),
        #("text", json.string(text)),
        #("x", json.float(x)),
        #("y", json.float(y)),
      ])
    StrokeText(text, x, y) ->
      json.object([
        #("type", json.string("StrokeText")),
        #("text", json.string(text)),
        #("x", json.float(x)),
        #("y", json.float(y)),
      ])
  }
}

pub fn encode_hit_areas(hit_areas: List(HitArea(msg))) -> json.Json {
  json.array(hit_areas, encode_hit_area)
}

fn encode_hit_area(area: HitArea(msg)) -> json.Json {
  case area {
    RectHit(x, y, w, h, _msg) ->
      json.object([
        #("type", json.string("rect")),
        #("x", json.float(x)),
        #("y", json.float(y)),
        #("w", json.float(w)),
        #("h", json.float(h)),
      ])
    CircleHit(cx, cy, r, _msg) ->
      json.object([
        #("type", json.string("circle")),
        #("cx", json.float(cx)),
        #("cy", json.float(cy)),
        #("r", json.float(r)),
      ])
  }
}

// ---------------------------------------------------------------------------
// Canvas element helper — wraps CanvasOutput in <saola-canvas>
// ---------------------------------------------------------------------------

@external(javascript, "./canvas-ffi.mjs", "ensure_registered")
fn ensure_registered() -> Nil

@external(javascript, "./canvas-ffi.mjs", "measure_text")
pub fn measure_text(font: String, text: String) -> Float

@external(javascript, "./canvas-ffi.mjs", "request_animation_frame")
pub fn request_animation_frame(callback: fn(Float) -> Nil) -> Nil

fn decode_canvas_tap(callback: fn(Float, Float) -> msg) -> decode.Decoder(msg) {
  use x <- decode.subfield(["detail", "x"], decode.float)
  use y <- decode.subfield(["detail", "y"], decode.float)
  decode.success(callback(x, y))
}

pub fn canvas_element(
  output: CanvasOutput(msg),
  on_tap: fn(Float, Float) -> msg,
) -> Element(msg) {
  ensure_registered()
  element.element(
    "saola-canvas",
    [
      a.property("commands", encode_commands(output.commands)),
      a.property("hitAreas", encode_hit_areas(output.hit_areas)),
      e.on("canvas-tap", decode_canvas_tap(on_tap)),
    ],
    [],
  )
}

pub fn canvas_element_interactive(
  output: CanvasOutput(msg),
  on_tap: fn(Float, Float) -> msg,
  on_hover: fn(Float, Float) -> msg,
  on_leave: msg,
  on_mouse_down: fn(Float, Float) -> msg,
  on_mouse_up: msg,
) -> Element(msg) {
  ensure_registered()
  element.element(
    "saola-canvas",
    [
      a.property("commands", encode_commands(output.commands)),
      a.property("hitAreas", encode_hit_areas(output.hit_areas)),
      e.on("canvas-tap", decode_canvas_tap(on_tap)),
      e.on("canvas-hover", decode_canvas_tap(on_hover)),
      e.on("canvas-leave", decode.success(on_leave)),
      e.on("canvas-mousedown", decode_canvas_tap(on_mouse_down)),
      e.on("canvas-mouseup", decode.success(on_mouse_up)),
    ],
    [],
  )
}
