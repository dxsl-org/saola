let _defined = false

export function ensure_registered() {
  if (typeof document === 'undefined') return
  if (_defined) return
  _defined = true

  const template = document.createElement('template')
template.innerHTML = `
  <style>
    :host { display: block; position: relative; width: 100%; height: 100%; }
    .viewport {
      display: flex; overflow: auto; width: 100%; height: 100%;
      scroll-snap-type: x mandatory; scrollbar-width: none;
    }
    .viewport::-webkit-scrollbar { display: none; }
    :host([orientation="vertical"]) .viewport {
      flex-direction: column; scroll-snap-type: y mandatory;
    }
    ::slotted([data-slot="slide"]) {
      flex: 0 0 100%; scroll-snap-align: start;
    }
  </style>
  <div class="viewport" part="viewport"><slot></slot></div>
`

class SaolaCarousel extends HTMLElement {
  static observedAttributes = ['orientation', 'loop']

  constructor() {
    super()
    this.attachShadow({ mode: 'open' }).append(template.content.cloneNode(true))
    this._index = 0
    this._programmaticScroll = false
    this._onScroll = this._onScroll.bind(this)
    this._scrollEndTimer = null
  }

  get orientation() { return this.getAttribute('orientation') || 'horizontal' }
  get loop() { return this.hasAttribute('loop') }
  get currentIndex() { return this._index }

  connectedCallback() {
    const vp = this.shadowRoot.querySelector('.viewport')
    vp.addEventListener('scroll', this._onScroll, { passive: true })
    requestAnimationFrame(() => this._tagSlides())
  }

  disconnectedCallback() {
    const vp = this.shadowRoot.querySelector('.viewport')
    vp.removeEventListener('scroll', this._onScroll)
    clearTimeout(this._scrollEndTimer)
  }

  attributeChangedCallback() {
    if (this.isConnected) requestAnimationFrame(() => this._tagSlides())
  }

  _tagSlides() {
    Array.from(this.children).forEach(s => s.setAttribute('data-slot', 'slide'))
  }

  _onScroll() {
    if (this._programmaticScroll) return
    clearTimeout(this._scrollEndTimer)
    this._scrollEndTimer = setTimeout(() => this._computeAndDispatch(), 80)
  }

  _slides() { return Array.from(this.children) }

  _computeAndDispatch() {
    const slides = this._slides()
    if (slides.length === 0) return
    const vp = this.shadowRoot.querySelector('.viewport')
    const horiz = this.orientation !== 'vertical'
    const pos = horiz ? vp.scrollLeft : vp.scrollTop
    const sz = horiz ? vp.clientWidth : vp.clientHeight
    if (sz === 0) return
    const idx = Math.round(pos / sz)
    const clamped = Math.max(0, Math.min(slides.length - 1, idx))
    if (clamped === this._index) return
    this._index = clamped
    this._dispatch(clamped, slides.length)
  }

  _dispatch(idx, count) {
    this.dispatchEvent(new CustomEvent('slide-change', {
      detail: {
        index: idx,
        canScrollPrev: this.loop || idx > 0,
        canScrollNext: this.loop || idx < count - 1,
      },
      bubbles: true,
    }))
  }

  scrollPrev() { this._scrollTo(this._index - 1) }
  scrollNext() { this._scrollTo(this._index + 1) }

  _scrollTo(idx) {
    const slides = this._slides()
    if (slides.length === 0) return
    let target = idx
    if (this.loop) {
      target = ((idx % slides.length) + slides.length) % slides.length
    } else {
      target = Math.max(0, Math.min(slides.length - 1, idx))
    }
    const horiz = this.orientation !== 'vertical'
    const vp = this.shadowRoot.querySelector('.viewport')
    const sz = horiz ? vp.clientWidth : vp.clientHeight
    this._programmaticScroll = true
    vp.scrollTo({ [horiz ? 'left' : 'top']: target * sz, behavior: 'smooth' })
    setTimeout(() => {
      this._programmaticScroll = false
      this._index = target
      this._dispatch(target, slides.length)
    }, 350)
  }
}

  if (!customElements.get('saola-carousel')) {
    customElements.define('saola-carousel', SaolaCarousel)
  }
}
