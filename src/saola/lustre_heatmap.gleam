import gleam/dict.{type Dict}
import gleam/dynamic/decode
import gleam/float
import gleam/int
import gleam/list
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/svg
import lustre/event as e
import saola/component/canvas

// ---------------------------------------------------------------------------
// Public types
// ---------------------------------------------------------------------------

pub type HeatmapCell {
  HeatmapCell(row: Int, col: Int, value: Float)
}

pub type HeatmapAttrs {
  HeatmapAttrs(rows: Int, cols: Int, cell_size: Int, color_scheme: String)
}

pub const default_heatmap_attrs = HeatmapAttrs(
  rows: 80,
  cols: 80,
  cell_size: 6,
  color_scheme: "blues",
)

// ---------------------------------------------------------------------------
// Display value — deterministic "random" integer per cell (0–100)
// ---------------------------------------------------------------------------

pub fn cell_display_value(row: Int, col: Int, seed: Int) -> Int {
  let raw = row * 7919 + col * 6271 + seed * 4987
  let m = raw % 101
  case m < 0 {
    True -> m + 101
    False -> m
  }
}

// ---------------------------------------------------------------------------
// SVG renderer — one <rect> element per cell
// ---------------------------------------------------------------------------

pub fn heatmap_svg(
  data: List(HeatmapCell),
  attrs: HeatmapAttrs,
) -> Element(msg) {
  let HeatmapAttrs(cols:, rows:, cell_size:, color_scheme:) = attrs
  let cs = int.to_string(cell_size)
  let w = int.to_string(cols * cell_size)
  let h = int.to_string(rows * cell_size)
  svg.svg(
    [
      a.attribute("viewBox", "0 0 " <> w <> " " <> h),
      a.attribute("width", w),
      a.attribute("height", h),
      a.attribute("xmlns", "http://www.w3.org/2000/svg"),
    ],
    [
      svg.g(
        [],
        list.map(data, fn(cell) {
          svg.rect([
            a.attribute("x", int.to_string(cell.col * cell_size)),
            a.attribute("y", int.to_string(cell.row * cell_size)),
            a.attribute("width", cs),
            a.attribute("height", cs),
            a.attribute("fill", value_to_color(cell.value, color_scheme)),
          ])
        }),
      ),
    ],
  )
}

// ---------------------------------------------------------------------------
// Cell color — respects painted state for both SVG and Canvas renderers
// ---------------------------------------------------------------------------

const painted_color = "hsl(48 96% 53%)"

pub fn paint_key(row: Int, col: Int) -> String {
  int.to_string(row) <> ":" <> int.to_string(col)
}

fn cell_fill(
  cell: HeatmapCell,
  color_scheme: String,
  painted: Dict(String, Bool),
) -> String {
  case dict.has_key(painted, paint_key(cell.row, cell.col)) {
    True -> painted_color
    False -> value_to_color(cell.value, color_scheme)
  }
}

// ---------------------------------------------------------------------------
// SVG renderer with hover + click — pointer-events:none on <g> keeps
// offsetX/Y relative to the <svg> root for all mouse events
// ---------------------------------------------------------------------------

fn decode_mouse_pos(callback: fn(Float, Float) -> msg) -> decode.Decoder(msg) {
  use x <- decode.field("offsetX", decode.float)
  use y <- decode.field("offsetY", decode.float)
  decode.success(callback(x, y))
}

pub fn heatmap_svg_interactive(
  data: List(HeatmapCell),
  attrs: HeatmapAttrs,
  painted: Dict(String, Bool),
  on_click: fn(Float, Float) -> msg,
  on_hover: fn(Float, Float) -> msg,
  on_leave: msg,
  on_mouse_down: fn(Float, Float) -> msg,
  on_mouse_up: msg,
) -> Element(msg) {
  let HeatmapAttrs(cols:, rows:, cell_size:, color_scheme:) = attrs
  let cs = int.to_string(cell_size)
  let w = int.to_string(cols * cell_size)
  let h = int.to_string(rows * cell_size)
  svg.svg(
    [
      a.attribute("viewBox", "0 0 " <> w <> " " <> h),
      a.attribute("width", w),
      a.attribute("height", h),
      a.attribute("xmlns", "http://www.w3.org/2000/svg"),
      a.attribute("style", "cursor:crosshair;"),
      e.on("click", decode_mouse_pos(on_click)),
      e.on("mousemove", decode_mouse_pos(on_hover)),
      e.on("mouseleave", decode.success(on_leave)),
      e.on("mousedown", decode_mouse_pos(on_mouse_down)),
      e.on("mouseup", decode.success(on_mouse_up)),
    ],
    [
      svg.g(
        [a.attribute("pointer-events", "none")],
        list.map(data, fn(cell) {
          svg.rect([
            a.attribute("x", int.to_string(cell.col * cell_size)),
            a.attribute("y", int.to_string(cell.row * cell_size)),
            a.attribute("width", cs),
            a.attribute("height", cs),
            a.attribute("fill", cell_fill(cell, color_scheme, painted)),
          ])
        }),
      ),
    ],
  )
}

// ---------------------------------------------------------------------------
// Canvas renderer — two commands per cell (SetFill + FillRect)
// ---------------------------------------------------------------------------

pub fn heatmap_canvas(
  data: List(HeatmapCell),
  attrs: HeatmapAttrs,
  painted: Dict(String, Bool),
) -> canvas.CanvasOutput(msg) {
  let HeatmapAttrs(cell_size:, color_scheme:, ..) = attrs
  let cs = int.to_float(cell_size)
  let commands =
    list.flat_map(data, fn(cell) {
      [
        canvas.SetFill(cell_fill(cell, color_scheme, painted)),
        canvas.FillRect(
          int.to_float(cell.col * cell_size),
          int.to_float(cell.row * cell_size),
          cs,
          cs,
        ),
      ]
    })
  canvas.CanvasOutput(commands:, hit_areas: [])
}

// ---------------------------------------------------------------------------
// Data generation — 2D smooth noise via inverse-distance hills
// ---------------------------------------------------------------------------

/// Generate a rows×cols heatmap dataset with smooth gaussian-like blobs.
/// `seed` shifts the noise so callers can regenerate different patterns.
pub fn generate_data(rows: Int, cols: Int, seed: Int) -> List(HeatmapCell) {
  list.flat_map(iota(rows), fn(row) {
    list.map(iota(cols), fn(col) {
      HeatmapCell(row:, col:, value: cell_value(row, col, rows, cols, seed))
    })
  })
}

/// Interpolate between two seeded datasets for smooth animation.
/// `t` is 0.0 → 1.0 (fraction of progress toward seed_b).
pub fn generate_lerp_data(
  rows: Int,
  cols: Int,
  seed_a: Int,
  seed_b: Int,
  t: Float,
) -> List(HeatmapCell) {
  list.flat_map(iota(rows), fn(row) {
    list.map(iota(cols), fn(col) {
      let va = cell_value(row, col, rows, cols, seed_a)
      let vb = cell_value(row, col, rows, cols, seed_b)
      HeatmapCell(row:, col:, value: va +. { vb -. va } *. t)
    })
  })
}

// Deterministic float in [0, 1) keyed by (seed, slot).
// Each slot produces an independent stream — hill positions never alias.
fn sf(seed: Int, slot: Int) -> Float {
  let raw = { seed * 31_337 + slot * 9973 + seed * slot * 1237 } % 997
  let pos = case raw < 0 {
    True -> raw + 997
    False -> raw
  }
  int.to_float(pos) /. 997.0
}

fn cell_value(row: Int, col: Int, rows: Int, cols: Int, seed: Int) -> Float {
  let r = int.to_float(row) /. int.to_float(int.max(rows - 1, 1))
  let c = int.to_float(col) /. int.to_float(int.max(cols - 1, 1))
  // Hill centers, widths fully driven by seed — every seed yields a new layout
  let b1 =
    hill(
      r,
      c,
      0.05 +. sf(seed, 0) *. 0.9,
      0.05 +. sf(seed, 1) *. 0.9,
      0.03 +. sf(seed, 12) *. 0.08,
    )
  let b2 =
    hill(
      r,
      c,
      0.05 +. sf(seed, 2) *. 0.9,
      0.05 +. sf(seed, 3) *. 0.9,
      0.03 +. sf(seed, 13) *. 0.08,
    )
  let b3 =
    hill(
      r,
      c,
      0.05 +. sf(seed, 4) *. 0.9,
      0.05 +. sf(seed, 5) *. 0.9,
      0.03 +. sf(seed, 14) *. 0.08,
    )
  let b4 =
    hill(
      r,
      c,
      0.05 +. sf(seed, 6) *. 0.9,
      0.05 +. sf(seed, 7) *. 0.9,
      0.03 +. sf(seed, 15) *. 0.08,
    )
  // Per-cell fine noise: broken up so it doesn't correlate across seeds
  let n =
    int.to_float(
      {
        row
        * 7919
        + col
        * 6271
        + seed
        * 4987
        + { row + seed }
        * { col + 1 }
        * 1009
      }
      % 127,
    )
    /. 127.0
  float.clamp(
    b1 *. 0.55 +. b2 *. 0.5 +. b3 *. 0.45 +. b4 *. 0.4 +. n *. 0.06,
    min: 0.0,
    max: 1.0,
  )
}

// 1 / (1 + d² / σ)  →  smooth peak = 1.0 at center, falls off as ~1/r²
fn hill(r: Float, c: Float, cr: Float, cc: Float, sigma: Float) -> Float {
  let d2 = { r -. cr } *. { r -. cr } +. { c -. cc } *. { c -. cc }
  1.0 /. { 1.0 +. d2 /. sigma }
}

// ---------------------------------------------------------------------------
// Color mapping
// ---------------------------------------------------------------------------

fn value_to_color(v: Float, scheme: String) -> String {
  let #(h, s, l_lo, l_hi) = scheme_params(scheme)
  // v = 0 → light (l_hi); v = 1 → dark (l_lo)
  let l = float.round(l_hi -. v *. { l_hi -. l_lo })
  "hsl("
  <> int.to_string(h)
  <> " "
  <> int.to_string(s)
  <> "% "
  <> int.to_string(l)
  <> "%)"
}

// #(hue, saturation%, lightness_dark, lightness_light)
fn scheme_params(scheme: String) -> #(Int, Int, Float, Float) {
  case scheme {
    "reds" -> #(4, 75, 22.0, 96.0)
    "greens" -> #(142, 65, 20.0, 95.0)
    "warm" -> #(36, 88, 18.0, 97.0)
    "purples" -> #(272, 68, 20.0, 95.0)
    _ -> #(221, 83, 18.0, 96.0)
  }
}

// ---------------------------------------------------------------------------
// Helper — tail-recursive [0 .. n-1]
// ---------------------------------------------------------------------------

fn iota(n: Int) -> List(Int) {
  iota_acc(n - 1, [])
}

fn iota_acc(i: Int, acc: List(Int)) -> List(Int) {
  case i < 0 {
    True -> acc
    False -> iota_acc(i - 1, [i, ..acc])
  }
}
