/** @type {CanvasRenderingContext2D | null} */
let measureCanvas = null

/**
 * Measure the width of text in a given font.
 * @param {string} font - CSS font string (e.g., "12px sans-serif")
 * @param {string} text - Text to measure
 * @returns {number} Width in pixels
 */
export function measureText(font, text) {
  if (typeof document === 'undefined') return 0.0
  if (!measureCanvas) {
    measureCanvas = document.createElement('canvas').getContext('2d')
  }
  measureCanvas.font = font
  return measureCanvas.measureText(text).width
}

/**
 * Initialize canvas element, ResizeObserver, and event listeners.
 * Called once per component instance after the ShadowRoot is created.
 * @param {ShadowRoot} root - Component's ShadowRoot
 * @param {(dpr: number, width: number, height: number) => void} callback - Called when canvas is resized
 * @returns {void}
 */
export function registerListeners(root, callback) {
  if (typeof document === 'undefined') return

  // root is a ShadowRoot, get the host element
  const host = root.host
  if (!host) return

  // Create canvas element if not already created
  let canvas = root.querySelector('canvas')
  if (!canvas) {
    canvas = document.createElement('canvas')
    canvas.style.display = 'block'
    canvas.style.width = '100%'
    canvas.style.height = '100%'
    root.appendChild(canvas)

    // Set initial DPI and size
    const dpr = window.devicePixelRatio || 1
    const w = host.clientWidth
    const h = host.clientHeight
    canvas.width = w * dpr
    canvas.height = h * dpr
    canvas.style.width = w + 'px'
    canvas.style.height = h + 'px'
    callback(dpr, w, h)

    // Store state on canvas
    canvas._dpr = dpr
    canvas._lastW = w
    canvas._lastH = h

    // Set up ResizeObserver
    const ro = new ResizeObserver(() => {
      const newW = host.clientWidth
      const newH = host.clientHeight
      if (newW === canvas._lastW && newH === canvas._lastH) return
      canvas._lastW = newW
      canvas._lastH = newH

      const newDpr = window.devicePixelRatio || 1
      canvas._dpr = newDpr
      canvas.width = newW * newDpr
      canvas.height = newH * newDpr
      canvas.style.width = newW + 'px'
      canvas.style.height = newH + 'px'
      callback(newDpr, newW, newH)
      redraw(canvas)
    })
    ro.observe(host)

    // Canvas event handlers
    const getClientPos = (e) => {
      const rect = canvas.getBoundingClientRect()
      return { x: e.clientX - rect.left, y: e.clientY - rect.top }
    }

    let dragging = false
    let dragStart = { x: 0, y: 0 }

    canvas.addEventListener('click', (e) => {
      const { x, y } = getClientPos(e)
      host.dispatchEvent(
        new CustomEvent('canvas-tap', { detail: { x, y }, bubbles: true }),
      )
    })

    canvas.addEventListener('mouseleave', () => {
      host.dispatchEvent(new CustomEvent('canvas-leave', { bubbles: true }))
    })

    canvas.addEventListener('mousemove', (e) => {
      const { x, y } = getClientPos(e)
      host.dispatchEvent(
        new CustomEvent('canvas-hover', { detail: { x, y }, bubbles: true }),
      )
      if (dragging) {
        const dx = x - dragStart.x
        const dy = y - dragStart.y
        dragStart = { x, y }
        host.dispatchEvent(
          new CustomEvent('canvas-drag', { detail: { dx, dy }, bubbles: true }),
        )
      }
    })

    canvas.addEventListener('mousedown', (e) => {
      const { x, y } = getClientPos(e)
      dragging = true
      dragStart = { x, y }
      host.dispatchEvent(
        new CustomEvent('canvas-mousedown', { detail: { x, y }, bubbles: true }),
      )
    })

    canvas.addEventListener('mouseup', () => {
      dragging = false
      host.dispatchEvent(new CustomEvent('canvas-mouseup', { bubbles: true }))
    })

    canvas.addEventListener('wheel', (e) => {
      host.dispatchEvent(
        new CustomEvent('canvas-wheel', {
          detail: { delta: e.deltaY },
          bubbles: true,
        }),
      )
    })

    // Store canvas on host for property setters
    host._canvas = canvas

    // Capture any properties that Lustre may have already set
    const originalCommands = host.commands
    const originalHitAreas = host['hit-areas']

    // Define property setters for commands and hit-areas
    Object.defineProperty(host, 'commands', {
      set(val) {
        host._commands = Array.isArray(val) ? val : []
        if (host.isConnected) redraw(canvas)
      },
      get() {
        return host._commands || []
      },
    })

    Object.defineProperty(host, 'hit-areas', {
      set(val) {
        host._hitAreas = Array.isArray(val) ? val : []
      },
      get() {
        return host._hitAreas || []
      },
    })

    // Restore the original property values through the setters
    // This triggers the redraw if commands were set
    if (originalCommands !== undefined) {
      host.commands = originalCommands
    }
    if (originalHitAreas !== undefined) {
      host['hit-areas'] = originalHitAreas
    }
  }
}

/**
 * Clear canvas and redraw all commands.
 * Called whenever canvas is resized or commands change.
 * @param {HTMLCanvasElement} canvas - Canvas element to redraw
 * @returns {void}
 * @private
 */
function redraw(canvas) {
  if (!canvas) return
  const ctx = canvas.getContext('2d')
  const dpr = canvas.ownerDocument.defaultView.devicePixelRatio || 1
  const w = canvas.offsetWidth
  const h = canvas.offsetHeight

  ctx.save()
  ctx.scale(dpr, dpr)
  ctx.clearRect(0, 0, w, h)

  // Get host element (saola-canvas)
  const host = canvas.getRootNode()?.host
  const commands = host?._commands ?? []
  for (const cmd of commands) executeCommand(ctx, cmd)

  ctx.restore()
}

/**
 * Execute a single canvas drawing command.
 * @param {CanvasRenderingContext2D} ctx - Canvas 2D context
 * @param {Object} cmd - Command object with type and parameters
 * @returns {void}
 * @private
 */
function executeCommand(ctx, cmd) {
  switch (cmd.type) {
    case 'SetFill':
      ctx.fillStyle = cmd.color
      break
    case 'SetStroke':
      ctx.strokeStyle = cmd.color
      break
    case 'SetLineWidth':
      ctx.lineWidth = cmd.width
      break
    case 'SetFont':
      ctx.font = cmd.font
      break
    case 'SetAlpha':
      ctx.globalAlpha = cmd.alpha
      break
    case 'SetLineDash':
      ctx.setLineDash(cmd.segments)
      break
    case 'SetTextAlign':
      ctx.textAlign = cmd.align
      break
    case 'SetTextBaseline':
      ctx.textBaseline = cmd.baseline
      break
    case 'Save':
      ctx.save()
      break
    case 'Restore':
      ctx.restore()
      break
    case 'Translate':
      ctx.translate(cmd.x, cmd.y)
      break
    case 'Scale':
      ctx.scale(cmd.x, cmd.y)
      break
    case 'Rotate':
      ctx.rotate(cmd.angle)
      break
    case 'BeginPath':
      ctx.beginPath()
      break
    case 'MoveTo':
      ctx.moveTo(cmd.x, cmd.y)
      break
    case 'LineTo':
      ctx.lineTo(cmd.x, cmd.y)
      break
    case 'Arc':
      ctx.arc(cmd.cx, cmd.cy, cmd.r, cmd.start, cmd.end, cmd.ccw)
      break
    case 'QuadTo':
      ctx.quadraticCurveTo(cmd.cpx, cmd.cpy, cmd.x, cmd.y)
      break
    case 'BezierTo':
      ctx.bezierCurveTo(cmd.cp1x, cmd.cp1y, cmd.cp2x, cmd.cp2y, cmd.x, cmd.y)
      break
    case 'ClosePath':
      ctx.closePath()
      break
    case 'Fill':
      ctx.fill()
      break
    case 'Stroke':
      ctx.stroke()
      break
    case 'Clip':
      ctx.clip()
      break
    case 'FillRect':
      ctx.fillRect(cmd.x, cmd.y, cmd.w, cmd.h)
      break
    case 'StrokeRect':
      ctx.strokeRect(cmd.x, cmd.y, cmd.w, cmd.h)
      break
    case 'ClearRect':
      ctx.clearRect(cmd.x, cmd.y, cmd.w, cmd.h)
      break
    case 'FillText':
      ctx.fillText(cmd.text, cmd.x, cmd.y)
      break
    case 'StrokeText':
      ctx.strokeText(cmd.text, cmd.x, cmd.y)
      break
  }
}
