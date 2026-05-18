let _defined = false

export function ensure_registered() {
  if (typeof document === 'undefined') return
  if (_defined) return
  _defined = true

  const template = document.createElement('template')
template.innerHTML = `
  <style>
    :host { display: block; position: relative; font-family: inherit; }
    :host([disabled]) { opacity: 0.5; pointer-events: none; }

    .trigger {
      display: flex; flex-wrap: wrap; align-items: center; gap: 4px;
      min-height: 36px; padding: 4px 8px; cursor: pointer;
      border: 1px solid hsl(var(--border, 214 32% 91%));
      border-radius: calc(var(--radius, 0.5rem) - 2px);
      background: hsl(var(--background, 0 0% 100%));
      user-select: none;
    }
    .trigger:focus { outline: none; box-shadow: 0 0 0 2px hsl(var(--ring, 222 84% 5%)); }

    .chip {
      display: inline-flex; align-items: center; gap: 2px;
      padding: 1px 6px; font-size: 0.75rem; line-height: 1.5;
      border-radius: calc(var(--radius, 0.5rem) - 4px);
      background: hsl(var(--secondary, 210 40% 96%));
      color: hsl(var(--secondary-foreground, 222 47% 11%));
    }
    .chip-remove {
      cursor: pointer; padding: 0 1px; font-size: 1em; line-height: 1;
      background: none; border: none; color: inherit; opacity: 0.7;
    }
    .chip-remove:hover { opacity: 1; }
    .placeholder { color: hsl(var(--muted-foreground, 215 16% 47%)); font-size: 0.875rem; }

    .dropdown {
      display: none; position: absolute; top: calc(100% + 4px); left: 0;
      min-width: 100%; z-index: 50; padding: 4px;
      border: 1px solid hsl(var(--border, 214 32% 91%));
      border-radius: var(--radius, 0.5rem);
      background: hsl(var(--popover, 0 0% 100%));
      box-shadow: 0 4px 16px rgba(0,0,0,.08);
      max-height: 240px; overflow-y: auto;
    }
    :host([open]) .dropdown { display: block; }

    .option {
      display: flex; align-items: center; gap: 8px; padding: 6px 8px;
      cursor: pointer; border-radius: calc(var(--radius, 0.5rem) - 4px);
      font-size: 0.875rem;
    }
    .option:hover { background: hsl(var(--accent, 210 40% 96%)); }
    .option[aria-selected="true"] { background: hsl(var(--accent, 210 40% 96%)); }
    .option[aria-selected="true"]::before { content: "✓"; font-size: 0.8em; opacity: 0.7; }
    .option[aria-selected="false"]::before { content: ""; display: inline-block; width: 1em; }
    .option[disabled] { opacity: 0.4; pointer-events: none; }
  </style>
  <div class="trigger" tabindex="0" role="combobox" aria-haspopup="listbox" aria-expanded="false"></div>
  <div class="dropdown" role="listbox" aria-multiselectable="true"></div>
`

class SaolaMultiselect extends HTMLElement {
  static observedAttributes = ['placeholder', 'disabled', 'max-selected']

  constructor() {
    super()
    this.attachShadow({ mode: 'open' }).append(template.content.cloneNode(true))
    this._options = []
    this._selected = []
    this._onTriggerClick = this._onTriggerClick.bind(this)
    this._onDocClick = this._onDocClick.bind(this)
    this._onKeydown = this._onKeydown.bind(this)
  }

  connectedCallback() {
    const trigger = this._trigger()
    trigger.addEventListener('click', this._onTriggerClick)
    trigger.addEventListener('keydown', this._onKeydown)
    document.addEventListener('click', this._onDocClick)
    this._render()
  }

  disconnectedCallback() {
    this._trigger().removeEventListener('click', this._onTriggerClick)
    this._trigger().removeEventListener('keydown', this._onKeydown)
    document.removeEventListener('click', this._onDocClick)
  }

  attributeChangedCallback() {
    if (this.isConnected) this._render()
  }

  set options(val) {
    this._options = Array.isArray(val) ? val : []
    if (this.isConnected) this._render()
  }

  set selected(val) {
    this._selected = Array.isArray(val) ? val : []
    if (this.isConnected) this._render()
  }

  get _maxSelected() {
    const v = parseInt(this.getAttribute('max-selected'), 10)
    return isNaN(v) ? Infinity : v
  }

  _trigger() { return this.shadowRoot.querySelector('.trigger') }
  _dropdown() { return this.shadowRoot.querySelector('.dropdown') }

  _onTriggerClick(e) {
    if (e.target.classList.contains('chip-remove')) return
    this._toggleOpen()
  }

  _onDocClick(e) {
    if (!this.contains(e.target) && !this.shadowRoot.contains(e.target)) this._close()
  }

  _onKeydown(e) {
    if (e.key === 'Escape') { this._close(); return }
    if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); this._toggleOpen() }
  }

  _toggleOpen() {
    this.hasAttribute('open') ? this._close() : this._open()
  }

  _open() {
    this.setAttribute('open', '')
    this._trigger().setAttribute('aria-expanded', 'true')
  }

  _close() {
    this.removeAttribute('open')
    this._trigger().setAttribute('aria-expanded', 'false')
  }

  _toggle(value) {
    const idx = this._selected.indexOf(value)
    let next
    if (idx >= 0) {
      next = this._selected.filter(v => v !== value)
    } else {
      if (this._selected.length >= this._maxSelected) return
      next = [...this._selected, value]
    }
    this._selected = next
    this._render()
    this.dispatchEvent(new CustomEvent('multiselect-change', {
      detail: { values: next },
      bubbles: true,
    }))
  }

  _render() {
    const trigger = this._trigger()
    const dropdown = this._dropdown()
    const placeholder = this.getAttribute('placeholder') || 'Select…'

    trigger.innerHTML = ''
    if (this._selected.length === 0) {
      const p = document.createElement('span')
      p.className = 'placeholder'
      p.textContent = placeholder
      trigger.appendChild(p)
    } else {
      this._selected.forEach(val => {
        const opt = this._options.find(o => o.value === val)
        const label = opt ? opt.label : val
        const chip = document.createElement('span')
        chip.className = 'chip'
        chip.textContent = label
        const rm = document.createElement('button')
        rm.className = 'chip-remove'
        rm.setAttribute('aria-label', `Remove ${label}`)
        rm.textContent = '×'
        rm.addEventListener('click', e => { e.stopPropagation(); this._toggle(val) })
        chip.appendChild(rm)
        trigger.appendChild(chip)
      })
    }

    dropdown.innerHTML = ''
    this._options.forEach(opt => {
      const isSelected = this._selected.includes(opt.value)
      const isDisabled = !isSelected && this._selected.length >= this._maxSelected
      const el = document.createElement('div')
      el.className = 'option'
      el.setAttribute('role', 'option')
      el.setAttribute('aria-selected', String(isSelected))
      if (isDisabled) el.setAttribute('disabled', '')
      el.textContent = opt.label
      el.addEventListener('click', () => this._toggle(opt.value))
      dropdown.appendChild(el)
    })
  }
}

  if (!customElements.get('saola-multiselect')) {
    customElements.define('saola-multiselect', SaolaMultiselect)
  }
}
