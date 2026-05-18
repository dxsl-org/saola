import gleam/dynamic/decode
import gleam/json
import gleam/list
import gleam/option.{type Option, None, Some}
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/event as e
import saola/entity_graph_canvas.{type GraphEdge, type GraphNode}

pub fn entity_graph_3d(
  nodes: List(GraphNode),
  edges: List(GraphEdge),
  selected_ids: List(String),
  dimmed_ids: List(String),
  on_node_tap: Option(fn(String) -> msg),
) -> Element(msg) {
  ensure_registered()
  let nodes_json =
    json.array(nodes, fn(n) {
      json.object([
        #("id", json.string(n.id)),
        #("label", json.string(n.label)),
        #("group", json.string(n.group)),
      ])
    })
  let edges_json =
    json.array(edges, fn(edge) {
      json.object([
        #("source", json.string(edge.source)),
        #("target", json.string(edge.target)),
      ])
    })
  let tap_attrs = case on_node_tap {
    None -> []
    Some(handler) -> [
      e.on("node-select", {
        use id <- decode.subfield(["detail", "id"], decode.string)
        decode.success(handler(id))
      }),
    ]
  }
  element.element(
    "saola-graph-3d",
    list.flatten([
      [
        a.property("nodes", nodes_json),
        a.property("edges", edges_json),
        a.property("selectedIds", json.array(selected_ids, json.string)),
        a.property("dimmedIds", json.array(dimmed_ids, json.string)),
      ],
      tap_attrs,
    ]),
    [],
  )
}

@external(javascript, "./entity_graph_3d_ffi.mjs", "ensure_registered")
fn ensure_registered() -> Nil
