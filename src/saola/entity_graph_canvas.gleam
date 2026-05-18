import gleam/dict.{type Dict}
import gleam/dynamic/decode
import gleam/float
import gleam/int
import gleam/list
import gleam/option.{type Option, None, Some}
import gleam/result
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/event as e
import saola/canvas_command as canvas
import saola/graph_layout.{type NodePosition}

pub type GraphNode {
  GraphNode(id: String, label: String, group: String)
}

pub type GraphEdge {
  GraphEdge(id: String, source: String, target: String, label: String)
}

pub type EntityGraphCanvasAttrs {
  EntityGraphCanvasAttrs(
    width: Float,
    height: Float,
    pan: #(Float, Float),
    zoom: Float,
    selected_ids: List(String),
    dimmed_ids: List(String),
    node_radius: Float,
  )
}

pub const default_entity_graph_canvas_attrs = EntityGraphCanvasAttrs(
  width: 640.0,
  height: 400.0,
  pan: #(0.0, 0.0),
  zoom: 1.0,
  selected_ids: [],
  dimmed_ids: [],
  node_radius: 18.0,
)

const padding = 60.0

const two_pi = 6.283185307179586

pub fn entity_graph_canvas(
  nodes: List(GraphNode),
  edges: List(GraphEdge),
  positions: List(NodePosition),
  attrs: EntityGraphCanvasAttrs,
  on_node_tap: Option(fn(String) -> msg),
) -> canvas.CanvasOutput(msg) {
  let EntityGraphCanvasAttrs(width:, height:, pan:, zoom:, selected_ids:, dimmed_ids:, node_radius:) = attrs
  let pos_map = build_position_map(positions)
  let #(px, py) = pan
  let commands =
    list.flatten([
      [
        canvas.Save,
        canvas.Translate(px +. width /. 2.0, py +. height /. 2.0),
        canvas.Scale(zoom, zoom),
        canvas.Translate(float.negate(width /. 2.0), float.negate(height /. 2.0)),
      ],
      edge_commands(edges, pos_map, width, height, dimmed_ids, node_radius),
      node_commands(nodes, pos_map, width, height, selected_ids, dimmed_ids, node_radius),
      [canvas.Restore],
    ])
  let hit_areas = case on_node_tap {
    None -> []
    Some(handler) ->
      node_hit_areas(nodes, pos_map, pan, zoom, width, height, node_radius, handler)
  }
  canvas.CanvasOutput(commands:, hit_areas:)
}

pub fn entity_graph_element(
  output: canvas.CanvasOutput(msg),
  on_tap: fn(Float, Float) -> msg,
  on_drag: fn(Float, Float) -> msg,
  on_zoom: fn(Float) -> msg,
) -> Element(msg) {
  ensure_canvas_registered()
  element.element("saola-canvas", [
    a.property("commands", canvas.encode_commands(output.commands)),
    a.property("hitAreas", canvas.encode_hit_areas(output.hit_areas)),
    e.on("canvas-tap", decode_xy("x", "y", on_tap)),
    e.on("canvas-drag", decode_xy("dx", "dy", on_drag)),
    e.on("canvas-wheel", decode_delta(on_zoom)),
  ], [])
}

@external(javascript, "./canvas_ffi.mjs", "ensure_registered")
fn ensure_canvas_registered() -> Nil

fn decode_xy(
  key_x: String,
  key_y: String,
  callback: fn(Float, Float) -> msg,
) -> decode.Decoder(msg) {
  use x <- decode.subfield(["detail", key_x], decode.float)
  use y <- decode.subfield(["detail", key_y], decode.float)
  decode.success(callback(x, y))
}

fn decode_delta(callback: fn(Float) -> msg) -> decode.Decoder(msg) {
  use delta <- decode.subfield(["detail", "delta"], decode.float)
  decode.success(callback(delta))
}

fn build_position_map(positions: List(NodePosition)) -> Dict(String, #(Float, Float)) {
  positions
  |> list.map(fn(p) { #(p.id, #(p.x, p.y)) })
  |> dict.from_list
}

fn scale_position(nx: Float, ny: Float, w: Float, h: Float) -> #(Float, Float) {
  #(padding +. nx *. { w -. 2.0 *. padding }, padding +. ny *. { h -. 2.0 *. padding })
}

fn group_color(group: String) -> String {
  case group {
    "critical" -> "#ef4444"
    "high" -> "#f59e0b"
    "medium" -> "#a855f7"
    _ -> "#6b7280"
  }
}

fn node_commands(
  nodes: List(GraphNode),
  pos_map: Dict(String, #(Float, Float)),
  w: Float,
  h: Float,
  selected_ids: List(String),
  dimmed_ids: List(String),
  nr: Float,
) -> List(canvas.CanvasCommand) {
  let normal = list.filter(nodes, fn(n) { !list.contains(selected_ids, n.id) && !list.contains(dimmed_ids, n.id) })
  let dimmed = list.filter(nodes, fn(n) { list.contains(dimmed_ids, n.id) })
  let selected = list.filter(nodes, fn(n) { list.contains(selected_ids, n.id) })

  let draw_circle = fn(node: GraphNode) -> List(canvas.CanvasCommand) {
    case dict.get(pos_map, node.id) {
      Error(_) -> []
      Ok(#(nx, ny)) -> {
        let #(cx, cy) = scale_position(nx, ny, w, h)
        [canvas.BeginPath, canvas.Arc(cx, cy, nr, 0.0, two_pi, False), canvas.Fill]
      }
    }
  }

  // Draw a group of nodes, setting fill color per severity group
  let draw_by_severity = fn(ns: List(GraphNode)) {
    list.flat_map(["critical", "high", "medium", "low"], fn(g) {
      let group_nodes = list.filter(ns, fn(n) { n.group == g })
      case group_nodes {
        [] -> []
        _ -> list.flatten([[canvas.SetFill(group_color(g))], list.flat_map(group_nodes, draw_circle)])
      }
    })
  }

  let font_size = float.round(nr *. 1.6)
  let font = int.to_string(font_size) <> "px sans-serif"

  // Labels only for selected nodes — too cluttered otherwise
  let draw_selected_labels =
    list.flat_map(selected, fn(node) {
      case dict.get(pos_map, node.id) {
        Error(_) -> []
        Ok(#(nx, ny)) -> {
          let #(cx, cy) = scale_position(nx, ny, w, h)
          [canvas.FillText(node.label, cx, cy -. nr -. 4.0)]
        }
      }
    })

  let draw_selected_rings =
    list.flat_map(selected, fn(node) {
      case dict.get(pos_map, node.id) {
        Error(_) -> []
        Ok(#(nx, ny)) -> {
          let #(cx, cy) = scale_position(nx, ny, w, h)
          [canvas.BeginPath, canvas.Arc(cx, cy, nr +. 3.0, 0.0, two_pi, False), canvas.Stroke]
        }
      }
    })

  list.flatten([
    [canvas.Save, canvas.SetAlpha(0.18)],
    draw_by_severity(dimmed),
    [canvas.Restore],
    draw_by_severity(normal),
    draw_by_severity(selected),
    [canvas.SetStroke("#ffffff"), canvas.SetLineWidth(2.0)],
    draw_selected_rings,
    [
      canvas.SetFill("#ffffff"),
      canvas.SetFont(font),
      canvas.SetTextAlign("center"),
      canvas.SetTextBaseline("middle"),
    ],
    draw_selected_labels,
  ])
}

fn edge_commands(
  edges: List(GraphEdge),
  pos_map: Dict(String, #(Float, Float)),
  w: Float,
  h: Float,
  dimmed_ids: List(String),
  nr: Float,
) -> List(canvas.CanvasCommand) {
  let edge_color = "hsl(215 30% 58%)"
  let normal_edges =
    list.filter(edges, fn(edge) {
      !list.contains(dimmed_ids, edge.source) || !list.contains(dimmed_ids, edge.target)
    })
  let dimmed_edges =
    list.filter(edges, fn(edge) {
      list.contains(dimmed_ids, edge.source) && list.contains(dimmed_ids, edge.target)
    })

  let draw_edges = fn(es: List(GraphEdge)) {
    list.flat_map(es, fn(edge) {
      case dict.get(pos_map, edge.source), dict.get(pos_map, edge.target) {
        Ok(#(snx, sny)), Ok(#(tnx, tny)) -> {
          let #(sx, sy) = scale_position(snx, sny, w, h)
          let #(tx, ty) = scale_position(tnx, tny, w, h)
          draw_edge(sx, sy, tx, ty, nr)
        }
        _, _ -> []
      }
    })
  }

  list.flatten([
    [canvas.SetStroke(edge_color), canvas.SetFill(edge_color), canvas.SetLineWidth(1.0)],
    draw_edges(normal_edges),
    [canvas.Save, canvas.SetAlpha(0.15), canvas.SetStroke(edge_color), canvas.SetFill(edge_color)],
    draw_edges(dimmed_edges),
    [canvas.Restore],
  ])
}

fn draw_edge(sx: Float, sy: Float, tx: Float, ty: Float, nr: Float) -> List(canvas.CanvasCommand) {
  let dx = tx -. sx
  let dy = ty -. sy
  let len = float.square_root(dx *. dx +. dy *. dy) |> result.unwrap(1.0)
  case len <. 0.001 {
    True -> []
    False -> {
      let ux = dx /. len
      let uy = dy /. len
      let start_x = sx +. ux *. nr
      let start_y = sy +. uy *. nr
      let tip_x = tx -. ux *. nr
      let tip_y = ty -. uy *. nr
      let perp_x = float.negate(uy)
      let perp_y = ux
      let arrow_len = nr *. 0.6
      let arrow_w = nr *. 0.25
      let base_x = tip_x -. ux *. arrow_len
      let base_y = tip_y -. uy *. arrow_len
      [
        canvas.BeginPath,
        canvas.MoveTo(start_x, start_y),
        canvas.LineTo(base_x, base_y),
        canvas.Stroke,
        canvas.BeginPath,
        canvas.MoveTo(tip_x, tip_y),
        canvas.LineTo(base_x +. perp_x *. arrow_w, base_y +. perp_y *. arrow_w),
        canvas.LineTo(base_x -. perp_x *. arrow_w, base_y -. perp_y *. arrow_w),
        canvas.ClosePath,
        canvas.Fill,
      ]
    }
  }
}

fn node_hit_areas(
  nodes: List(GraphNode),
  pos_map: Dict(String, #(Float, Float)),
  pan: #(Float, Float),
  zoom: Float,
  w: Float,
  h: Float,
  nr: Float,
  handler: fn(String) -> msg,
) -> List(canvas.HitArea(msg)) {
  let #(px, py) = pan
  list.flat_map(nodes, fn(node) {
    let GraphNode(id:, ..) = node
    case dict.get(pos_map, id) {
      Error(_) -> []
      Ok(#(nx, ny)) -> {
        let #(gx, gy) = scale_position(nx, ny, w, h)
        let cx = { gx -. w /. 2.0 } *. zoom +. px +. w /. 2.0
        let cy = { gy -. h /. 2.0 } *. zoom +. py +. h /. 2.0
        [canvas.CircleHit(cx, cy, nr *. zoom, handler(id))]
      }
    }
  })
}
