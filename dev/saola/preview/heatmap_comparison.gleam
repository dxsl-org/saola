import gleam/dict
import gleam/float
import gleam/int
import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h
import lustre/event as e
import saola/badge
import saola/button
import saola/component/canvas
import saola/lustre_heatmap
import saola/preview/model.{
  type Message, type Model, HeatmapCanvasCellClicked, HeatmapCanvasHoverLeft,
  HeatmapCanvasHovered, HeatmapCellPxChanged, HeatmapHover, HeatmapPaintEnded,
  HeatmapPaintStarted, HeatmapRandomize, HeatmapRipple, HeatmapSchemeChanged,
  HeatmapSizeChanged, HeatmapSvgCellClicked, HeatmapSvgHoverLeft,
  HeatmapSvgHovered,
}

// ---------------------------------------------------------------------------
// View
// ---------------------------------------------------------------------------

pub fn view(model: Model) -> Element(Message) {
  let size = model.heatmap_size
  let cell_px = model.heatmap_cell_px
  let scheme = model.heatmap_scheme
  let phase = model.heatmap_anim_time *. 0.4
  let seed_a = model.heatmap_seed + float.truncate(phase)
  let seed_b = seed_a + 1
  let lerp_t = phase -. int.to_float(float.truncate(phase))
  let data =
    lustre_heatmap.generate_lerp_data(size, size, seed_a, seed_b, lerp_t)
  let attrs =
    lustre_heatmap.HeatmapAttrs(
      rows: size,
      cols: size,
      cell_size: cell_px,
      color_scheme: scheme,
    )

  let cell_count = size * size
  let px = size * cell_px
  let dim_px = int.to_string(px) <> "px"
  let canvas_style =
    "width:"
    <> dim_px
    <> "; height:"
    <> dim_px
    <> "; display:block; cursor:crosshair;"
  let cell_px_f = int.to_float(cell_px)
  let max_idx = size - 1

  let to_cell = fn(mx: Float, my: Float) -> #(Int, Int) {
    let col = int.clamp(float.truncate(mx /. cell_px_f), min: 0, max: max_idx)
    let row = int.clamp(float.truncate(my /. cell_px_f), min: 0, max: max_idx)
    #(row, col)
  }
  let on_svg_click = fn(mx: Float, my: Float) -> Message {
    let #(row, col) = to_cell(mx, my)
    HeatmapSvgCellClicked(row, col)
  }
  let on_canvas_click = fn(mx: Float, my: Float) -> Message {
    let #(row, col) = to_cell(mx, my)
    HeatmapCanvasCellClicked(row, col)
  }
  let on_paint_start = fn(mx: Float, my: Float) -> Message {
    let #(row, col) = to_cell(mx, my)
    HeatmapPaintStarted(row, col)
  }

  h.div([a.class("grid gap-6")], [
    ripple_style(),
    // ---- Header -------------------------------------------------------------
    h.header([a.class("grid gap-2")], [
      h.h1([a.class("page-title")], [text("Heatmap: SVG vs Canvas")]),
      h.p([a.class("page-description")], [
        text(
          "Same data, same Gleam color math, two renderers. "
          <> "SVG materialises every cell as a DOM node; the Canvas Display List "
          <> "serialises commands as a single JSON property. "
          <> "Try 120 × 120 and press Randomize to feel the difference.",
        ),
      ]),
    ]),
    // ---- Controls -----------------------------------------------------------
    h.div([a.class("flex flex-wrap gap-6 items-end rounded-lg border p-4")], [
      // Grid size
      h.div([a.class("grid gap-1")], [
        h.p(
          [
            a.class(
              "text-xs font-medium text-muted-foreground uppercase tracking-wide",
            ),
          ],
          [
            text("Grid"),
          ],
        ),
        h.div([a.class("flex gap-1")], [
          size_btn(40, size),
          size_btn(80, size),
          size_btn(120, size),
        ]),
      ]),
      // Cell size
      h.label([a.class("grid gap-1 text-sm font-medium")], [
        text("Cell size: " <> int.to_string(cell_px) <> " px"),
        h.input([
          a.type_("range"),
          a.min("2"),
          a.max("14"),
          a.value(int.to_string(cell_px)),
          e.on_input(fn(v) { HeatmapCellPxChanged(parse_int(v, 6)) }),
          a.class("w-32"),
        ]),
      ]),
      // Color scheme
      h.div([a.class("grid gap-1")], [
        h.p(
          [
            a.class(
              "text-xs font-medium text-muted-foreground uppercase tracking-wide",
            ),
          ],
          [
            text("Scheme"),
          ],
        ),
        h.div([a.class("flex gap-1")], [
          scheme_btn("blues", scheme),
          scheme_btn("reds", scheme),
          scheme_btn("greens", scheme),
          scheme_btn("warm", scheme),
          scheme_btn("purples", scheme),
        ]),
      ]),
      // Randomize button
      button.button_outline("Randomize", HeatmapRandomize),
    ]),
    // ---- Stats bar ----------------------------------------------------------
    h.div(
      [
        a.class(
          "flex flex-wrap gap-4 items-center text-sm text-muted-foreground",
        ),
      ],
      [
        stat_pill(int.to_string(cell_count) <> " cells"),
        stat_pill("SVG: " <> int.to_string(cell_count) <> " DOM nodes"),
        stat_pill(
          "Canvas: "
          <> int.to_string(cell_count * 2)
          <> " commands → 1 draw pass",
        ),
        stat_pill(dim_px <> " × " <> dim_px),
      ],
    ),
    // ---- Side-by-side panels ------------------------------------------------
    h.div([a.class("grid gap-6 grid-cols-2")], [
      renderer_panel(
        "SVG",
        "One <rect> per cell — Lustre diffs the full child list on every update",
        [
          h.div([a.attribute("style", "position:relative; overflow:auto;")], [
            lustre_heatmap.heatmap_svg_interactive(
              data,
              attrs,
              model.heatmap_painted,
              on_svg_click,
              HeatmapSvgHovered,
              HeatmapSvgHoverLeft,
              on_paint_start,
              HeatmapPaintEnded,
            ),
            hover_tooltip(model.heatmap_svg_hover),
            ripple_overlay(model.heatmap_svg_ripple, cell_px),
          ]),
        ],
      ),
      renderer_panel(
        "Canvas",
        "CanvasCommand list — one JSON property update, single rAF paint",
        [
          h.div([a.attribute("style", "position:relative; overflow:auto;")], [
            h.div([a.attribute("style", canvas_style)], [
              canvas.element(
                [
                  canvas.on_tap(on_canvas_click),
                  canvas.on_hover(HeatmapCanvasHovered),
                  canvas.on_leave(HeatmapCanvasHoverLeft),
                  canvas.on_mouse_down(on_paint_start),
                  canvas.on_mouse_up(HeatmapPaintEnded),
                ],
                lustre_heatmap.heatmap_canvas(
                  data,
                  attrs,
                  model.heatmap_painted,
                ),
              ),
            ]),
            hover_tooltip(model.heatmap_canvas_hover),
            ripple_overlay(model.heatmap_canvas_ripple, cell_px),
          ]),
        ],
      ),
    ]),
    // ---- Info panel ---------------------------------------------------------
    info_panel(model),
    // ---- Architecture callout -----------------------------------------------
    h.details([a.class("rounded-lg border p-4 text-sm grid gap-3")], [
      h.summary([a.class("font-medium cursor-pointer")], [
        text("Why Canvas wins at scale"),
      ]),
      h.div([a.class("grid gap-2 text-muted-foreground")], [
        h.p([], [
          text(
            "SVG path: Gleam generates List(HeatmapCell) → Lustre renders N <rect> elements "
            <> "into the real DOM → browser lays out N nodes → Lustre diffs N nodes on every update.",
          ),
        ]),
        h.p([], [
          text(
            "Canvas path: Gleam generates List(CanvasCommand) → encode_commands() serialises "
            <> "to a single JSON array → element.commands = value (one JS property set) "
            <> "→ web component iterates the array in requestAnimationFrame → all cells painted "
            <> "in one synchronous loop. No DOM nodes exist for cells; only one custom element.",
          ),
        ]),
        h.p([], [
          text(
            "The break-even point is ~500–1 000 cells. Beyond that, the Canvas path "
            <> "stays roughly constant-time while SVG update cost grows linearly with N.",
          ),
        ]),
      ]),
    ]),
  ])
}

// ---------------------------------------------------------------------------
// Sub-views
// ---------------------------------------------------------------------------

fn renderer_panel(
  label: String,
  subtitle: String,
  content: List(Element(Message)),
) -> Element(Message) {
  h.div([a.class("grid gap-3 rounded-lg border p-4")], [
    h.div([a.class("flex items-center gap-2 flex-wrap")], [
      badge.badge_default(label),
      h.span([a.class("text-xs text-muted-foreground")], [text(subtitle)]),
    ]),
    ..content
  ])
}

fn hover_tooltip(hover: Option(model.HeatmapHover)) -> Element(Message) {
  case hover {
    None -> text("")
    Some(HeatmapHover(row, col, dv, mx, my)) ->
      h.div(
        [
          a.attribute(
            "style",
            "position:absolute;"
              <> "left:"
              <> int.to_string(float.round(mx) + 14)
              <> "px;"
              <> "top:"
              <> int.to_string(float.round(my) + 14)
              <> "px;"
              <> "background:rgba(0,0,0,0.78);color:#fff;"
              <> "padding:4px 8px;border-radius:4px;"
              <> "font-size:11px;line-height:1.6;"
              <> "pointer-events:none;z-index:20;white-space:nowrap;",
          ),
        ],
        [
          text(
            "row "
            <> int.to_string(row)
            <> "  col "
            <> int.to_string(col)
            <> "  •  "
            <> int.to_string(dv),
          ),
        ],
      )
  }
}

fn stat_pill(label: String) -> Element(Message) {
  h.span([a.class("rounded-full border px-3 py-0.5 text-xs")], [text(label)])
}

fn size_btn(size: Int, current: Int) -> Element(Message) {
  let label = int.to_string(size) <> "×" <> int.to_string(size)
  case size == current {
    True ->
      button.button(
        button.Primary,
        label,
        button.Small,
        None,
        Some(HeatmapSizeChanged(size)),
        button.default_extra_attrs,
      )
    False ->
      button.button(
        button.Secondary,
        label,
        button.Small,
        None,
        Some(HeatmapSizeChanged(size)),
        button.default_extra_attrs,
      )
  }
}

fn scheme_btn(scheme: String, current: String) -> Element(Message) {
  case scheme == current {
    True ->
      button.button(
        button.Primary,
        scheme,
        button.Small,
        None,
        Some(HeatmapSchemeChanged(scheme)),
        button.default_extra_attrs,
      )
    False ->
      button.button(
        button.Secondary,
        scheme,
        button.Small,
        None,
        Some(HeatmapSchemeChanged(scheme)),
        button.default_extra_attrs,
      )
  }
}

fn info_panel(model: Model) -> Element(Message) {
  let painted_count = dict.size(model.heatmap_painted)

  let last_click_content = case model.heatmap_svg_ripple {
    None -> [
      h.p([a.class("text-muted-foreground text-xs italic")], [text("—")]),
    ]
    Some(HeatmapRipple(row, col, _)) -> {
      let dv = lustre_heatmap.cell_display_value(row, col, model.heatmap_seed)
      [
        info_row("Row", int.to_string(row)),
        info_row("Col", int.to_string(col)),
        info_row("Value", int.to_string(dv)),
      ]
    }
  }

  let hover = case model.heatmap_svg_hover {
    Some(v) -> Some(v)
    None -> model.heatmap_canvas_hover
  }
  let hover_content = case hover {
    None -> [
      h.p([a.class("text-muted-foreground text-xs italic")], [text("—")]),
    ]
    Some(HeatmapHover(row, col, dv, ..)) -> [
      info_row("Row", int.to_string(row)),
      info_row("Col", int.to_string(col)),
      info_row("Value", int.to_string(dv)),
    ]
  }

  let paint_status = case model.heatmap_painting {
    True ->
      h.span(
        [
          a.class(
            "inline-block rounded-full bg-amber-400 text-black text-xs font-medium px-2 py-0.5",
          ),
        ],
        [text("Painting")],
      )
    False ->
      h.span(
        [
          a.class(
            "inline-block rounded-full border text-muted-foreground text-xs px-2 py-0.5",
          ),
        ],
        [text("Idle")],
      )
  }

  h.div(
    [
      a.class(
        "rounded-lg border p-4 grid grid-cols-2 gap-x-6 gap-y-4 sm:grid-cols-4 text-sm",
      ),
    ],
    [
      info_col("Last Click", last_click_content),
      h.div([a.class("grid gap-1 content-start")], [
        h.p(
          [
            a.class(
              "text-xs font-medium text-muted-foreground uppercase tracking-wide",
            ),
          ],
          [
            text("Painted"),
          ],
        ),
        info_row(int.to_string(painted_count) <> " cells", ""),
        paint_status,
      ]),
      info_col("Hover", hover_content),
      h.div([a.class("grid gap-1 content-start")], [
        h.p(
          [
            a.class(
              "text-xs font-medium text-muted-foreground uppercase tracking-wide",
            ),
          ],
          [
            text("Grid"),
          ],
        ),
        info_row(
          int.to_string(model.heatmap_size)
            <> "×"
            <> int.to_string(model.heatmap_size),
          int.to_string(model.heatmap_size * model.heatmap_size) <> " cells",
        ),
        info_row("Cell", int.to_string(model.heatmap_cell_px) <> " px"),
      ]),
    ],
  )
}

fn info_col(
  label: String,
  children: List(Element(Message)),
) -> Element(Message) {
  h.div([a.class("grid gap-1 content-start")], [
    h.p(
      [
        a.class(
          "text-xs font-medium text-muted-foreground uppercase tracking-wide",
        ),
      ],
      [text(label)],
    ),
    ..children
  ])
}

fn info_row(label: String, value: String) -> Element(Message) {
  case value {
    "" -> h.p([a.class("font-medium tabular-nums")], [text(label)])
    _ ->
      h.p([a.class("flex justify-between gap-4")], [
        h.span([a.class("text-muted-foreground")], [text(label)]),
        h.span([a.class("font-medium tabular-nums")], [text(value)]),
      ])
  }
}

fn ripple_style() -> Element(Message) {
  h.style(
    [],
    "@keyframes saola-ripple-a{"
      <> "0%{transform:translate(-50%,-50%) scale(0.1);opacity:.8}"
      <> "to{transform:translate(-50%,-50%) scale(6);opacity:0}}"
      <> "@keyframes saola-ripple-b{"
      <> "0%{transform:translate(-50%,-50%) scale(0.1);opacity:.8}"
      <> "to{transform:translate(-50%,-50%) scale(6);opacity:0}}",
  )
}

fn ripple_overlay(
  ripple: Option(model.HeatmapRipple),
  cell_px: Int,
) -> Element(Message) {
  case ripple {
    None -> text("")
    Some(HeatmapRipple(row, col, count)) -> {
      let cx = col * cell_px + cell_px / 2
      let cy = row * cell_px + cell_px / 2
      let r = int.max(cell_px, 4)
      let anim = case count % 2 == 0 {
        True -> "saola-ripple-a"
        False -> "saola-ripple-b"
      }
      h.div(
        [
          a.attribute(
            "style",
            "position:absolute;"
              <> "left:"
              <> int.to_string(cx)
              <> "px;top:"
              <> int.to_string(cy)
              <> "px;width:"
              <> int.to_string(r * 2)
              <> "px;height:"
              <> int.to_string(r * 2)
              <> "px;border-radius:50%;"
              <> "background:hsl(48 96% 53%);"
              <> "pointer-events:none;"
              <> "animation:"
              <> anim
              <> " 0.5s ease-out forwards;z-index:10;",
          ),
        ],
        [],
      )
    }
  }
}

fn parse_int(s: String, default: Int) -> Int {
  case int.parse(s) {
    Ok(n) -> n
    Error(_) -> default
  }
}
