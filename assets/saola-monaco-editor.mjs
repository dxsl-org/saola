import * as monaco from 'monaco-editor/esm/vs/editor/editor.api'
import EditorWorker from 'monaco-editor/esm/vs/editor/editor.worker?worker'
import 'monaco-editor/esm/vs/basic-languages/css/css.contribution'
import 'monaco-editor/esm/vs/basic-languages/html/html.contribution'
import 'monaco-editor/esm/vs/basic-languages/javascript/javascript.contribution'
import 'monaco-editor/esm/vs/basic-languages/typescript/typescript.contribution'

self.MonacoEnvironment = {
  getWorker() {
    return new EditorWorker()
  },
}

const template = document.createElement('template')
template.innerHTML = `
  <style>
    :host {
      display: block;
      min-width: 0;
      border: 1px solid color-mix(in oklab, currentColor 16%, transparent);
      border-radius: 8px;
      overflow: hidden;
      background: #1e1e1e;
    }

    .editor {
      width: 100%;
      min-height: 180px;
    }
  </style>
  <div class="editor"></div>
`

class SaolaMonacoEditor extends HTMLElement {
  static observedAttributes = ['value', 'language', 'theme', 'height', 'read-only']

  constructor() {
    super()
    this.attachShadow({ mode: 'open' }).append(template.content.cloneNode(true))
    this.container = this.shadowRoot.querySelector('.editor')
    this.resizeObserver = new ResizeObserver(() => this.editor?.layout())
    this.changeDisposable = null
  }

  connectedCallback() {
    this.container.style.height = `${this.height}px`
    this.editor = monaco.editor.create(this.container, {
      value: this.value,
      language: this.language,
      theme: this.theme,
      readOnly: this.readOnly,
      automaticLayout: false,
      minimap: { enabled: true },
      fontSize: 14,
      lineNumbers: 'on',
      scrollBeyondLastLine: false,
      tabSize: 2,
      wordWrap: 'on',
    })
    this.changeDisposable = this.editor.onDidChangeModelContent(() => {
      const value = this.editor.getValue()
      this.dispatchEvent(new CustomEvent('saola-change', {
        bubbles: true,
        detail: { value },
      }))
    })
    this.resizeObserver.observe(this)
  }

  disconnectedCallback() {
    this.resizeObserver.disconnect()
    this.changeDisposable?.dispose()
    this.editor?.dispose()
    this.editor = null
  }

  attributeChangedCallback(name, oldValue, newValue) {
    if (oldValue === newValue || !this.editor) return

    switch (name) {
      case 'value':
        if (this.editor.getValue() !== this.value) {
          this.editor.setValue(this.value)
        }
        break
      case 'language':
        monaco.editor.setModelLanguage(this.editor.getModel(), this.language)
        break
      case 'theme':
        monaco.editor.setTheme(this.theme)
        break
      case 'height':
        this.container.style.height = `${this.height}px`
        this.editor.layout()
        break
      case 'read-only':
        this.editor.updateOptions({ readOnly: this.readOnly })
        break
    }
  }

  get value() {
    return this.getAttribute('value') || ''
  }

  get language() {
    return this.getAttribute('language') || 'javascript'
  }

  get theme() {
    return this.getAttribute('theme') || 'vs-dark'
  }

  get height() {
    return Math.max(Number(this.getAttribute('height') || 360), 180)
  }

  get readOnly() {
    return this.getAttribute('read-only') === 'true'
  }
}

if (!customElements.get('saola-monaco-editor')) {
  customElements.define('saola-monaco-editor', SaolaMonacoEditor)
}
