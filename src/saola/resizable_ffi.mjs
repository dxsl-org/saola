let _defined = false

export function ensure_registered() {
  if (typeof document === 'undefined') return
  if (_defined) return
  _defined = true
  _define()
}

function _define() {
  class SaolaResizablePanels extends HTMLElement {
  static observedAttributes = ['direction']

  constructor() {
    super()
    this._sizes = []
    this._minSizes = []
    this._dragging = null
    this._bound = {
      pointerdown: this._onPointerDown.bind(this),
      pointermove: this._onPointerMove.bind(this),
      pointerup: this._onPointerUp.bind(this),
    }
  }

  get direction() {
    return this.getAttribute('direction') || 'horizontal'
  }

  set sizes(value) {
    this._sizes = Array.isArray(value) ? value.map(Number) : []
    if (this.isConnected) this._applyLayout()
  }

  set minSizes(value) {
    this._minSizes = Array.isArray(value) ? value.map(Number) : []
  }

  connectedCallback() {
    this.style.display = 'flex'
    this.style.width = '100%'
    this.style.height = '100%'
    this._applyDirection()
    this._applyLayout()
    this._attachHandlers()
  }

  disconnectedCallback() {
    window.removeEventListener('pointermove', this._bound.pointermove)
    window.removeEventListener('pointerup', this._bound.pointerup)
  }

  attributeChangedCallback(name) {
    if (name === 'direction' && this.isConnected) {
      this._applyDirection()
    }
  }

  _applyDirection() {
    this.style.flexDirection = this.direction === 'vertical' ? 'column' : 'row'
  }

  _panels() {
    return Array.from(this.querySelectorAll('[data-slot="resizable-panel"]'))
  }

  _handles() {
    return Array.from(this.querySelectorAll('[data-slot="resizable-handle"]'))
  }

  _applyLayout() {
    const panels = this._panels()
    if (panels.length === 0) return

    const sizes =
      this._sizes.length === panels.length
        ? this._sizes
        : panels.map(() => 100 / panels.length)

    panels.forEach((panel, i) => {
      panel.style.flexBasis = sizes[i] + '%'
      panel.style.flexGrow = '0'
      panel.style.flexShrink = '0'
      panel.style.overflow = 'auto'
    })
  }

  _attachHandlers() {
    this._handles().forEach((handle, i) => {
      handle.style.cursor = this.direction === 'vertical' ? 'row-resize' : 'col-resize'
      handle.dataset.handleIndex = String(i)
      handle.addEventListener('pointerdown', this._bound.pointerdown)
    })
  }

  _onPointerDown(e) {
    e.preventDefault()
    const handle = e.currentTarget
    const handleIndex = parseInt(handle.dataset.handleIndex, 10)
    const panels = this._panels()
    const totalSize = this.direction === 'vertical' ? this.offsetHeight : this.offsetWidth
    const currentSizes =
      this._sizes.length === panels.length
        ? [...this._sizes]
        : panels.map(() => 100 / panels.length)

    this._dragging = {
      handleIndex,
      startPos: this.direction === 'vertical' ? e.clientY : e.clientX,
      startSizes: currentSizes,
      totalSize,
    }

    handle.setPointerCapture(e.pointerId)
    window.addEventListener('pointermove', this._bound.pointermove)
    window.addEventListener('pointerup', this._bound.pointerup)
  }

  _onPointerMove(e) {
    if (!this._dragging) return
    const { handleIndex, startPos, startSizes, totalSize } = this._dragging
    const currentPos = this.direction === 'vertical' ? e.clientY : e.clientX
    const delta = ((currentPos - startPos) / totalSize) * 100

    const newSizes = [...startSizes]
    const panelA = handleIndex
    const panelB = handleIndex + 1

    const minA = this._minSizes[panelA] ?? 5
    const minB = this._minSizes[panelB] ?? 5

    let newA = Math.max(minA, newSizes[panelA] + delta)
    let newB = Math.max(minB, newSizes[panelB] - delta)

    const total = newA + newB
    const origTotal = startSizes[panelA] + startSizes[panelB]
    if (total !== origTotal) {
      const scale = origTotal / total
      newA *= scale
      newB *= scale
    }

    newSizes[panelA] = newA
    newSizes[panelB] = newB

    this._sizes = newSizes
    this._applyLayout()
  }

  _onPointerUp() {
    if (!this._dragging) return
    window.removeEventListener('pointermove', this._bound.pointermove)
    window.removeEventListener('pointerup', this._bound.pointerup)
    this.dispatchEvent(
      new CustomEvent('resize', { detail: this._sizes, bubbles: true })
    )
    this._dragging = null
  }
}

  if (!customElements.get('saola-resizable-panels')) {
    customElements.define('saola-resizable-panels', SaolaResizablePanels)
  }
}
