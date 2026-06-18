//// World map with threat actors — registered as a Lustre component.
////
//// ## Setup
////
//// Register once at application startup, before the first render:
////
//// ```gleam
//// import saola/component/world_map
////
//// pub fn main() {
////   let assert Ok(_) = world_map.register()
////   // ... start your Lustre app
//// }
//// ```
////
//// ## Basic usage
////
//// ```gleam
//// world_map.world_map(
////   markers,
////   arcs,
////   Some(fn(id) { MarkerClicked(id) }),
////   Some(fn(country) { CountryClicked(country) }),
//// )
//// ```

import gleam/dynamic.{type Dynamic}
import gleam/dynamic/decode
import gleam/json
import gleam/list
import gleam/option.{type Option, None, Some}
import lustre
import lustre/attribute.{type Attribute} as a
import lustre/component
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/event as ev

pub const tag = "world-map"

// ---------------------------------------------------------------------------
// Types
// ---------------------------------------------------------------------------

pub type WorldMapMarker {
  WorldMapMarker(
    id: String,
    label: String,
    lat: Float,
    lng: Float,
    severity: String,
    connections: Int,
    selected: Bool,
    dimmed: Bool,
    country: String,
  )
}

pub type WorldMapArc {
  WorldMapArc(from_lat: Float, from_lng: Float, to_lat: Float, to_lng: Float)
}

// ---------------------------------------------------------------------------
// Lustre component
// ---------------------------------------------------------------------------

type Model {
  Model(ready: Bool)
}

type Message {
  MapReady
  MarkersChanged
  ArcsChanged
}

/// Registers the `<world-map>` custom element with the browser.
/// Call once at application startup before rendering any map elements.
pub fn register() -> Result(Nil, lustre.Error) {
  lustre.register(
    lustre.component(init, update, view, [
      component.on_property_change("markers", {
        decode.dynamic |> decode.map(fn(_) { MarkersChanged })
      }),
      component.on_property_change("arcs", {
        decode.dynamic |> decode.map(fn(_) { ArcsChanged })
      }),
    ]),
    tag,
  )
}

fn init(_) -> #(Model, Effect(Message)) {
  #(Model(ready: False), init_map())
}

fn init_map() -> Effect(Message) {
  use dispatch, root <- effect.after_paint
  ffi_build_map(root, fn() { dispatch(MapReady) })
  Nil
}

fn update(model: Model, msg: Message) -> #(Model, Effect(Message)) {
  case msg {
    // On ready, flush markers/arcs that arrived before the map was built.
    MapReady -> #(
      Model(ready: True),
      effect.batch([do_update_markers(), do_update_arcs()]),
    )
    MarkersChanged -> #(model, do_update_markers())
    ArcsChanged -> #(model, do_update_arcs())
  }
}

fn do_update_markers() -> Effect(Message) {
  use _dispatch, root <- effect.after_paint
  ffi_update_markers(root)
  Nil
}

fn do_update_arcs() -> Effect(Message) {
  use _dispatch, root <- effect.after_paint
  ffi_update_arcs(root)
  Nil
}

fn view(_: Model) -> Element(Message) {
  element.element("div", [], [
    element.element("style", [], [element.text(shadow_css)]),
    element.element("div", [a.class("map-root")], []),
  ])
}

// ---------------------------------------------------------------------------
// Public API
// ---------------------------------------------------------------------------

/// Creates a `<world-map>` element accepting raw attribute lists.
pub fn element(attrs: List(Attribute(m))) -> Element(m) {
  element.element(tag, attrs, [])
}

/// Convenience wrapper — encodes markers/arcs into properties and sets up event handlers.
pub fn world_map(
  markers: List(WorldMapMarker),
  arcs: List(WorldMapArc),
  on_marker_click: Option(fn(String) -> msg),
  on_country_click: Option(fn(String) -> msg),
) -> Element(msg) {
  let marker_attrs = case on_marker_click {
    None -> []
    Some(handler) -> [on_marker_select(handler)]
  }
  let country_attrs = case on_country_click {
    None -> []
    Some(handler) -> [on_country_select(handler)]
  }
  element(
    list.flatten([
      [
        a.property("markers", encode_markers(markers)),
        a.property("arcs", encode_arcs(arcs)),
      ],
      marker_attrs,
      country_attrs,
    ]),
  )
}

/// Fires when the user clicks a marker. The handler receives the marker's ID.
pub fn on_marker_select(handler: fn(String) -> m) -> Attribute(m) {
  ev.on("marker-click", {
    use id <- decode.subfield(["detail", "id"], decode.string)
    decode.success(handler(id))
  })
}

/// Fires when the user clicks a country. The handler receives the country name.
pub fn on_country_select(handler: fn(String) -> m) -> Attribute(m) {
  ev.on("country-click", {
    use name <- decode.subfield(["detail", "country"], decode.string)
    decode.success(handler(name))
  })
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

fn encode_markers(markers: List(WorldMapMarker)) -> json.Json {
  json.array(markers, fn(m) {
    json.object([
      #("id", json.string(m.id)),
      #("label", json.string(m.label)),
      #("lat", json.float(m.lat)),
      #("lng", json.float(m.lng)),
      #("severity", json.string(m.severity)),
      #("connections", json.int(m.connections)),
      #("selected", json.bool(m.selected)),
      #("dimmed", json.bool(m.dimmed)),
      #("country", json.string(m.country)),
    ])
  })
}

fn encode_arcs(arcs: List(WorldMapArc)) -> json.Json {
  json.array(arcs, fn(arc) {
    json.object([
      #("fromLat", json.float(arc.from_lat)),
      #("fromLng", json.float(arc.from_lng)),
      #("toLat", json.float(arc.to_lat)),
      #("toLng", json.float(arc.to_lng)),
    ])
  })
}

// ---------------------------------------------------------------------------
// Shadow CSS
// ---------------------------------------------------------------------------

const shadow_css = "
  :host {
    display: block;
    position: relative;
    min-width: 0;
    color: currentColor;
    font: inherit;
  }
  .map-root {
    width: 100%;
    height: 100%;
    position: relative;
  }
  svg {
    display: block;
    width: 100%;
    height: auto;
    border-radius: 8px;
    overflow: visible;
  }
  .map-tooltip {
    position: absolute;
    pointer-events: none;
    background: hsl(215 28% 17%);
    border: 1px solid hsl(215 16% 35%);
    border-radius: 6px;
    padding: 4px 10px;
    font-size: 11px;
    line-height: 1.5;
    color: hsl(215 14% 85%);
    display: none;
    z-index: 10;
    white-space: nowrap;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.5);
  }
  .map-tooltip.visible {
    display: block;
  }
"

// ---------------------------------------------------------------------------
// FFI
// ---------------------------------------------------------------------------

@external(javascript, "./world-map.ffi.mjs", "buildMap")
fn ffi_build_map(root: Dynamic, on_ready: fn() -> Nil) -> Nil

@external(javascript, "./world-map.ffi.mjs", "updateMarkers")
fn ffi_update_markers(root: Dynamic) -> Nil

@external(javascript, "./world-map.ffi.mjs", "updateArcs")
fn ffi_update_arcs(root: Dynamic) -> Nil
