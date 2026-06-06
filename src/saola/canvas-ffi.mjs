export function request_animation_frame(cb) {
  if (typeof requestAnimationFrame !== 'undefined') requestAnimationFrame(cb)
}

// Off-screen canvas for measure_text — reused across calls
let _mc = null

export function measure_text(font, text) {
  if (typeof document === 'undefined') return 0.0
  if (!_mc) _mc = document.createElement('canvas').getContext('2d')
  _mc.font = font
  return _mc.measureText(text).width
}

let defined = false

export function ensure_registered() {
  if (typeof document === 'undefined') return
  if (defined) return
  defined = true

  class SaolaCanvas extends HTMLElement {
    // Light DOM — canvas mouse events must NOT be in Shadow DOM
    // (retargeting breaks coordinates, same issue as Cytoscape)

    connectedCallback() {
      if (!this._canvas) {
        this._canvas = document.createElement('canvas')
        this.style.display = 'block'
        this.style.width = '100%'
        this.style.height = '100%'
        this.append(this._canvas)
        this._ro = new ResizeObserver(() => this._resize())
        this._ro.observe(this)
        this._canvas.addEventListener('click', this._onClick.bind(this))
        this._canvas.addEventListener('mousemove', this._onMouseMove.bind(this))
        this._canvas.addEventListener('mouseleave', this._onMouseLeave.bind(this))
        this._canvas.addEventListener('mousedown', this._onMouseDown.bind(this))
        this._canvas.addEventListener('mouseup', this._onMouseUp.bind(this))
        this._canvas.addEventListener('wheel', this._onWheel.bind(this), { passive: true })
      }
      this._resize()
    }

    disconnectedCallback() {
      this._ro?.disconnect()
    }

    set commands(val) {
      this._commands = Array.isArray(val) ? val : []
      if (this.isConnected) this._draw()
    }

    set hitAreas(val) {
      this._hitAreas = Array.isArray(val) ? val : []
    }

    _resize() {
      if (!this._canvas) return
      const w = this.clientWidth
      const h = this.clientHeight
      if (w === this._lastW && h === this._lastH) return
      this._lastW = w
      this._lastH = h
      const dpr = window.devicePixelRatio || 1
      this._canvas.width = w * dpr
      this._canvas.height = h * dpr
      this._canvas.style.width = w + 'px'
      this._canvas.style.height = h + 'px'
      this._dpr = dpr
      this._draw()
    }

    _draw() {
      if (!this._canvas || !this.isConnected) return
      const ctx = this._canvas.getContext('2d')
      const dpr = this._dpr || window.devicePixelRatio || 1
      const w = this.clientWidth
      const h = this.clientHeight
      ctx.save()
      ctx.scale(dpr, dpr)
      ctx.clearRect(0, 0, w, h)
      for (const cmd of this._commands ?? []) executeCommand(ctx, cmd)
      ctx.restore()
    }

    _clientPos(e) {
      const rect = this._canvas.getBoundingClientRect()
      return { x: e.clientX - rect.left, y: e.clientY - rect.top }
    }

    _onClick(e) {
      const { x, y } = this._clientPos(e)
      this.dispatchEvent(new CustomEvent('canvas-tap', { detail: { x, y }, bubbles: true }))
    }

    _onMouseLeave() {
      this.dispatchEvent(new CustomEvent('canvas-leave', { bubbles: true }))
    }

    _onMouseMove(e) {
      const { x, y } = this._clientPos(e)
      this.dispatchEvent(new CustomEvent('canvas-hover', { detail: { x, y }, bubbles: true }))
      if (this._dragging) {
        const dx = x - this._dragStart.x
        const dy = y - this._dragStart.y
        this._dragStart = { x, y }
        this.dispatchEvent(new CustomEvent('canvas-drag', { detail: { dx, dy }, bubbles: true }))
      }
    }

    _onMouseDown(e) {
      const { x, y } = this._clientPos(e)
      this._dragging = true
      this._dragStart = { x, y }
      this.dispatchEvent(new CustomEvent('canvas-mousedown', { detail: { x, y }, bubbles: true }))
    }

    _onMouseUp() {
      this._dragging = false
      this.dispatchEvent(new CustomEvent('canvas-mouseup', { bubbles: true }))
    }

    _onWheel(e) {
      this.dispatchEvent(new CustomEvent('canvas-wheel', {
        detail: { delta: e.deltaY },
        bubbles: true,
      }))
    }
  }

  customElements.define('saola-canvas', SaolaCanvas)
}

function executeCommand(ctx, cmd) {
  switch (cmd.type) {
    case 'SetFill':      ctx.fillStyle = cmd.color; break
    case 'SetStroke':    ctx.strokeStyle = cmd.color; break
    case 'SetLineWidth': ctx.lineWidth = cmd.width; break
    case 'SetFont':      ctx.font = cmd.font; break
    case 'SetAlpha':     ctx.globalAlpha = cmd.alpha; break
    case 'SetLineDash':      ctx.setLineDash(cmd.segments); break
    case 'SetTextAlign':     ctx.textAlign = cmd.align; break
    case 'SetTextBaseline':  ctx.textBaseline = cmd.baseline; break
    case 'Save':         ctx.save(); break
    case 'Restore':      ctx.restore(); break
    case 'Translate':    ctx.translate(cmd.x, cmd.y); break
    case 'Scale':        ctx.scale(cmd.x, cmd.y); break
    case 'Rotate':       ctx.rotate(cmd.angle); break
    case 'BeginPath':    ctx.beginPath(); break
    case 'MoveTo':       ctx.moveTo(cmd.x, cmd.y); break
    case 'LineTo':       ctx.lineTo(cmd.x, cmd.y); break
    case 'Arc':          ctx.arc(cmd.cx, cmd.cy, cmd.r, cmd.start, cmd.end, cmd.ccw); break
    case 'QuadTo':       ctx.quadraticCurveTo(cmd.cpx, cmd.cpy, cmd.x, cmd.y); break
    case 'BezierTo':     ctx.bezierCurveTo(cmd.cp1x, cmd.cp1y, cmd.cp2x, cmd.cp2y, cmd.x, cmd.y); break
    case 'ClosePath':    ctx.closePath(); break
    case 'Fill':         ctx.fill(); break
    case 'Stroke':       ctx.stroke(); break
    case 'Clip':         ctx.clip(); break
    case 'FillRect':     ctx.fillRect(cmd.x, cmd.y, cmd.w, cmd.h); break
    case 'StrokeRect':   ctx.strokeRect(cmd.x, cmd.y, cmd.w, cmd.h); break
    case 'ClearRect':    ctx.clearRect(cmd.x, cmd.y, cmd.w, cmd.h); break
    case 'FillText':     ctx.fillText(cmd.text, cmd.x, cmd.y); break
    case 'StrokeText':   ctx.strokeText(cmd.text, cmd.x, cmd.y); break
  }
}
