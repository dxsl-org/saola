import saola/graph_layout.{
  EdgeRoute, LayoutEdge, LayoutNode, LayoutResult, NodePosition,
}

// ---------------------------------------------------------------------------
// Type construction — verifies all pub types are accessible
// ---------------------------------------------------------------------------

pub fn layout_node_id_test() {
  let n = LayoutNode(id: "node-1")
  assert n.id == "node-1"
}

pub fn layout_edge_fields_test() {
  let e = LayoutEdge(source: "a", target: "b")
  assert e.source == "a"
  assert e.target == "b"
}

pub fn node_position_fields_test() {
  let p = NodePosition(id: "n1", x: 0.25, y: 0.75)
  assert p.id == "n1"
  assert p.x == 0.25
  assert p.y == 0.75
}

pub fn edge_route_fields_test() {
  let r = EdgeRoute(source_id: "a", target_id: "b", points: [])
  assert r.source_id == "a"
  assert r.target_id == "b"
  assert r.points == []
}

pub fn edge_route_with_points_test() {
  let r = EdgeRoute(source_id: "x", target_id: "y", points: [#(0.1, 0.2), #(0.9, 0.8)])
  assert r.points == [#(0.1, 0.2), #(0.9, 0.8)]
}

pub fn layout_result_fields_test() {
  let result =
    LayoutResult(
      positions: [NodePosition(id: "n1", x: 0.0, y: 0.0)],
      edge_routes: [],
    )
  assert result.edge_routes == []
}

pub fn layout_result_empty_test() {
  let result = LayoutResult(positions: [], edge_routes: [])
  assert result.positions == []
  assert result.edge_routes == []
}
