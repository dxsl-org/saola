let defined = false

export function ensure_registered() {
  if (typeof document === 'undefined') return
  if (defined) return
  defined = true
  import('d3').then((d3) => {
    const template = document.createElement('template')
    template.innerHTML = `
      <style>
        :host {
          display: block;
          min-width: 0;
          color: currentColor;
          font: inherit;
        }
        .chart {
          width: 100%;
          min-height: 180px;
        }
        .title {
          margin: 0 0 12px;
          font-size: 0.95rem;
          font-weight: 600;
        }
        svg {
          display: block;
          width: 100%;
          overflow: visible;
        }
        .axis text,
        .value {
          fill: currentColor;
          font-size: 12px;
        }
        .axis path,
        .axis line,
        .grid line {
          stroke: color-mix(in oklab, currentColor 18%, transparent);
        }
        .grid path {
          display: none;
        }
        .bar {
          fill: var(--saola-chart-bar, #2563eb);
        }
        .bar:hover {
          fill: var(--saola-chart-bar-hover, #1d4ed8);
        }
      </style>
      <figure class="chart">
        <figcaption class="title"></figcaption>
        <svg role="img"></svg>
      </figure>
    `

    class SaolaD3BarChart extends HTMLElement {
      static observedAttributes = ['chart-title', 'height']

      constructor() {
        super()
        this.attachShadow({ mode: 'open' }).append(template.content.cloneNode(true))
        this.figure = this.shadowRoot.querySelector('.chart')
        this.caption = this.shadowRoot.querySelector('.title')
        this.svg = d3.select(this.shadowRoot.querySelector('svg'))
        this.resizeObserver = new ResizeObserver(() => this.render())
      }

      set series(value) {
        this._series = Array.isArray(value) ? value : []
        if (this.isConnected) this.render()
      }

      connectedCallback() {
        this.resizeObserver.observe(this)
        this.render()
      }

      disconnectedCallback() {
        this.resizeObserver.disconnect()
      }

      attributeChangedCallback() {
        this.render()
      }

      render() {
        if (!this.isConnected) return

        const data = this._series || []
        const title = this.getAttribute('chart-title') || ''
        const height = Math.max(Number(this.getAttribute('height') || 280), 180)
        const width = Math.max(this.clientWidth || 640, 320)
        const margin = { top: 18, right: 18, bottom: 40, left: 48 }
        const innerWidth = width - margin.left - margin.right
        const innerHeight = height - margin.top - margin.bottom

        this.caption.textContent = title
        this.caption.hidden = title === ''
        this.figure.style.minHeight = `${height}px`

        this.svg.selectAll('*').remove()
        this.svg.attr('viewBox', `0 0 ${width} ${height}`)

        if (data.length === 0) {
          this.svg
            .append('text')
            .attr('x', width / 2)
            .attr('y', height / 2)
            .attr('text-anchor', 'middle')
            .attr('class', 'value')
            .text('No data')
          return
        }

        const maxValue = d3.max(data, (d) => d.value) || 0
        const x = d3
          .scaleBand()
          .domain(data.map((d) => d.label))
          .range([0, innerWidth])
          .padding(0.24)
        const y = d3
          .scaleLinear()
          .domain([0, maxValue])
          .nice()
          .range([innerHeight, 0])

        const root = this.svg
          .append('g')
          .attr('transform', `translate(${margin.left},${margin.top})`)

        root
          .append('g')
          .attr('class', 'grid')
          .call(d3.axisLeft(y).ticks(4).tickSize(-innerWidth).tickFormat(''))

        root
          .append('g')
          .attr('class', 'axis')
          .attr('transform', `translate(0,${innerHeight})`)
          .call(d3.axisBottom(x).tickSizeOuter(0))

        root.append('g').attr('class', 'axis').call(d3.axisLeft(y).ticks(4))

        root
          .selectAll('.bar')
          .data(data)
          .join('rect')
          .attr('class', 'bar')
          .attr('x', (d) => x(d.label))
          .attr('y', (d) => y(d.value))
          .attr('width', x.bandwidth())
          .attr('height', (d) => innerHeight - y(d.value))
          .append('title')
          .text((d) => `${d.label}: ${d.value}`)

        root
          .selectAll('.value')
          .data(data)
          .join('text')
          .attr('class', 'value')
          .attr('x', (d) => (x(d.label) || 0) + x.bandwidth() / 2)
          .attr('y', (d) => y(d.value) - 6)
          .attr('text-anchor', 'middle')
          .text((d) => d.value)
      }
    }

    if (!customElements.get('saola-d3-bar-chart')) {
      customElements.define('saola-d3-bar-chart', SaolaD3BarChart)
    }
  })
}
