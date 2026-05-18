import * as d3 from 'd3'

self.onmessage = ({ data: { id, nodes, edges } }) => {
  const simNodes = nodes.map((n) => ({ id: n.id, x: Math.random(), y: Math.random() }))
  const simEdges = edges.map((e) => ({ source: e.source, target: e.target }))

  const sim = d3
    .forceSimulation(simNodes)
    .force('link', d3.forceLink(simEdges).id((n) => n.id).distance(80))
    .force('charge', d3.forceManyBody().strength(-200))
    .force('center', d3.forceCenter(0.5, 0.5))
    .stop()

  // Run synchronously until converged (max 300 ticks)
  for (let i = 0; i < 300 && sim.alpha() > 0.01; i++) sim.tick()

  // Normalize positions to [0, 1] so Gleam can scale to any canvas size
  const xs = simNodes.map((n) => n.x)
  const ys = simNodes.map((n) => n.y)
  const minX = Math.min(...xs)
  const maxX = Math.max(...xs)
  const minY = Math.min(...ys)
  const maxY = Math.max(...ys)
  const rangeX = maxX - minX || 1
  const rangeY = maxY - minY || 1

  const positions = simNodes.map((n) => ({
    id: n.id,
    x: (n.x - minX) / rangeX,
    y: (n.y - minY) / rangeY,
  }))

  const edge_routes = simEdges.map((e) => ({
    source_id: typeof e.source === 'object' ? e.source.id : e.source,
    target_id: typeof e.target === 'object' ? e.target.id : e.target,
    points: [],
  }))

  self.postMessage({ id, result: { positions, edge_routes } })
}
