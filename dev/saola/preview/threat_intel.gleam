import gleam/int
import gleam/list
import gleam/option.{None, Some}
import gleam/string
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e
import saola/badge
import saola/data_table
import saola/empty
import saola/entity_graph_3d
import saola/entity_graph_canvas as egc
import saola/multiselect
import saola/progress
import saola/search
import saola/timeline
import saola/world_map
import saola/preview/model.{
  type Model, type Msg, ThreatEntitySelected,
  ThreatFiltersCleared,
  ThreatMapCountryClicked, ThreatSearchChanged, ThreatSearchCleared,
  ThreatSeverityFilterChanged, ThreatTablePageChanged, ThreatTableRowSelected,
  ThreatTableSortChanged,
}
import saola/preview/threat_intel_data.{type ThreatActor}

// ---------------------------------------------------------------------------
// Public entry point
// ---------------------------------------------------------------------------

pub fn view_threat_intel_network(model: Model) -> Element(Msg) {
  h.div(
    [a.class("threat-intel-root")],
    [
      map_column(model),
      data_column(model),
    ],
  )
}

// ---------------------------------------------------------------------------
// Left — full-height world map
// ---------------------------------------------------------------------------

fn map_column(model: Model) -> Element(Msg) {
  let actors = threat_intel_data.all_actors()
  let severity_dimmed_ids = case model.threat_severity_filter {
    [] -> []
    filter ->
      list.filter_map(actors, fn(actor) {
        case list.contains(filter, threat_intel_data.severity_label(actor.severity)) {
          False -> Ok(actor.id)
          True -> Error(Nil)
        }
      })
  }
  let markers = list.map(actors, fn(actor) {
    world_map.WorldMapMarker(
      id: actor.id,
      label: actor.name,
      lat: actor.lat,
      lng: actor.lng,
      severity: threat_intel_data.severity_label(actor.severity),
      connections: actor.connections,
      selected: list.contains(model.threat_selected_ids, actor.id),
      dimmed: list.contains(severity_dimmed_ids, actor.id)
        || case model.threat_map_country_filter {
          None -> False
          Some(c) -> actor.country != c
        },
    )
  })
  let arcs = compute_arcs(model.threat_selected_ids)
  h.div(
    [a.class("threat-intel-map-col")],
    [
      map_overlay_header(model),
      world_map.world_map_element(
        markers,
        arcs,
        world_map.default_world_map_attrs,
        fn(id) { ThreatEntitySelected(id) },
        fn(country) { ThreatMapCountryClicked(country) },
      ),
    ],
  )
}

fn map_overlay_header(model: Model) -> Element(Msg) {
  h.div(
    [a.class("threat-intel-map-overlay")],
    [
      h.span([a.class("threat-intel-map-title")], [h.text("Threat Actor Network")]),
      case model.threat_map_country_filter {
        None -> element.none()
        Some(c) ->
          h.button(
            [a.type_("button"), a.class("btn btn-sm"), e.on_click(ThreatFiltersCleared)],
            [h.text("📍 " <> c <> "  ✕")],
          )
      },
      case model.threat_graph_hovered {
        None -> element.none()
        Some(id) ->
          case threat_intel_data.find_actor(id) {
            None -> element.none()
            Some(actor) ->
              h.div(
                [a.class("threat-intel-hover-label")],
                [
                  h.text(actor.name <> " · "),
                  badge.badge(
                    threat_intel_data.severity_label(actor.severity),
                    severity_badge_variant(actor.severity),
                  ),
                ],
              )
          }
      },
    ],
  )
}

fn compute_arcs(selected_ids: List(String)) -> List(world_map.WorldMapArc) {
  case selected_ids {
    [] -> []
    [id, ..] ->
      case threat_intel_data.find_actor(id) {
        None -> []
        Some(from_actor) ->
          list.filter_map(threat_intel_data.all_edges(), fn(edge) {
            let other = case edge.source == id, edge.target == id {
              True, _ -> Ok(edge.target)
              _, True -> Ok(edge.source)
              _, _ -> Error(Nil)
            }
            case other {
              Error(_) -> Error(Nil)
              Ok(tid) ->
                case threat_intel_data.find_actor(tid) {
                  None -> Error(Nil)
                  Some(to_actor) ->
                    Ok(world_map.WorldMapArc(
                      from_lat: from_actor.lat,
                      from_lng: from_actor.lng,
                      to_lat: to_actor.lat,
                      to_lng: to_actor.lng,
                    ))
                }
            }
          })
      }
  }
}

// ---------------------------------------------------------------------------
// Right — all data panels stacked
// ---------------------------------------------------------------------------

fn data_column(model: Model) -> Element(Msg) {
  h.div(
    [a.class("threat-intel-data-col")],
    [
      controls_panel(model),
      graph_panel(model),
      table_panel(model),
      timeline_panel(model),
    ],
  )
}

// ---------------------------------------------------------------------------
// Controls — search + severity filter + metrics
// ---------------------------------------------------------------------------

fn controls_panel(model: Model) -> Element(Msg) {
  let actors = threat_intel_data.all_actors()
  h.div(
    [a.class("threat-intel-controls")],
    [
      search.search_full(
        search.Small,
        model.threat_search,
        ThreatSearchChanged,
        Some(ThreatSearchCleared),
        search.SearchAttrs(
          placeholder: "Search actors…",
          disabled: False,
          name: "",
          class: "threat-intel-search",
        ),
      ),
      multiselect.multiselect_full(
        threat_intel_data.all_severity_options(),
        model.threat_severity_filter,
        ThreatSeverityFilterChanged,
        multiselect.default_attrs(),
      ),
      h.div(
        [a.class("threat-intel-metrics")],
        [
          metric_pill("Critical", count_by_severity(actors, "critical"), badge.Destructive),
          metric_pill("High", count_by_severity(actors, "high"), badge.Default),
          metric_pill("Medium", count_by_severity(actors, "medium"), badge.Secondary),
          metric_pill("Low", count_by_severity(actors, "low"), badge.Outline),
        ],
      ),
      case model.threat_severity_filter != []
        || model.threat_search != ""
        || model.threat_selected_ids != []
        || model.threat_map_country_filter != None
      {
        False -> element.none()
        True ->
          h.button(
            [a.type_("button"), a.class("btn btn-ghost btn-sm"), e.on_click(ThreatFiltersCleared)],
            [h.text("✕ Clear filters")],
          )
      },
    ],
  )
}

fn metric_pill(label: String, count: Int, variant: badge.BadgeVariant) -> Element(Msg) {
  h.div(
    [a.class("threat-metric-pill")],
    [
      badge.badge(label, variant),
      h.span([a.class("threat-metric-count")], [h.text(int.to_string(count))]),
      progress.progress_full(
        count,
        progress.ProgressAttrs(
          min: 0,
          max: 30,
          variant: progress.Default,
          label: label,
          class: "threat-metric-bar",
        ),
      ),
    ],
  )
}

fn count_by_severity(actors: List(ThreatActor), sev: String) -> Int {
  list.count(actors, fn(actor) { threat_intel_data.severity_label(actor.severity) == sev })
}

// ---------------------------------------------------------------------------
// Entity graph (compact, fits the data column)
// ---------------------------------------------------------------------------

fn graph_panel(model: Model) -> Element(Msg) {
  let nodes = list.map(threat_intel_data.all_actors(), actor_to_node)
  let edges = list.map(threat_intel_data.all_edges(), edge_to_graph_edge)
  let dimmed =
    case model.threat_severity_filter {
      [] -> []
      filter ->
        list.filter_map(threat_intel_data.all_actors(), fn(actor) {
          case list.contains(filter, threat_intel_data.severity_label(actor.severity)) {
            True -> Error(Nil)
            False -> Ok(actor.id)
          }
        })
    }
  h.div(
    [a.class("threat-intel-graph-panel")],
    [
      h.p([a.class("threat-intel-panel-title")], [h.text("Relationship Graph")]),
      entity_graph_3d.entity_graph_3d(
        nodes,
        edges,
        model.threat_selected_ids,
        dimmed,
        Some(ThreatEntitySelected),
      ),
    ],
  )
}

fn actor_to_node(actor: ThreatActor) -> egc.GraphNode {
  egc.GraphNode(id: actor.id, label: actor.name, group: threat_intel_data.severity_label(actor.severity))
}

fn edge_to_graph_edge(te: threat_intel_data.ThreatEdge) -> egc.GraphEdge {
  egc.GraphEdge(id: te.id, source: te.source, target: te.target, label: te.label)
}

// ---------------------------------------------------------------------------
// Table panel
// ---------------------------------------------------------------------------

fn table_panel(model: Model) -> Element(Msg) {
  let rows = sorted_filtered_actors(model)
  h.div(
    [a.class("threat-intel-table-section")],
    [
      h.p([a.class("threat-intel-panel-title")], [h.text("Threat Actors")]),
      case rows {
        [] ->
          empty.empty_full(
            media: None,
            media_variant: empty.Default,
            title: "No actors match",
            description: [h.text("Adjust the filters or search query.")],
            content: [],
            attrs: empty.default_attrs,
          )
        _ ->
          data_table.data_table_full(
            actor_columns(),
            rows,
            model.threat_table_state,
            ThreatTableSortChanged,
            fn(_q) { ThreatFiltersCleared },
            ThreatTablePageChanged,
            ThreatTableRowSelected,
            fn(actor: ThreatActor) { actor.id },
            data_table.DataTableAttrs(show_filter: False, show_pagination: True, class: ""),
          )
      },
    ],
  )
}

fn actor_columns() -> List(data_table.DataTableColumn(ThreatActor, Msg)) {
  [
    data_table.DataTableColumn(
      header: "Name",
      cell: fn(actor: ThreatActor) { h.text(actor.name) },
      sort_key: Some("name"),
    ),
    data_table.DataTableColumn(
      header: "Sev",
      cell: fn(actor: ThreatActor) {
        badge.badge(
          threat_intel_data.severity_label(actor.severity),
          severity_badge_variant(actor.severity),
        )
      },
      sort_key: Some("severity"),
    ),
    data_table.DataTableColumn(
      header: "Country",
      cell: fn(actor: ThreatActor) { h.text(actor.country) },
      sort_key: Some("country"),
    ),
    data_table.DataTableColumn(
      header: "Last Seen",
      cell: fn(actor: ThreatActor) { h.text(actor.last_seen) },
      sort_key: Some("last_seen"),
    ),
  ]
}

fn sorted_filtered_actors(model: Model) -> List(ThreatActor) {
  let all = threat_intel_data.all_actors()
  let after_country = case model.threat_map_country_filter {
    None -> all
    Some(c) -> list.filter(all, fn(actor) { actor.country == c })
  }
  let after_severity = case model.threat_severity_filter {
    [] -> after_country
    filter ->
      list.filter(after_country, fn(actor) {
        list.contains(filter, threat_intel_data.severity_label(actor.severity))
      })
  }
  let q = string.lowercase(model.threat_search)
  let after_search = case q {
    "" -> after_severity
    _ ->
      list.filter(after_severity, fn(actor) {
        string.contains(string.lowercase(actor.name), q)
        || string.contains(string.lowercase(actor.country), q)
        || string.contains(actor.ip, q)
      })
  }
  case model.threat_table_state.sort_by {
    option.None -> after_search
    option.Some(key) ->
      list.sort(after_search, fn(a_actor, b_actor) {
        let #(av, bv) = case key {
          "name" -> #(a_actor.name, b_actor.name)
          "country" -> #(a_actor.country, b_actor.country)
          "last_seen" -> #(a_actor.last_seen, b_actor.last_seen)
          "severity" -> #(
            threat_intel_data.severity_label(a_actor.severity),
            threat_intel_data.severity_label(b_actor.severity),
          )
          _ -> #(a_actor.name, b_actor.name)
        }
        case model.threat_table_state.sort_dir {
          data_table.Asc -> string.compare(av, bv)
          data_table.Desc -> string.compare(bv, av)
        }
      })
  }
}

// ---------------------------------------------------------------------------
// Timeline panel
// ---------------------------------------------------------------------------

fn timeline_panel(model: Model) -> Element(Msg) {
  h.div(
    [a.class("threat-intel-timeline-section")],
    [
      h.p([a.class("threat-intel-panel-title")], [
        h.text(case model.threat_timeline_entity {
          None -> "Timeline — select an actor"
          Some(id) ->
            case threat_intel_data.find_actor(id) {
              None -> "Timeline"
              Some(actor) -> "Timeline — " <> actor.name
            }
        }),
      ]),
      case model.threat_timeline_entity {
        None ->
          h.div(
            [a.class("threat-intel-timeline-empty")],
            [h.text("Click an actor on the map or in the table.")],
          )
        Some(entity_id) ->
          timeline.timeline_simple(
            list.map(threat_intel_data.events_for(entity_id), fn(ev) {
              timeline.TimelineItem(
                time: ev.time,
                title: ev.title,
                description: ev.description,
                icon: None,
                variant: ev.variant,
              )
            }),
          )
      },
    ],
  )
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

fn severity_badge_variant(sev: threat_intel_data.Severity) -> badge.BadgeVariant {
  case sev {
    threat_intel_data.Critical -> badge.Destructive
    threat_intel_data.High -> badge.Default
    threat_intel_data.Medium -> badge.Secondary
    threat_intel_data.Low -> badge.Outline
  }
}
