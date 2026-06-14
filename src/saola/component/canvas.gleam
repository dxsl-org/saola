//// Canvas component — 2D drawing surface registered as a Lustre component.
////
//// Uses Light DOM (no Shadow DOM) to preserve canvas mouse event retargeting.
////
//// ## Setup
////
//// Register once at application startup, before the first render:
////
//// ```gleam
//// import saola/component/canvas
////
//// pub fn main() {
////   let assert Ok(_) = canvas.register()
////   // ... start your Lustre app
//// }
//// ```
////
//// ## Basic usage
////
//// ```gleam
//// import saola/component/canvas
////
//// let output = canvas.CanvasOutput(commands, hit_areas)
////
//// canvas.element(
////   [
////     a.attribute("data-test", "my-canvas"),
////     canvas.on_tap(fn(x, y) { CanvasTapped(x, y) }),
////   ],
////   output,
//// )
//// ```

import gleam/dynamic.{type Dynamic}
import gleam/dynamic/decode
import gleam/json
import gleam/list
import gleam/option.{type Option, None, Some}
import lustre
import lustre/attribute.{type Attribute} as a
import lustre/component
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as ev

// ---------------------------------------------------------------------------
// Canvas types and encoding
// ---------------------------------------------------------------------------

pub type CanvasCommand {
  SetFill(color: String)
  SetStroke(color: String)
  SetLineWidth(width: Float)
  SetFont(font: String)
  SetAlpha(alpha: Float)
  SetLineDash(segments: List(Float))
  SetTextAlign(align: String)
  SetTextBaseline(baseline: String)
  Save
  Restore
  Translate(x: Float, y: Float)
  Scale(x: Float, y: Float)
  Rotate(angle: Float)
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
  FillRect(x: Float, y: Float, w: Float, h: Float)
  StrokeRect(x: Float, y: Float, w: Float, h: Float)
  ClearRect(x: Float, y: Float, w: Float, h: Float)
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

pub const tag = "saola-canvas"

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
// JSON encoding
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
// Lustre component
// ---------------------------------------------------------------------------

type Model {
  Model(dpr: Float, width: Int, height: Int, has_listeners: Bool)
}

type Message {
  SetDPR(Float)
  SetSize(width: Int, height: Int)
  CanvasTap(x: Float, y: Float)
  CanvasHover(x: Float, y: Float)
  CanvasLeave
  CanvasMouseDown(x: Float, y: Float)
  CanvasMouseUp
  CanvasWheel(delta: Float)
  ListenersRegistered
}

/// Registers the `<saola-canvas>` custom element with the browser.
/// Call once at application startup before rendering any canvas elements.
pub fn register() -> Result(Nil, lustre.Error) {
  let app =
    lustre.component(init, update, view, [
      component.on_property_change("commands", {
        decode.dynamic |> decode.map(fn(_) { ListenersRegistered })
      }),
      component.on_property_change("hit-areas", {
        decode.dynamic |> decode.map(fn(_) { ListenersRegistered })
      }),
    ])
  lustre.register(app, tag)
}

/// Creates a `<saola-canvas>` element.
pub fn element(
  attributes: List(Attribute(m)),
  output: CanvasOutput(m),
) -> Element(m) {
  element.element(
    tag,
    [
      a.property("commands", encode_commands(output.commands)),
      a.property("hit-areas", encode_hit_areas(output.hit_areas)),
      ..attributes
    ],
    [],
  )
}

/// Fires when the canvas is tapped (clicked).
pub fn on_tap(handler: fn(Float, Float) -> m) -> Attribute(m) {
  ev.on("canvas-tap", {
    use x <- decode.subfield(["detail", "x"], decode.float)
    use y <- decode.subfield(["detail", "y"], decode.float)
    decode.success(handler(x, y))
  })
}

/// Fires when the mouse moves over the canvas.
pub fn on_hover(handler: fn(Float, Float) -> m) -> Attribute(m) {
  ev.on("canvas-hover", {
    use x <- decode.subfield(["detail", "x"], decode.float)
    use y <- decode.subfield(["detail", "y"], decode.float)
    decode.success(handler(x, y))
  })
}

/// Fires when the mouse leaves the canvas.
pub fn on_leave(message: m) -> Attribute(m) {
  ev.on("canvas-leave", decode.success(message))
}

/// Fires when the mouse button is pressed.
pub fn on_mouse_down(handler: fn(Float, Float) -> m) -> Attribute(m) {
  ev.on("canvas-mousedown", {
    use x <- decode.subfield(["detail", "x"], decode.float)
    use y <- decode.subfield(["detail", "y"], decode.float)
    decode.success(handler(x, y))
  })
}

/// Fires when the mouse button is released.
pub fn on_mouse_up(message: m) -> Attribute(m) {
  ev.on("canvas-mouseup", decode.success(message))
}

/// Fires when the mouse wheel moves over the canvas.
pub fn on_wheel(handler: fn(Float) -> m) -> Attribute(m) {
  ev.on("canvas-wheel", {
    use delta <- decode.subfield(["detail", "delta"], decode.float)
    decode.success(handler(delta))
  })
}

fn init(_) -> #(Model, Effect(Message)) {
  let model = Model(dpr: 1.0, width: 0, height: 0, has_listeners: False)
  #(model, register_listeners())
}

fn register_listeners() -> Effect(Message) {
  use dispatch, root <- effect.after_paint
  ffi_register_listeners(root, fn(dpr, w, h) {
    dispatch(SetDPR(dpr))
    dispatch(SetSize(w, h))
    dispatch(ListenersRegistered)
  })
  Nil
}

fn update(model: Model, message: Message) -> #(Model, Effect(Message)) {
  case message {
    SetDPR(new_dpr) -> #(Model(..model, dpr: new_dpr), effect.none())
    SetSize(new_width, new_height) -> #(
      Model(..model, width: new_width, height: new_height),
      effect.none(),
    )
    CanvasTap(_, _) -> #(model, effect.none())
    CanvasHover(_, _) -> #(model, effect.none())
    CanvasLeave -> #(model, effect.none())
    CanvasMouseDown(_, _) -> #(model, effect.none())
    CanvasMouseUp -> #(model, effect.none())
    CanvasWheel(_) -> #(model, effect.none())
    ListenersRegistered -> #(Model(..model, has_listeners: True), effect.none())
  }
}

fn view(_: Model) -> Element(Message) {
  h.div([], [])
}

/// Measure the width of text when rendered in the given font.
pub fn measure_text(font: String, text: String) -> Float {
  ffi_measure_text(font, text)
}

@external(javascript, "./canvas.ffi.mjs", "registerListeners")
fn ffi_register_listeners(
  root: Dynamic,
  callback: fn(Float, Int, Int) -> Nil,
) -> Nil

@external(javascript, "./canvas.ffi.mjs", "measureText")
fn ffi_measure_text(font: String, text: String) -> Float
