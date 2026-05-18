import gleam/dict.{type Dict}
import gleam/dynamic/decode
import gleam/float
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
  )
}

pub const default_entity_graph_canvas_attrs = EntityGraphCanvasAttrs(
  width: 640.0,
  height: 400.0,
  pan: #(0.0, 0.0),
  zoom: 1.0,
)

const node_radius = 20.0

const padding = 60.0

const two_pi = 6.283185307179586

pub fn entity_graph_canvas(
  nodes: List(GraphNode),
  edges: List(GraphEdge),
  positions: List(NodePosition),
  attrs: EntityGraphCanvasAttrs,
  on_node_tap: Option(fn(String) -> msg),
) -> canvas.CanvasOutput(msg) {
  let EntityGraphCanvasAttrs(width:, height:, pan:, zoom:) = attrs
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
      edge_commands(edges, pos_map, width, height),
      node_commands(nodes, pos_map, width, height),
      [canvas.Restore],
    ])
  let hit_areas = case on_node_tap {
    None -> []
    Some(handler) ->
      node_hit_areas(nodes, pos_map, pan, zoom, width, height, handler)
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

fn node_commands(
  nodes: List(GraphNode),
  pos_map: Dict(String, #(Float, Float)),
  w: Float,
  h: Float,
) -> List(canvas.CanvasCommand) {
  let circle_cmds =
    list.flat_map(nodes, fn(node) {
      let GraphNode(id:, ..) = node
      case dict.get(pos_map, id) {
        Error(_) -> []
        Ok(#(nx, ny)) -> {
          let #(cx, cy) = scale_position(nx, ny, w, h)
          [canvas.BeginPath, canvas.Arc(cx, cy, node_radius, 0.0, two_pi, False), canvas.Fill]
        }
      }
    })
  let label_cmds =
    list.flat_map(nodes, fn(node) {
      let GraphNode(id:, label:, ..) = node
      case dict.get(pos_map, id) {
        Error(_) -> []
        Ok(#(nx, ny)) -> {
          let #(cx, cy) = scale_position(nx, ny, w, h)
          [canvas.FillText(label, cx, cy)]
        }
      }
    })
  list.flatten([
    [canvas.SetFill("#2563eb")],
    circle_cmds,
    [
      canvas.SetFill("#ffffff"),
      canvas.SetFont("11px sans-serif"),
      canvas.SetTextAlign("center"),
      canvas.SetTextBaseline("middle"),
    ],
    label_cmds,
  ])
}

fn edge_commands(
  edges: List(GraphEdge),
  pos_map: Dict(String, #(Float, Float)),
  w: Float,
  h: Float,
) -> List(canvas.CanvasCommand) {
  let line_cmds =
    list.flat_map(edges, fn(edge) {
      let GraphEdge(source:, target:, ..) = edge
      case dict.get(pos_map, source), dict.get(pos_map, target) {
        Ok(#(snx, sny)), Ok(#(tnx, tny)) -> {
          let #(sx, sy) = scale_position(snx, sny, w, h)
          let #(tx, ty) = scale_position(tnx, tny, w, h)
          draw_edge(sx, sy, tx, ty)
        }
        _, _ -> []
      }
    })
  [
    canvas.SetStroke("hsl(215 16% 47%)"),
    canvas.SetFill("hsl(215 16% 47%)"),
    canvas.SetLineWidth(1.0),
    ..line_cmds
  ]
}

fn draw_edge(sx: Float, sy: Float, tx: Float, ty: Float) -> List(canvas.CanvasCommand) {
  let dx = tx -. sx
  let dy = ty -. sy
  let len = float.square_root(dx *. dx +. dy *. dy) |> result.unwrap(1.0)
  case len <. 0.001 {
    True -> []
    False -> {
      let ux = dx /. len
      let uy = dy /. len
      let start_x = sx +. ux *. node_radius
      let start_y = sy +. uy *. node_radius
      let tip_x = tx -. ux *. node_radius
      let tip_y = ty -. uy *. node_radius
      let perp_x = float.negate(uy)
      let perp_y = ux
      let arrow_len = 10.0
      let arrow_w = 4.0
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
        [canvas.CircleHit(cx, cy, node_radius *. zoom, handler(id))]
      }
    }
  })
}
