import gleam/list
import gleam/option
import saola/canvas_command as canvas
import saola/entity_graph_canvas.{
  type GraphEdge, type GraphNode, EntityGraphCanvasAttrs, GraphEdge, GraphNode,
  default_entity_graph_canvas_attrs, entity_graph_canvas,
}
import saola/graph_layout.{type NodePosition, NodePosition}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

fn sample_nodes() -> List(GraphNode) {
  [
    GraphNode(id: "a", label: "Node A", group: ""),
    GraphNode(id: "b", label: "Node B", group: ""),
    GraphNode(id: "c", label: "Node C", group: ""),
  ]
}

fn sample_positions() -> List(NodePosition) {
  [
    NodePosition(id: "a", x: 0.0, y: 0.0),
    NodePosition(id: "b", x: 0.5, y: 0.5),
    NodePosition(id: "c", x: 1.0, y: 1.0),
  ]
}

fn sample_edges() -> List(GraphEdge) {
  [
    GraphEdge(id: "e1", source: "a", target: "b", label: ""),
    GraphEdge(id: "e2", source: "b", target: "c", label: ""),
  ]
}

// ---------------------------------------------------------------------------
// node_commands — one Arc per node
// ---------------------------------------------------------------------------

pub fn node_arc_count_matches_nodes_test() {
  let output =
    entity_graph_canvas(
      sample_nodes(),
      [],
      sample_positions(),
      default_entity_graph_canvas_attrs,
      option.None,
    )
  let arcs =
    list.filter(output.commands, fn(cmd) {
      case cmd {
        canvas.Arc(_, _, _, _, _, _) -> True
        _ -> False
      }
    })
  assert list.length(arcs) == 3
}

pub fn node_labels_as_fill_text_test() {
  let output =
    entity_graph_canvas(
      sample_nodes(),
      [],
      sample_positions(),
      default_entity_graph_canvas_attrs,
      option.None,
    )
  let has_a =
    list.any(output.commands, fn(cmd) {
      case cmd {
        canvas.FillText("Node A", _, _) -> True
        _ -> False
      }
    })
  assert has_a
}

// ---------------------------------------------------------------------------
// node_hit_areas — one CircleHit per node when handler provided
// ---------------------------------------------------------------------------

pub fn hit_area_count_matches_nodes_test() {
  let output =
    entity_graph_canvas(
      sample_nodes(),
      [],
      sample_positions(),
      default_entity_graph_canvas_attrs,
      option.Some(fn(id) { id }),
    )
  assert list.length(output.hit_areas) == 3
}

pub fn no_hit_areas_without_handler_test() {
  let output =
    entity_graph_canvas(
      sample_nodes(),
      [],
      sample_positions(),
      default_entity_graph_canvas_attrs,
      option.None,
    )
  assert output.hit_areas == []
}

pub fn hit_areas_are_circles_test() {
  let output =
    entity_graph_canvas(
      sample_nodes(),
      [],
      sample_positions(),
      default_entity_graph_canvas_attrs,
      option.Some(fn(id) { id }),
    )
  let all_circles =
    list.all(output.hit_areas, fn(area) {
      case area {
        canvas.CircleHit(_, _, _, _) -> True
        _ -> False
      }
    })
  assert all_circles
}

// ---------------------------------------------------------------------------
// edge commands — edges produce lines
// ---------------------------------------------------------------------------

pub fn edges_produce_stroke_commands_test() {
  let output =
    entity_graph_canvas(
      sample_nodes(),
      sample_edges(),
      sample_positions(),
      default_entity_graph_canvas_attrs,
      option.None,
    )
  let strokes =
    list.filter(output.commands, fn(cmd) {
      case cmd {
        canvas.Stroke -> True
        _ -> False
      }
    })
  // Two edges → two line strokes (arrowheads use Fill, not Stroke)
  assert list.length(strokes) == 2
}

// ---------------------------------------------------------------------------
// transform — Save / Restore wraps inner commands
// ---------------------------------------------------------------------------

pub fn save_restore_wraps_commands_test() {
  let output =
    entity_graph_canvas(
      sample_nodes(),
      [],
      sample_positions(),
      default_entity_graph_canvas_attrs,
      option.None,
    )
  let first = list.first(output.commands)
  let last =
    output.commands
    |> list.reverse
    |> list.first
  assert first == Ok(canvas.Save)
  assert last == Ok(canvas.Restore)
}

// ---------------------------------------------------------------------------
// Empty positions — nodes not in pos_map are silently skipped
// ---------------------------------------------------------------------------

pub fn missing_positions_skipped_test() {
  let output =
    entity_graph_canvas(
      sample_nodes(),
      [],
      [],
      default_entity_graph_canvas_attrs,
      option.Some(fn(id) { id }),
    )
  // No hit areas since no positions
  assert output.hit_areas == []
}

// ---------------------------------------------------------------------------
// Zoom scaling — hit area radius scales with zoom
// ---------------------------------------------------------------------------

pub fn zoom_scales_hit_area_radius_test() {
  let attrs_zoom2 =
    EntityGraphCanvasAttrs(..default_entity_graph_canvas_attrs, zoom: 2.0)
  let out1 =
    entity_graph_canvas(
      [GraphNode(id: "x", label: "X", group: "")],
      [],
      [NodePosition(id: "x", x: 0.5, y: 0.5)],
      default_entity_graph_canvas_attrs,
      option.Some(fn(id) { id }),
    )
  let out2 =
    entity_graph_canvas(
      [GraphNode(id: "x", label: "X", group: "")],
      [],
      [NodePosition(id: "x", x: 0.5, y: 0.5)],
      attrs_zoom2,
      option.Some(fn(id) { id }),
    )
  let r1 = case list.first(out1.hit_areas) {
    Ok(canvas.CircleHit(_, _, r, _)) -> r
    _ -> 0.0
  }
  let r2 = case list.first(out2.hit_areas) {
    Ok(canvas.CircleHit(_, _, r, _)) -> r
    _ -> 0.0
  }
  assert r2 == r1 *. 2.0
}
