let defined = false

export function ensure_registered() {
  if (typeof document === 'undefined') return
  if (defined) return
  defined = true
  Promise.all([
    import('codemirror'),
    import('@codemirror/lang-javascript'),
    import('@codemirror/state'),
  ]).then(([{ EditorView, basicSetup }, { javascript }, { EditorState }]) => {
    class SaolaCodemirrorEditor extends HTMLElement {
      static observedAttributes = ['value', 'language', 'theme', 'height', 'read-only']

      constructor() {
        super()
        this.container = document.createElement('div')
        this.container.className = 'saola-codemirror-editor__surface'
        this.editor = null
      }

      connectedCallback() {
        if (!this.container.isConnected) {
          this.append(this.container)
        }
        if (this.editor) return

        this.container.style.height = `${this.height}px`
        this.container.style.overflow = 'auto'

        const startState = EditorState.create({
          doc: this.value,
          extensions: [
            basicSetup,
            javascript(),
            EditorView.updateListener.of((update) => {
              if (update.docChanged) {
                this.dispatchEvent(new CustomEvent('saola-change', {
                  bubbles: true,
                  detail: { value: update.state.doc.toString() },
                }))
              }
            }),
            EditorState.readOnly.of(this.readOnly),
            EditorView.theme({
              '&': { height: `${this.height}px` },
              '.cm-scroller': { overflow: 'auto' },
            }),
          ],
        })

        this.editor = new EditorView({
          state: startState,
          parent: this.container,
        })
      }

      disconnectedCallback() {
        this.editor?.destroy()
        this.editor = null
      }

      attributeChangedCallback(name, oldValue, newValue) {
        if (oldValue === newValue || !this.editor) return

        switch (name) {
          case 'value':
            if (this.editor.state.doc.toString() !== this.value) {
              this.editor.dispatch({
                changes: { from: 0, to: this.editor.state.doc.length, insert: this.value },
              })
            }
            break
          case 'height':
            this.container.style.height = `${this.height}px`
            break
        }
      }

      get value() { return this.getAttribute('value') || '' }
      set value(val) { this.setAttribute('value', val) }

      get language() { return this.getAttribute('language') || 'javascript' }
      set language(val) { this.setAttribute('language', val) }

      get theme() { return this.getAttribute('theme') || 'vs-dark' }
      set theme(val) { this.setAttribute('theme', val) }

      get height() { return Math.max(Number(this.getAttribute('height') || 360), 180) }
      set height(val) { this.setAttribute('height', val) }

      get readOnly() { return this.getAttribute('read-only') === 'true' }
      set readOnly(val) { this.setAttribute('read-only', val ? 'true' : 'false') }
    }

    if (!customElements.get('saola-codemirror-editor')) {
      customElements.define('saola-codemirror-editor', SaolaCodemirrorEditor)
    }
  })
}
