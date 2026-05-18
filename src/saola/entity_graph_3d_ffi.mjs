import ForceGraph3D from '3d-force-graph'

const NODE_COLORS = {
  critical: '#ef4444',
  high:     '#f59e0b',
  medium:   '#a855f7',
  low:      '#6b7280',
}

const BG = 'hsl(215,28%,11%)'
const LINK_COLOR = 'hsl(215,30%,48%)'
const DIMMED_COLOR = '#1e2535'
const SELECTED_COLOR = '#ffffff'

class SaolaGraph3D extends HTMLElement {
  constructor() {
    super()
    this._nodes = []
    this._edges = []
    this._selectedIds = new Set()
    this._dimmedIds = new Set()
    this._graph = null
    this._ro = null
    this._ready = false
  }

  connectedCallback() {
    this.style.display = 'block'
    this.style.overflow = 'hidden'
    this._build()
    this._ro = new ResizeObserver(() => {
      if (this._graph && this.clientWidth > 0) {
        this._graph.width(this.clientWidth).height(this.clientHeight)
      }
    })
    this._ro.observe(this)
  }

  disconnectedCallback() {
    if (this._ro) { this._ro.disconnect(); this._ro = null }
    if (this._graph) {
      try { this._graph._destructor?.() } catch {}
    }
    this.innerHTML = ''
    this._graph = null
    this._ready = false
  }

  set nodes(value) {
    this._nodes = Array.isArray(value) ? value : []
    if (this._ready) this._pushData()
  }

  set edges(value) {
    this._edges = Array.isArray(value) ? value : []
    if (this._ready) this._pushData()
  }

  set selectedIds(value) {
    this._selectedIds = new Set(Array.isArray(value) ? value : [])
    if (this._ready) this._graph.nodeColor(n => this._nodeColor(n))
  }

  set dimmedIds(value) {
    this._dimmedIds = new Set(Array.isArray(value) ? value : [])
    if (this._ready) this._graph.nodeColor(n => this._nodeColor(n))
  }

  _build() {
    const w = this.clientWidth || 360
    const h = this.clientHeight || 300

    this._graph = ForceGraph3D({ controlType: 'orbit' })(this)
      .backgroundColor(BG)
      .width(w)
      .height(h)
      // Nodes
      .nodeId('id')
      .nodeLabel('label')
      .nodeRelSize(2)
      .nodeResolution(8)
      .nodeColor(n => this._nodeColor(n))
      .nodeOpacity(0.92)
      // Links
      .linkSource('source')
      .linkTarget('target')
      .linkColor(() => LINK_COLOR)
      .linkOpacity(0.35)
      .linkWidth(0.4)
      .linkDirectionalParticles(0)
      // Interaction
      .onNodeClick(node => {
        this.dispatchEvent(new CustomEvent('node-select', {
          detail: { id: node.id },
          bubbles: true,
        }))
      })

    this._ready = true
    this._pushData()
  }

  _pushData() {
    if (!this._graph) return
    this._graph.graphData({
      nodes: this._nodes.map(n => ({ id: n.id, label: n.label, group: n.group })),
      links: this._edges.map(e => ({ source: e.source, target: e.target })),
    })
  }

  _nodeColor(node) {
    if (this._dimmedIds.has(node.id)) return DIMMED_COLOR
    if (this._selectedIds.has(node.id)) return SELECTED_COLOR
    return NODE_COLORS[node.group] || NODE_COLORS.low
  }
}

export function ensure_registered() {
  if (!customElements.get('saola-graph-3d')) {
    customElements.define('saola-graph-3d', SaolaGraph3D)
  }
}
