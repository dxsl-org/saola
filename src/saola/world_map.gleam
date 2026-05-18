import gleam/dynamic/decode
import gleam/json
import gleam/list
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/event as e

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
  )
}

pub type WorldMapArc {
  WorldMapArc(from_lat: Float, from_lng: Float, to_lat: Float, to_lng: Float)
}

pub type WorldMapAttrs {
  WorldMapAttrs(width: Float, height: Float)
}

pub const default_world_map_attrs = WorldMapAttrs(width: 560.0, height: 260.0)

pub fn world_map_element(
  markers: List(WorldMapMarker),
  arcs: List(WorldMapArc),
  attrs: WorldMapAttrs,
  on_marker_click: fn(String) -> msg,
  on_country_click: fn(String) -> msg,
) -> Element(msg) {
  ensure_registered()
  element.element("saola-world-map", [
    a.property("markers", json.array(markers, encode_marker)),
    a.property("arcs", json.array(arcs, encode_arc)),
    a.property("mapWidth", json.float(attrs.width)),
    a.property("mapHeight", json.float(attrs.height)),
    e.on("marker-click", decode_id(on_marker_click)),
    e.on("country-click", decode_country(on_country_click)),
  ], [])
}

fn encode_marker(m: WorldMapMarker) -> json.Json {
  json.object([
    #("id", json.string(m.id)),
    #("label", json.string(m.label)),
    #("lat", json.float(m.lat)),
    #("lng", json.float(m.lng)),
    #("severity", json.string(m.severity)),
    #("connections", json.int(m.connections)),
    #("selected", json.bool(m.selected)),
    #("dimmed", json.bool(m.dimmed)),
  ])
}

fn encode_arc(arc: WorldMapArc) -> json.Json {
  json.object([
    #("fromLat", json.float(arc.from_lat)),
    #("fromLng", json.float(arc.from_lng)),
    #("toLat", json.float(arc.to_lat)),
    #("toLng", json.float(arc.to_lng)),
  ])
}

fn decode_id(callback: fn(String) -> msg) -> decode.Decoder(msg) {
  use id <- decode.subfield(["detail", "id"], decode.string)
  decode.success(callback(id))
}

fn decode_country(callback: fn(String) -> msg) -> decode.Decoder(msg) {
  use name <- decode.subfield(["detail", "country"], decode.string)
  decode.success(callback(name))
}

pub fn actors_to_markers(
  actors: List(a),
  id: fn(a) -> String,
  label: fn(a) -> String,
  lat: fn(a) -> Float,
  lng: fn(a) -> Float,
  severity: fn(a) -> String,
  connections: fn(a) -> Int,
  selected_ids: List(String),
  dimmed_fn: fn(a) -> Bool,
) -> List(WorldMapMarker) {
  list.map(actors, fn(actor) {
    let aid = id(actor)
    WorldMapMarker(
      id: aid,
      label: label(actor),
      lat: lat(actor),
      lng: lng(actor),
      severity: severity(actor),
      connections: connections(actor),
      selected: list.contains(selected_ids, aid),
      dimmed: dimmed_fn(actor),
    )
  })
}

@external(javascript, "./world_map_ffi.mjs", "ensure_registered")
fn ensure_registered() -> Nil
