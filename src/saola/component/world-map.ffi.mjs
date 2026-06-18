import * as d3 from 'd3'
import * as topojson from 'topojson-client'
import worldData from 'world-atlas/countries-110m.json'

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

const SEVERITY_COUNTRY_COLORS = {
  critical: 'hsl(0 70% 35%)',
  high: 'hsl(38 80% 35%)',
  medium: 'hsl(262 60% 35%)',
  low: 'hsl(215 30% 35%)',
}

const SEVERITY_MARKER_COLORS = {
  critical: '#ef4444',
  high: '#f59e0b',
  medium: '#a855f7',
  low: '#6b7280',
}

/**
 * @param {ShadowRoot} root - Shadow root of the <world-map> component
 * @param {() => void} onReady - Called once the map is fully initialised
 */
export function buildMap(root, onReady) {
  const host = root.host  // HTMLElement — the <world-map> custom element
  const container = root.querySelector('.map-root')

  const state = {
    markers: [],
    arcs: [],
    width: 600,
    height: 400,
    svg: null,
    projection: null,
    pathGen: null,
    markerGroup: null,
    arcGroup: null,
    countryPaths: null,
    tooltip: null,
    mapGroup: null,
    zoom: null,
    ro: null,
  }

  function rebuild() {
    container.innerHTML = ''
    const w = state.width
    const h = state.height

    state.projection = d3.geoNaturalEarth1()
      .scale(w / 6.3)
      .translate([w / 2, h / 2])

    state.pathGen = d3.geoPath().projection(state.projection)

    const svg = d3.create('svg')
      .attr('width', w)
      .attr('height', h)
      .style('display', 'block')
      .style('background', 'hsl(215 28% 11%)')

    state.svg = svg
    state.mapGroup = svg.append('g').attr('class', 'map-root')

    // Ocean
    state.mapGroup.append('path')
      .datum({ type: 'Sphere' })
      .attr('fill', 'hsl(215 35% 14%)')
      .attr('stroke', 'hsl(215 16% 28%)')
      .attr('stroke-width', 0.5)
      .attr('d', state.pathGen)

    // Graticule
    state.mapGroup.append('path')
      .datum(d3.geoGraticule()())
      .attr('fill', 'none')
      .attr('stroke', 'hsl(215 16% 20%)')
      .attr('stroke-width', 0.3)
      .attr('d', state.pathGen)

    // Countries
    const countries = topojson.feature(worldData, worldData.objects.countries)
    const countriesGroup = state.mapGroup.append('g').attr('class', 'countries')

    state.countryPaths = countriesGroup.selectAll('path')
      .data(countries.features)
      .enter().append('path')
      .attr('fill', 'hsl(215 18% 24%)')
      .attr('stroke', 'hsl(215 14% 32%)')
      .attr('stroke-width', 0.4)
      .attr('d', state.pathGen)
      .style('cursor', 'pointer')
      .on('mouseenter', (event, d) => {
        const name = COUNTRY_NAMES[+d.id] || `Country ${d.id}`
        const actors = state.markers.filter(m => m.country === name)
        showTooltip(
          root,
          event,
          `${name}${actors.length ? ` — ${actors.length} actor${actors.length > 1 ? 's' : ''}` : ''}`
        )
        d3.select(event.currentTarget)
          .attr('stroke-width', 1.2)
          .attr('stroke', 'hsl(215 40% 60%)')
      })
      .on('mouseleave', (event) => {
        hideTooltip()
        d3.select(event.currentTarget)
          .attr('stroke-width', 0.4)
          .attr('stroke', 'hsl(215 14% 32%)')
      })
      .on('click', (event, d) => {
        const name = COUNTRY_NAMES[+d.id]
        if (name) {
          host.dispatchEvent(
            new CustomEvent('country-click', { detail: { country: name }, bubbles: true })
          )
        }
      })

    // Country borders mesh
    state.mapGroup.append('path')
      .datum(topojson.mesh(worldData, worldData.objects.countries, (a, b) => a !== b))
      .attr('fill', 'none')
      .attr('stroke', 'hsl(215 14% 32%)')
      .attr('stroke-width', 0.3)
      .attr('d', state.pathGen)

    // Arcs layer (below markers)
    state.arcGroup = state.mapGroup.append('g').attr('class', 'arcs')

    // Markers layer
    state.markerGroup = state.mapGroup.append('g').attr('class', 'markers')

    // Tooltip element
    state.tooltip = document.createElement('div')
    state.tooltip.className = 'map-tooltip'
    root.appendChild(state.tooltip)

    // Zoom + pan
    state.zoom = d3.zoom()
      .scaleExtent([1, 10])
      .translateExtent([[0, 0], [w, h]])
      .on('zoom', (event) => {
        state.mapGroup.attr('transform', event.transform)
      })
    svg.call(state.zoom)
    svg.on('dblclick.zoom', null)

    container.appendChild(svg.node())

    refreshCountryFills()
    refreshMarkers()
    refreshArcs()
  }

  function refreshCountryFills() {
    if (!state.countryPaths) return

    const worst = {}
    const SEV_ORDER = { critical: 0, high: 1, medium: 2, low: 3 }
    for (const m of state.markers) {
      if (!worst[m.country] || SEV_ORDER[m.severity] < SEV_ORDER[worst[m.country]]) {
        worst[m.country] = m.severity
      }
    }

    state.countryPaths.attr('fill', (d) => {
      const name = COUNTRY_NAMES[+d.id]
      if (!name) return 'hsl(215 18% 24%)'
      const sev = worst[name]
      return sev ? SEVERITY_COUNTRY_COLORS[sev] : 'hsl(215 18% 24%)'
    })
  }

  function refreshMarkers() {
    if (!state.markerGroup || !state.projection) return

    const sel = state.markerGroup.selectAll('g.actor-marker')
      .data(state.markers, d => d.id)

    sel.exit().remove()

    const enter = sel.enter().append('g')
      .attr('class', 'actor-marker')
      .style('cursor', 'pointer')

    enter.append('circle').attr('class', 'pulse-ring')
      .attr('fill', 'none')
      .attr('stroke-width', 1.5)

    enter.append('circle').attr('class', 'dot')

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
        showTooltip(
          root,
          event,
          `<strong>${d.label}</strong><br/>${d.severity.toUpperCase()} · ${d.connections} connections`
        )
        d3.select(event.currentTarget).select('.marker-label')
          .style('display', null)
          .text(d.label)
      })
      .on('mouseleave', () => {
        hideTooltip()
        state.markerGroup.selectAll('.marker-label').style('display', 'none')
      })
      .on('click', (event, d) => {
        event.stopPropagation()
        host.dispatchEvent(
          new CustomEvent('marker-click', { detail: { id: d.id }, bubbles: true })
        )
      })

    const all = sel.merge(enter)

    all.attr('transform', d => {
      const pos = state.projection([d.lng, d.lat])
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

  function refreshArcs() {
    if (!state.arcGroup || !state.projection) return

    const arcPathGen = d3.geoPath().projection(state.projection)

    const sel = state.arcGroup.selectAll('path.arc-line')
      .data(state.arcs, (_, i) => i)

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

  function showTooltip(root, event, html) {
    if (!state.tooltip) return
    const rect = host.getBoundingClientRect()
    state.tooltip.innerHTML = html
    state.tooltip.classList.add('visible')
    state.tooltip.style.left = `${event.clientX - rect.left + 12}px`
    state.tooltip.style.top = `${event.clientY - rect.top - 10}px`
  }

  function hideTooltip() {
    state.tooltip?.classList.remove('visible')
  }

  // ResizeObserver
  state.ro = new ResizeObserver(entries => {
    const { width, height } = entries[0].contentRect
    if (
      width > 10 && height > 10 &&
      (Math.abs(width - state.width) > 4 || Math.abs(height - state.height) > 4)
    ) {
      state.width = width
      state.height = height
      rebuild()
    }
  })
  state.ro.observe(host)

  // Initial size
  const rect = host.getBoundingClientRect()
  state.width = rect.width > 10 ? rect.width : 600
  state.height = rect.height > 10 ? rect.height : 400

  // Store per-instance API on root for Gleam effects to call
  root._api = {
    updateMarkers() {
      state.markers = Array.isArray(host.markers) ? host.markers : []
      refreshCountryFills()
      refreshMarkers()
    },
    updateArcs() {
      state.arcs = Array.isArray(host.arcs) ? host.arcs : []
      refreshArcs()
    },
  }

  rebuild()
  onReady()
}

// Called from Gleam via effect.after_paint — reads host.markers and repaints.
export function updateMarkers(root) {
  root._api?.updateMarkers()
}

// Called from Gleam via effect.after_paint — reads host.arcs and repaints.
export function updateArcs(root) {
  root._api?.updateArcs()
}
