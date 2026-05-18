import gleam/dynamic.{type Dynamic}
import gleam/dynamic/decode
import gleam/json
import lustre/effect.{type Effect}

pub type LayoutNode {
  LayoutNode(id: String)
}

pub type LayoutEdge {
  LayoutEdge(source: String, target: String)
}

pub type NodePosition {
  NodePosition(id: String, x: Float, y: Float)
}

pub type EdgeRoute {
  EdgeRoute(source_id: String, target_id: String, points: List(#(Float, Float)))
}

pub type LayoutResult {
  LayoutResult(positions: List(NodePosition), edge_routes: List(EdgeRoute))
}

/// Runs D3 force simulation in a JS Worker and delivers `LayoutResult` via Lustre Effect.
/// Positions are normalized to [0, 1] — scale to canvas size in view.
pub fn request_layout(
  nodes: List(LayoutNode),
  edges: List(LayoutEdge),
  to_msg: fn(LayoutResult) -> msg,
) -> Effect(msg) {
  let nodes_json = encode_nodes(nodes)
  let edges_json = encode_edges(edges)
  use dispatch <- effect.from
  do_request_layout(nodes_json, edges_json, fn(raw) {
    dispatch(to_msg(decode_layout_result(raw)))
  })
}

@external(javascript, "./graph_layout_ffi.mjs", "request_layout")
fn do_request_layout(
  nodes_json: json.Json,
  edges_json: json.Json,
  callback: fn(Dynamic) -> Nil,
) -> Nil

fn encode_nodes(nodes: List(LayoutNode)) -> json.Json {
  json.array(nodes, fn(n) {
    let LayoutNode(id:) = n
    json.object([#("id", json.string(id))])
  })
}

fn encode_edges(edges: List(LayoutEdge)) -> json.Json {
  json.array(edges, fn(e) {
    let LayoutEdge(source:, target:) = e
    json.object([
      #("source", json.string(source)),
      #("target", json.string(target)),
    ])
  })
}

fn decode_node_position() -> decode.Decoder(NodePosition) {
  use id <- decode.field("id", decode.string)
  use x <- decode.field("x", decode.float)
  use y <- decode.field("y", decode.float)
  decode.success(NodePosition(id:, x:, y:))
}

fn decode_point() -> decode.Decoder(#(Float, Float)) {
  use x <- decode.field("x", decode.float)
  use y <- decode.field("y", decode.float)
  decode.success(#(x, y))
}

fn decode_edge_route() -> decode.Decoder(EdgeRoute) {
  use source_id <- decode.field("source_id", decode.string)
  use target_id <- decode.field("target_id", decode.string)
  use points <- decode.field("points", decode.list(decode_point()))
  decode.success(EdgeRoute(source_id:, target_id:, points:))
}

fn decode_layout_result(value: Dynamic) -> LayoutResult {
  let decoder = {
    use positions <- decode.field("positions", decode.list(decode_node_position()))
    use edge_routes <- decode.field("edge_routes", decode.list(decode_edge_route()))
    decode.success(LayoutResult(positions:, edge_routes:))
  }
  case decode.run(value, decoder) {
    Ok(result) -> result
    Error(_) -> LayoutResult(positions: [], edge_routes: [])
  }
}
