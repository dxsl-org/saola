import * as d3 from 'd3'

/**
 * Initialize D3 bar chart inside the Lustre component's shadow DOM.
 *
 * Called from the Lustre component via effect.after_paint. At that point the
 * shadow DOM exists (including the .chart-root div), so we can safely append
 * D3 elements into it.
 *
 * @param {ShadowRoot} root - Lustre component shadow root
 * @param {() => void} onReady - callback dispatched to Gleam when ready
 */
export function buildChart(root, onReady) {
  const host = root.host ?? root
  if (!host) return

  // Append figure+svg into the shadow DOM's .chart-root
  const container = root.querySelector('.chart-root')
  if (!container) {
    console.error('d3-bar-chart: .chart-root not found in shadow DOM')
    return
  }

  const figure = document.createElement('figure')
  figure.className = 'chart'

  const caption = document.createElement('figcaption')
  caption.className = 'title'

  const svgEl = document.createElementNS('http://www.w3.org/2000/svg', 'svg')
  svgEl.setAttribute('role', 'img')

  figure.append(caption, svgEl)
  container.append(figure)

  const svg = d3.select(svgEl)

  function render() {
    if (!host.isConnected) return

    const data = host._series || []
    const title = host.getAttribute('chart-title') || ''
    const height = Math.max(Number(host.getAttribute('height') || 280), 180)
    const width = Math.max(host.clientWidth || 640, 320)
    const margin = { top: 18, right: 18, bottom: 40, left: 48 }
    const innerWidth = width - margin.left - margin.right
    const innerHeight = height - margin.top - margin.bottom

    // Update caption
    caption.textContent = title
    caption.hidden = title === ''
    figure.style.minHeight = `${height}px`

    // Clear previous render
    svg.selectAll('*').remove()
    svg.attr('viewBox', `0 0 ${width} ${height}`)

    // Handle empty data
    if (data.length === 0) {
      svg
        .append('text')
        .attr('x', width / 2)
        .attr('y', height / 2)
        .attr('text-anchor', 'middle')
        .attr('class', 'value')
        .text('No data')
      return
    }

    // Scales
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

    // Root group
    const g = svg
      .append('g')
      .attr('transform', `translate(${margin.left},${margin.top})`)

    // Grid lines
    g.append('g')
      .attr('class', 'grid')
      .call(d3.axisLeft(y).ticks(4).tickSize(-innerWidth).tickFormat(''))

    // X axis
    g.append('g')
      .attr('class', 'axis')
      .attr('transform', `translate(0,${innerHeight})`)
      .call(d3.axisBottom(x).tickSizeOuter(0))

    // Y axis
    g.append('g')
      .attr('class', 'axis')
      .call(d3.axisLeft(y).ticks(4))

    // Bars
    g.selectAll('.bar')
      .data(data)
      .join('rect')
      .attr('class', 'bar')
      .attr('x', (d) => x(d.label))
      .attr('y', (d) => y(d.value))
      .attr('width', x.bandwidth())
      .attr('height', (d) => innerHeight - y(d.value))
      .append('title')
      .text((d) => `${d.label}: ${d.value}`)

    // Value labels
    g.selectAll('.value')
      .data(data)
      .join('text')
      .attr('class', 'value')
      .attr('x', (d) => (x(d.label) || 0) + x.bandwidth() / 2)
      .attr('y', (d) => y(d.value) - 6)
      .attr('text-anchor', 'middle')
      .text((d) => d.value)
  }

  // Property setter for series (matches Lustre's a.property("series", ...))
  const savedSeries = host.series
  Object.defineProperty(host, 'series', {
    configurable: true,
    set(val) {
      host._series = Array.isArray(val) ? val : []
      if (host.isConnected) render()
    },
    get() {
      return host._series
    },
  })
  if (savedSeries !== undefined) host.series = savedSeries

  // Observe attribute changes (chart-title, height)
  const observer = new MutationObserver(() => render())
  observer.observe(host, {
    attributes: true,
    attributeFilter: ['chart-title', 'height'],
  })

  // Observe resize
  const resizeObserver = new ResizeObserver(() => render())
  resizeObserver.observe(host)

  // Initial render
  render()
  onReady()

  // Cleanup on disconnect (optional but good practice)
  host.addEventListener('disconnected', () => {
    observer.disconnect()
    resizeObserver.disconnect()
  }, { once: true })
}
