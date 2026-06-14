//// 3D force-directed graph — registered as a Lustre component.
////
//// ## Setup
////
//// Register once at application startup, before the first render:
////
//// ```gleam
//// import saola/component/entity_graph_3d
////
//// pub fn main() {
////   let assert Ok(_) = entity_graph_3d.register()
////   // ... start your Lustre app
//// }
//// ```
////
//// ## Basic usage
////
//// ```gleam
//// entity_graph_3d.entity_graph_3d(
////   nodes, edges,
////   selected_ids: model.selected_ids,
////   dimmed_ids: model.dimmed_ids,
////   on_node_tap: Some(NodeSelected),
//// )
//// ```

import gleam/dynamic.{type Dynamic}
import gleam/dynamic/decode
import gleam/json
import gleam/list
import gleam/option.{type Option, None, Some}
import lustre
import lustre/attribute.{type Attribute} as a
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/event as ev
import saola/entity_graph_canvas.{type GraphEdge, type GraphNode}

pub const tag = "saola-graph-3d"

// ---------------------------------------------------------------------------
// Lustre component
// ---------------------------------------------------------------------------

type Model {
  Model(ready: Bool)
}

type Message {
  GraphReady
}

/// Registers the `<saola-graph-3d>` custom element with the browser.
/// Call once at application startup before rendering any graph elements.
pub fn register() -> Result(Nil, lustre.Error) {
  lustre.register(lustre.component(init, update, view, []), tag)
}

fn init(_) -> #(Model, Effect(Message)) {
  #(Model(ready: False), init_graph())
}

fn init_graph() -> Effect(Message) {
  use dispatch, root <- effect.after_paint
  ffi_build_graph(root, fn() { dispatch(GraphReady) })
  Nil
}

fn update(_: Model, msg: Message) -> #(Model, Effect(Message)) {
  case msg {
    GraphReady -> #(Model(ready: True), effect.none())
  }
}

fn view(_: Model) -> Element(Message) {
  // <slot> is required: lustre.component() attaches a shadow root, and without
  // a slot the light-DOM children (ForceGraph3D's WebGL canvas) are not
  // rendered and receive no pointer/wheel events — breaking orbit-control zoom.
  element.element("slot", [], [])
}

// ---------------------------------------------------------------------------
// Public API
// ---------------------------------------------------------------------------

/// Creates a `<saola-graph-3d>` element accepting raw attribute lists.
pub fn element(attrs: List(Attribute(m))) -> Element(m) {
  element.element(tag, attrs, [])
}

/// Convenience wrapper — encodes nodes/edges/selection state into properties.
pub fn entity_graph_3d(
  nodes: List(GraphNode),
  edges: List(GraphEdge),
  selected_ids: List(String),
  dimmed_ids: List(String),
  on_node_tap: Option(fn(String) -> msg),
) -> Element(msg) {
  let tap_attrs = case on_node_tap {
    None -> []
    Some(handler) -> [on_node_select(handler)]
  }
  element(
    list.flatten([
      [
        a.property("nodes", encode_nodes(nodes)),
        a.property("edges", encode_edges(edges)),
        a.property("selectedIds", json.array(selected_ids, json.string)),
        a.property("dimmedIds", json.array(dimmed_ids, json.string)),
      ],
      tap_attrs,
    ]),
  )
}

/// Fires when the user clicks a node. The handler receives the node's ID.
pub fn on_node_select(handler: fn(String) -> m) -> Attribute(m) {
  ev.on("node-select", {
    use id <- decode.subfield(["detail", "id"], decode.string)
    decode.success(handler(id))
  })
}

pub fn encode_nodes(nodes: List(GraphNode)) -> json.Json {
  json.array(nodes, fn(n) {
    json.object([
      #("id", json.string(n.id)),
      #("label", json.string(n.label)),
      #("group", json.string(n.group)),
    ])
  })
}

pub fn encode_edges(edges: List(GraphEdge)) -> json.Json {
  json.array(edges, fn(e) {
    json.object([
      #("source", json.string(e.source)),
      #("target", json.string(e.target)),
    ])
  })
}

// ---------------------------------------------------------------------------
// FFI
// ---------------------------------------------------------------------------

@external(javascript, "./entity-graph-3d.ffi.mjs", "buildGraph")
fn ffi_build_graph(root: Dynamic, on_ready: fn() -> Nil) -> Nil
