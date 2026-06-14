import ForceGraph3D from '3d-force-graph'

const NODE_COLORS = {
  critical: '#ef4444',
  high:     '#f59e0b',
  medium:   '#a855f7',
  low:      '#6b7280',
}

const BG           = 'hsl(215,28%,11%)'
const LINK_COLOR   = 'hsl(215,30%,48%)'
const DIMMED_COLOR = '#1e2535'
const SELECTED_COLOR = '#ffffff'

/**
 * Initialize ForceGraph3D on the host element and define reactive property
 * setters for nodes, edges, selectedIds, and dimmedIds.
 *
 * Called from the Lustre component via effect.after_paint. At that point the
 * element is connected to the DOM and has layout dimensions.
 *
 * @param {ShadowRoot} root - Lustre component shadow root
 * @param {() => void} onReady - callback dispatched to Gleam when ready
 */
export function buildGraph(root, onReady) {
  // Lustre passes the shadow root; the actual custom element is the host.
  const host = root.host ?? root
  if (!host) return

  host.style.display = 'block'
  host.style.overflow = 'hidden'

  const graph = ForceGraph3D({ controlType: 'orbit' })(host)
    .backgroundColor(BG)
    .width(host.clientWidth || 360)
    .height(host.clientHeight || 300)
    .nodeId('id')
    .nodeLabel('label')
    .nodeRelSize(2)
    .nodeResolution(8)
    .nodeColor(n => nodeColor(host, n))
    .nodeOpacity(0.92)
    .linkSource('source')
    .linkTarget('target')
    .linkColor(() => LINK_COLOR)
    .linkOpacity(0.35)
    .linkWidth(0.4)
    .linkDirectionalParticles(0)
    .onNodeClick(node => {
      host.dispatchEvent(new CustomEvent('node-select', {
        detail: { id: node.id },
        bubbles: true,
      }))
    })

  host._graph = graph
  host._nodes = []
  host._edges = []
  host._selectedIds = new Set()
  host._dimmedIds = new Set()

  const ro = new ResizeObserver(() => {
    if (host._graph && host.clientWidth > 0) {
      host._graph.width(host.clientWidth).height(host.clientHeight)
    }
  })
  ro.observe(host)

  // Capture any values Lustre set as plain properties before setters existed.
  const savedNodes       = host.nodes
  const savedEdges       = host.edges
  const savedSelectedIds = host.selectedIds
  const savedDimmedIds   = host.dimmedIds

  Object.defineProperty(host, 'nodes', {
    configurable: true,
    set(val) {
      host._nodes = Array.isArray(val) ? val : []
      pushData(host)
    },
    get() { return host._nodes },
  })

  Object.defineProperty(host, 'edges', {
    configurable: true,
    set(val) {
      host._edges = Array.isArray(val) ? val : []
      pushData(host)
    },
    get() { return host._edges },
  })

  Object.defineProperty(host, 'selectedIds', {
    configurable: true,
    set(val) {
      host._selectedIds = new Set(Array.isArray(val) ? val : [])
      if (host._graph) host._graph.nodeColor(n => nodeColor(host, n))
    },
    get() { return [...host._selectedIds] },
  })

  Object.defineProperty(host, 'dimmedIds', {
    configurable: true,
    set(val) {
      host._dimmedIds = new Set(Array.isArray(val) ? val : [])
      if (host._graph) host._graph.nodeColor(n => nodeColor(host, n))
    },
    get() { return [...host._dimmedIds] },
  })

  // Replay values that Lustre set before the setters were defined.
  if (savedNodes       !== undefined) host.nodes       = savedNodes
  if (savedEdges       !== undefined) host.edges       = savedEdges
  if (savedSelectedIds !== undefined) host.selectedIds = savedSelectedIds
  if (savedDimmedIds   !== undefined) host.dimmedIds   = savedDimmedIds

  onReady()
}

function pushData(host) {
  if (!host._graph) return
  host._graph.graphData({
    nodes: host._nodes.map(n => ({ id: n.id, label: n.label, group: n.group })),
    links: host._edges.map(e => ({ source: e.source, target: e.target })),
  })
}

function nodeColor(host, node) {
  if (host._dimmedIds?.has(node.id))   return DIMMED_COLOR
  if (host._selectedIds?.has(node.id)) return SELECTED_COLOR
  return NODE_COLORS[node.group] ?? NODE_COLORS.low
}
