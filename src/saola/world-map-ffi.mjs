import * as d3 from 'd3'
import * as topojson from 'topojson-client'
import worldData from 'world-atlas/countries-110m.json'

// ISO 3166-1 numeric → country name for the countries in our demo
const COUNTRY_NAMES = {
  4: 'Afghanistan', 8: 'Albania', 12: 'Algeria', 24: 'Angola', 32: 'Argentina',
  36: 'Australia', 40: 'Austria', 50: 'Bangladesh', 56: 'Belgium', 64: 'Bhutan',
  76: 'Brazil', 100: 'Bulgaria', 116: 'Cambodia', 124: 'Canada', 144: 'Sri Lanka',
  152: 'Chile', 156: 'China', 170: 'Colombia', 191: 'Croatia', 196: 'Cyprus',
  203: 'Czech Republic', 208: 'Denmark', 818: 'Egypt', 231: 'Ethiopia',
  246: 'Finland', 250: 'France', 276: 'Germany', 288: 'Ghana', 300: 'Greece',
  344: 'Hong Kong', 356: 'India', 360: 'Indonesia', 364: 'Iran', 368: 'Iraq',
  372: 'Ireland', 376: 'Israel', 380: 'Italy', 392: 'Japan', 400: 'Jordan',
  398: 'Kazakhstan', 404: 'Kenya', 408: 'North Korea', 410: 'South Korea',
  414: 'Kuwait', 418: 'Laos', 422: 'Lebanon', 434: 'Libya', 458: 'Malaysia',
  484: 'Mexico', 496: 'Mongolia', 504: 'Morocco', 524: 'Nepal', 528: 'Netherlands',
  554: 'New Zealand', 566: 'Nigeria', 578: 'Norway', 586: 'Pakistan',
  275: 'Palestine', 604: 'Peru', 608: 'Philippines', 616: 'Poland',
  620: 'Portugal', 634: 'Qatar', 642: 'Romania', 643: 'Russia', 682: 'Saudi Arabia',
  694: 'Sierra Leone', 703: 'Slovakia', 705: 'Slovenia', 706: 'Somalia',
  710: 'South Africa', 724: 'Spain', 729: 'Sudan', 752: 'Sweden', 756: 'Switzerland',
  760: 'Syria', 762: 'Tajikistan', 764: 'Thailand', 788: 'Tunisia', 792: 'Turkey',
  795: 'Turkmenistan', 800: 'Uganda', 804: 'Ukraine', 784: 'United Arab Emirates',
  826: 'United Kingdom', 840: 'United States', 858: 'Uruguay', 860: 'Uzbekistan',
  704: 'Vietnam', 887: 'Yemen',
}

// Country name → fill colour based on worst severity of actors in that country
const SEVERITY_COUNTRY_COLORS = {
  critical: 'hsl(0 70% 35%)',
  high:     'hsl(38 80% 35%)',
  medium:   'hsl(262 60% 35%)',
  low:      'hsl(215 30% 35%)',
}

const SEVERITY_MARKER_COLORS = {
  critical: '#ef4444',
  high:     '#f59e0b',
  medium:   '#a855f7',
  low:      '#6b7280',
}

class SaolaWorldMap extends HTMLElement {
  constructor() {
    super()
    this._markers = []
    this._arcs = []
    this._width = 600
    this._height = 400
    this._svg = null
    this._projection = null
    this._pathGen = null
    this._markerGroup = null
    this._arcGroup = null
    this._countryPaths = null
    this._tooltip = null
    this._mapGroup = null
    this._zoom = null
    this._ro = null
  }

  connectedCallback() {
    this._ro = new ResizeObserver(entries => {
      const { width, height } = entries[0].contentRect
      if (width > 10 && height > 10 &&
          (Math.abs(width - this._width) > 4 || Math.abs(height - this._height) > 4)) {
        this._width = width
        this._height = height
        this._build()
      }
    })
    this._ro.observe(this)
    const rect = this.getBoundingClientRect()
    this._width = rect.width > 10 ? rect.width : 600
    this._height = rect.height > 10 ? rect.height : 400
    this._build()
  }

  disconnectedCallback() {
    if (this._ro) { this._ro.disconnect(); this._ro = null }
    this.innerHTML = ''
  }

  set markers(value) {
    this._markers = Array.isArray(value) ? value : []
    if (this.isConnected) {
      this._updateCountryFills()
      this._updateMarkers()
    }
  }

  set arcs(value) {
    this._arcs = Array.isArray(value) ? value : []
    if (this.isConnected) this._updateArcs()
  }

  // Keep setters for backward compat but ResizeObserver takes precedence
  set mapWidth(value) {}
  set mapHeight(value) {}

  _build() {
    this.innerHTML = ''
    const w = this._width, h = this._height

    this._projection = d3.geoNaturalEarth1()
      .scale(w / 6.3)
      .translate([w / 2, h / 2])

    this._pathGen = d3.geoPath().projection(this._projection)

    const svg = d3.create('svg')
      .attr('width', w)
      .attr('height', h)
      .style('display', 'block')
      .style('border-radius', '8px')
      .style('background', 'hsl(215 28% 11%)')

    this._svg = svg
    this._mapGroup = svg.append('g').attr('class', 'map-root')

    // Ocean
    this._mapGroup.append('path')
      .datum({ type: 'Sphere' })
      .attr('fill', 'hsl(215 35% 14%)')
      .attr('stroke', 'hsl(215 16% 28%)')
      .attr('stroke-width', 0.5)
      .attr('d', this._pathGen)

    // Graticule
    this._mapGroup.append('path')
      .datum(d3.geoGraticule()())
      .attr('fill', 'none')
      .attr('stroke', 'hsl(215 16% 20%)')
      .attr('stroke-width', 0.3)
      .attr('d', this._pathGen)

    // Countries
    const countries = topojson.feature(worldData, worldData.objects.countries)
    const countriesGroup = this._mapGroup.append('g').attr('class', 'countries')

    this._countryPaths = countriesGroup.selectAll('path')
      .data(countries.features)
      .enter().append('path')
      .attr('fill', 'hsl(215 18% 24%)')
      .attr('stroke', 'hsl(215 14% 32%)')
      .attr('stroke-width', 0.4)
      .attr('d', this._pathGen)
      .style('cursor', 'pointer')
      .on('mouseenter', (event, d) => {
        const name = COUNTRY_NAMES[+d.id] || `Country ${d.id}`
        const actors = this._markers.filter(m => _countryMatchesName(m, name))
        this._showTooltip(event, `${name}${actors.length ? ` — ${actors.length} actor${actors.length > 1 ? 's' : ''}` : ''}`)
        d3.select(event.currentTarget).attr('stroke-width', 1.2).attr('stroke', 'hsl(215 40% 60%)')
      })
      .on('mouseleave', (event) => {
        this._hideTooltip()
        d3.select(event.currentTarget).attr('stroke-width', 0.4).attr('stroke', 'hsl(215 14% 32%)')
      })
      .on('click', (event, d) => {
        const name = COUNTRY_NAMES[+d.id]
        if (name) {
          this.dispatchEvent(new CustomEvent('country-click', { detail: { country: name }, bubbles: true }))
        }
      })

    // Country borders mesh (sharper lines between countries)
    this._mapGroup.append('path')
      .datum(topojson.mesh(worldData, worldData.objects.countries, (a, b) => a !== b))
      .attr('fill', 'none')
      .attr('stroke', 'hsl(215 14% 32%)')
      .attr('stroke-width', 0.3)
      .attr('d', this._pathGen)

    // Arcs layer (below markers)
    this._arcGroup = this._mapGroup.append('g').attr('class', 'arcs')

    // Markers layer
    this._markerGroup = this._mapGroup.append('g').attr('class', 'markers')

    // Tooltip element
    this._tooltip = d3.create('div')
      .style('position', 'absolute')
      .style('pointer-events', 'none')
      .style('background', 'hsl(215 28% 17%)')
      .style('border', '1px solid hsl(215 16% 35%)')
      .style('border-radius', '6px')
      .style('padding', '4px 10px')
      .style('font-size', '11px')
      .style('line-height', '1.5')
      .style('color', 'hsl(215 14% 85%)')
      .style('display', 'none')
      .style('z-index', '10')
      .style('white-space', 'nowrap')
      .style('box-shadow', '0 4px 12px rgba(0,0,0,0.5)')

    this.style.position = 'relative'
    this.style.display = 'block'
    this.appendChild(svg.node())
    this.appendChild(this._tooltip.node())

    // Zoom + pan
    this._zoom = d3.zoom()
      .scaleExtent([1, 10])
      .translateExtent([[0, 0], [w, h]])
      .on('zoom', (event) => {
        this._mapGroup.attr('transform', event.transform)
      })
    svg.call(this._zoom)
    svg.on('dblclick.zoom', null) // prevent double-click zoom

    this._updateCountryFills()
    this._updateMarkers()
    this._updateArcs()
  }

  _updateCountryFills() {
    if (!this._countryPaths) return

    // Build worst severity per country name
    const worst = {}
    const SEV_ORDER = { critical: 0, high: 1, medium: 2, low: 3 }
    for (const m of this._markers) {
      const cname = _markerCountryName(m)
      if (!worst[cname] || SEV_ORDER[m.severity] < SEV_ORDER[worst[cname]]) {
        worst[cname] = m.severity
      }
    }

    this._countryPaths.attr('fill', (d) => {
      const name = COUNTRY_NAMES[+d.id]
      if (!name) return 'hsl(215 18% 24%)'
      const sev = worst[name]
      return sev ? SEVERITY_COUNTRY_COLORS[sev] : 'hsl(215 18% 24%)'
    })
  }

  _updateMarkers() {
    if (!this._markerGroup || !this._projection) return

    const sel = this._markerGroup.selectAll('g.actor-marker')
      .data(this._markers, d => d.id)

    // Exit
    sel.exit().remove()

    // Enter
    const enter = sel.enter().append('g')
      .attr('class', 'actor-marker')
      .style('cursor', 'pointer')

    // Pulse ring (shown when selected)
    enter.append('circle').attr('class', 'pulse-ring')
      .attr('fill', 'none')
      .attr('stroke-width', 1.5)

    // Main dot
    enter.append('circle').attr('class', 'dot')

    // Label (shown on hover)
    enter.append('text').attr('class', 'marker-label')
      .attr('text-anchor', 'middle')
      .attr('dy', '-0.8em')
      .attr('font-size', '9px')
      .attr('fill', 'white')
      .attr('paint-order', 'stroke')
      .attr('stroke', 'rgba(0,0,0,0.8)')
      .attr('stroke-width', 3)
      .style('pointer-events', 'none')
      .style('display', 'none')

    enter
      .on('mouseenter', (event, d) => {
        this._showTooltip(event,
          `<strong>${d.label}</strong><br/>${d.severity.toUpperCase()} · ${d.connections} connections`)
        d3.select(event.currentTarget).select('.marker-label').style('display', null)
          .text(d.label)
      })
      .on('mouseleave', () => {
        this._hideTooltip()
        this._markerGroup.selectAll('.marker-label').style('display', 'none')
      })
      .on('click', (event, d) => {
        event.stopPropagation()
        this.dispatchEvent(new CustomEvent('marker-click', { detail: { id: d.id }, bubbles: true }))
      })

    // Merge enter + update
    const all = sel.merge(enter)

    all.attr('transform', d => {
      const pos = this._projection([d.lng, d.lat])
      return pos ? `translate(${pos[0].toFixed(2)},${pos[1].toFixed(2)})` : 'translate(-999,-999)'
    })
    .attr('opacity', d => d.dimmed ? 0.18 : 1)

    const radius = d => Math.max(2, Math.min(5, 1.5 + d.connections * 0.25))

    all.select('.dot')
      .attr('r', radius)
      .attr('fill', d => SEVERITY_MARKER_COLORS[d.severity] || '#6b7280')
      .attr('stroke', d => d.selected ? '#ffffff' : 'rgba(0,0,0,0.5)')
      .attr('stroke-width', d => d.selected ? 2 : 0.8)

    all.select('.pulse-ring')
      .attr('r', d => d.selected ? radius(d) + 3 : 0)
      .attr('stroke', d => SEVERITY_MARKER_COLORS[d.severity] || '#6b7280')
      .attr('opacity', d => d.selected ? 0.55 : 0)
  }

  _updateArcs() {
    if (!this._arcGroup || !this._projection) return

    const arcPathGen = d3.geoPath().projection(this._projection)

    const sel = this._arcGroup.selectAll('path.arc-line')
      .data(this._arcs, (_, i) => i)

    sel.exit().remove()

    sel.enter().append('path').attr('class', 'arc-line')
      .merge(sel)
      .attr('fill', 'none')
      .attr('stroke', 'hsl(45 90% 60%)')
      .attr('stroke-width', 1.4)
      .attr('stroke-dasharray', '6 3')
      .attr('opacity', 0.75)
      .attr('d', d => arcPathGen({
        type: 'LineString',
        coordinates: [[d.fromLng, d.fromLat], [d.toLng, d.toLat]],
      }))
  }

  _showTooltip(event, html) {
    if (!this._tooltip) return
    const rect = this.getBoundingClientRect()
    const x = event.clientX - rect.left + 12
    const y = event.clientY - rect.top - 10
    this._tooltip
      .style('display', 'block')
      .style('left', `${x}px`)
      .style('top', `${y}px`)
      .html(html)
  }

  _hideTooltip() {
    if (this._tooltip) this._tooltip.style('display', 'none')
  }
}

function _markerCountryName(marker) {
  return marker._countryName || marker.label
}

function _countryMatchesName(marker, name) {
  return false // country matching is approximate via choropleth; actual logic is in threat_intel data
}

export function ensure_registered() {
  if (!customElements.get('saola-world-map')) {
    customElements.define('saola-world-map', SaolaWorldMap)
  }
}
