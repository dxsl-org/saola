import { EditorView, basicSetup } from 'codemirror'
import { javascript } from '@codemirror/lang-javascript'
import { EditorState } from '@codemirror/state'

/**
 * Initialize CodeMirror inside the Lustre component's shadow DOM.
 *
 * Called from the Lustre component via effect.after_paint. At that point the
 * shadow DOM exists (including the .editor-root div), so we can safely mount
 * CodeMirror into it.
 *
 * Passing `root: shadowRoot` to EditorView tells CodeMirror to inject its
 * dynamic StyleModules into the shadow root rather than the main document,
 * which is required for styles to be visible inside a Shadow DOM boundary.
 *
 * @param {ShadowRoot} root - Lustre component shadow root
 * @param {() => void} onReady - callback dispatched to Gleam when ready
 */
export function buildEditor(root, onReady) {
  const host = root.host ?? root
  if (!host) return

  const container = root.querySelector('.editor-root')
  if (!container) {
    console.error('code-editor: .editor-root not found in shadow DOM')
    return
  }

  const height = Math.max(Number(host.getAttribute('height') || 360), 180)
  const readOnly = host.getAttribute('read-only') === 'true'
  const value = host.getAttribute('value') || ''

  container.style.height = `${height}px`
  container.style.overflow = 'auto'

  const startState = EditorState.create({
    doc: value,
    extensions: [
      basicSetup,
      javascript(),
      EditorView.updateListener.of((update) => {
        if (update.docChanged) {
          host.dispatchEvent(
            new CustomEvent('saola-change', {
              bubbles: true,
              composed: true,
              detail: { value: update.state.doc.toString() },
            }),
          )
        }
      }),
      EditorState.readOnly.of(readOnly),
      EditorView.theme({
        '&': { height: `${height}px` },
        '.cm-scroller': { overflow: 'auto' },
      }),
    ],
  })

  const view = new EditorView({
    state: startState,
    parent: container,
    root,
  })

  // Observe attribute changes from the Lustre parent
  const observer = new MutationObserver((mutations) => {
    for (const mutation of mutations) {
      if (mutation.attributeName === 'value') {
        const newValue = host.getAttribute('value') || ''
        if (view.state.doc.toString() !== newValue) {
          view.dispatch({
            changes: { from: 0, to: view.state.doc.length, insert: newValue },
          })
        }
      } else if (mutation.attributeName === 'height') {
        const newHeight = Math.max(
          Number(host.getAttribute('height') || 360),
          180,
        )
        container.style.height = `${newHeight}px`
      }
    }
  })
  observer.observe(host, {
    attributes: true,
    attributeFilter: ['value', 'height'],
  })

  // Cleanup on disconnect
  host.addEventListener(
    'disconnected',
    () => {
      observer.disconnect()
      view.destroy()
    },
    { once: true },
  )

  onReady()
}
