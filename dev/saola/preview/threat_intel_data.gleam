import gleam/dict
import gleam/int
import gleam/list
import gleam/option
import gleam/result
import gleam/string
import saola/timeline

pub type Severity {
  Critical
  High
  Medium
  Low
}

pub type ThreatActor {
  ThreatActor(
    id: String,
    name: String,
    country: String,
    severity: Severity,
    ip: String,
    lat: Float,
    lng: Float,
    connections: Int,
    last_seen: String,
  )
}

pub type ThreatEdge {
  ThreatEdge(id: String, source: String, target: String, label: String)
}

pub type ThreatEvent {
  ThreatEvent(
    time: String,
    title: String,
    description: String,
    variant: timeline.TimelineItemVariant,
  )
}

// ---------------------------------------------------------------------------
// Public API
// ---------------------------------------------------------------------------

pub fn severity_label(sev: Severity) -> String {
  case sev {
    Critical -> "critical"
    High -> "high"
    Medium -> "medium"
    Low -> "low"
  }
}

pub fn all_severity_options() -> List(#(String, String)) {
  [
    #("critical", "Critical"),
    #("high", "High"),
    #("medium", "Medium"),
    #("low", "Low"),
  ]
}

pub fn all_actors() -> List(ThreatActor) {
  generate_actors()
}

pub fn all_edges() -> List(ThreatEdge) {
  generate_edges()
}

pub fn find_actor(id: String) -> option.Option(ThreatActor) {
  all_actors()
  |> list.find(fn(a) { a.id == id })
  |> option.from_result
}

pub fn events_for(entity_id: String) -> List(ThreatEvent) {
  let seed = str_hash(entity_id)
  list.map(range(0, 7), fn(i) { gen_event(seed, i) })
}

// ---------------------------------------------------------------------------
// Actor generation — 500 actors across 15 country clusters
// ---------------------------------------------------------------------------

// #(country, id_prefix, base_lat, base_lng, count)
fn country_configs() -> List(#(String, String, Float, Float, Int)) {
  [
    #("Russia", "ru", 55.75, 37.62, 60),
    #("China", "cn", 39.90, 116.40, 60),
    #("Iran", "ir", 35.69, 51.42, 45),
    #("North Korea", "kp", 39.02, 125.75, 40),
    #("United States", "us", 37.09, -95.71, 35),
    #("Ukraine", "ua", 50.45, 30.52, 30),
    #("Germany", "de", 52.52, 13.40, 25),
    #("India", "in", 28.61, 77.21, 25),
    #("Brazil", "br", -15.78, -47.93, 25),
    #("Vietnam", "vn", 21.03, 105.85, 25),
    #("Romania", "ro", 44.43, 26.10, 25),
    #("Nigeria", "ng", 9.07, 7.49, 25),
    #("Pakistan", "pk", 33.72, 73.06, 25),
    #("Turkey", "tr", 39.92, 32.86, 25),
    #("Unknown", "xx", 0.0, 0.0, 50),
  ]
}

fn generate_actors() -> List(ThreatActor) {
  let #(actors, _) =
    list.fold(country_configs(), #([], 0), fn(acc, cfg) {
      let #(prev, global_start) = acc
      let #(country, prefix, base_lat, base_lng, count) = cfg
      let new_actors =
        list.map(range(0, count - 1), fn(local_i) {
          gen_actor(country, prefix, base_lat, base_lng, local_i, global_start + local_i)
        })
      #(list.append(prev, new_actors), global_start + count)
    })
  actors
}

fn gen_actor(
  country: String,
  prefix: String,
  base_lat: Float,
  base_lng: Float,
  local_i: Int,
  global_i: Int,
) -> ThreatActor {
  let n = local_i + 1
  let id =
    prefix
    <> case n < 10 {
      True -> "0" <> int.to_string(n)
      False -> int.to_string(n)
    }
  // "Unknown" actors scatter pseudo-randomly across the globe
  let scatter = country == "Unknown"
  let lat =
    case scatter {
      True -> int.to_float(local_i * 37 % 180 - 90)
      False -> base_lat +. int.to_float(local_i % 11 - 5) *. 0.55
    }
  let lng =
    case scatter {
      True -> int.to_float(local_i * 73 % 360 - 180)
      False -> base_lng +. int.to_float(local_i / 11 % 11 - 5) *. 0.70
    }
  ThreatActor(
    id: id,
    name: gen_name(global_i),
    country: country,
    severity: gen_severity(country, global_i),
    ip: "10."
      <> int.to_string(global_i / 256 % 256)
      <> "."
      <> int.to_string(global_i % 256)
      <> ".1",
    lat: lat,
    lng: lng,
    connections: 1 + global_i % 13,
    last_seen: date_at(global_i),
  )
}

fn gen_name(i: Int) -> String {
  let adjs = [
    "Phantom", "Shadow", "Silent", "Dark", "Crimson", "Iron", "Storm", "Ghost",
    "Viper", "Ember", "Frost", "Acid", "Neon", "Void", "Steel", "Night",
    "Toxic", "Cyber", "Rogue", "Null",
  ]
  let nouns = [
    "Bear", "Dragon", "Cobra", "Wolf", "Eagle", "Tiger", "Fox", "Hawk",
    "Lynx", "Crow", "Spider", "Mantis", "Hornet", "Raven", "Jackal", "Wasp",
    "Kraken", "Hydra", "Phoenix", "Basilisk",
    "Chimera", "Medusa", "Sphinx", "Cyclops", "Minotaur",
  ]
  let adj = at(adjs, i % 20, "Agent")
  let noun = at(nouns, i / 20 % 25, "Zero")
  adj <> noun
}

fn gen_severity(country: String, i: Int) -> Severity {
  let b = i % 10
  case country {
    "Russia" | "China" | "Iran" | "North Korea" ->
      case b {
        0 | 1 | 2 -> Critical
        3 | 4 | 5 -> High
        6 | 7 -> Medium
        _ -> Low
      }
    _ ->
      case b {
        0 | 1 -> Critical
        2 | 3 | 4 -> High
        5 | 6 -> Medium
        _ -> Low
      }
  }
}

fn date_at(i: Int) -> String {
  let pool = [
    "2025-01-03", "2025-01-11", "2025-01-19", "2025-01-28",
    "2025-02-05", "2025-02-14", "2025-02-21", "2025-03-02",
    "2025-03-10", "2025-03-18", "2025-03-26", "2025-04-04",
    "2025-04-12", "2025-04-20", "2025-04-29", "2025-05-07",
    "2025-05-15", "2025-05-23", "2025-05-31", "2025-06-08",
  ]
  at(pool, i % 20, "2025-01-01")
}

// ---------------------------------------------------------------------------
// Edge generation — ~883 edges via 5 sparse connection patterns
// ---------------------------------------------------------------------------

fn generate_edges() -> List(ThreatEdge) {
  let actors = all_actors()
  let n = list.length(actors)
  // O(1) index lookup via dict
  let id_dict =
    actors
    |> list.index_map(fn(a, i) { #(i, a.id) })
    |> dict.from_list
  // #(step_modulo, target_offset, kind)
  // step=1 → every node, step=3 → every 3rd, etc.
  let patterns = [
    #(1, 1, 0),
    #(3, 7, 1),
    #(5, 13, 2),
    #(7, 23, 3),
    #(11, 37, 4),
  ]
  list.flat_map(range(0, n - 1), fn(i) {
    list.filter_map(patterns, fn(pat) {
      let #(step, offset, kind) = pat
      case i % step == 0 {
        False -> Error(Nil)
        True ->
          case dict.get(id_dict, i), dict.get(id_dict, { i + offset } % n) {
            Ok(src), Ok(tgt) ->
              Ok(ThreatEdge(
                id: "e" <> int.to_string(i * 5 + kind),
                source: src,
                target: tgt,
                label: edge_label(kind),
              ))
            _, _ -> Error(Nil)
          }
      }
    })
  })
}

fn edge_label(kind: Int) -> String {
  case kind {
    0 -> "C2"
    1 -> "Exfil"
    2 -> "Lateral"
    3 -> "Recon"
    _ -> "Supply"
  }
}

// ---------------------------------------------------------------------------
// Event generation — 8 events per actor, deterministic from ID hash
// ---------------------------------------------------------------------------

fn str_hash(s: String) -> Int {
  s
  |> string.to_utf_codepoints
  |> list.map(string.utf_codepoint_to_int)
  |> list.fold(0, fn(acc, x) { acc * 31 + x })
}

fn gen_event(seed: Int, offset: Int) -> ThreatEvent {
  let h = { seed + offset * 7919 } % 1_000_003
  let titles = [
    "Initial Access", "Spear-Phishing Campaign", "Zero-Day Exploit Deployed",
    "Credential Harvest", "Lateral Movement Detected", "Data Exfiltration",
    "C2 Beacon Established", "Privilege Escalation", "Persistence Installed",
    "Domain Enumeration", "VPN Pivot", "Supply Chain Compromise",
    "Malware Deployed", "Ransomware Stage 1", "Ransomware Stage 2",
    "Backdoor Planted", "Network Scan", "Insider Contact",
    "Infrastructure Rotated", "New TTP Observed",
  ]
  let descs = [
    "Sent targeted spear-phishing email with malicious Office macro to three executives.",
    "Exploited unpatched CVE in public-facing VPN appliance to gain initial entry.",
    "Harvested credentials via lookalike SSO portal mimicking corporate login page.",
    "Moved laterally using compromised service account with Domain Admin privileges.",
    "Exfiltrated 4.2 GB of intellectual property to overseas staging server via SFTP.",
    "Established encrypted C2 channel over HTTPS port 443 blending with web traffic.",
    "Elevated to SYSTEM privileges via token impersonation exploit on unpatched host.",
    "Installed scheduled task and WMI subscription for boot-persistent execution.",
    "Enumerated entire AD forest; catalogued 12 tier-0 assets and service accounts.",
    "Pivoted through compromised VPN concentrator to reach isolated OT segment.",
    "Tampered with CI/CD pipeline to inject signed payload into production release.",
    "Deployed custom RAT with keylogging, clipboard capture, and covert exfil modules.",
    "Initiated file encryption across 3 file servers — approximately 800k files affected.",
    "Dropped ransom note, deleted VSS snapshots, and disabled all recovery mechanisms.",
    "Planted dormant backdoor in authentication library with encrypted remote config.",
    "Conducted stealth internal network scan; discovered 340 live hosts across 12 VLANs.",
    "Coordinated with malicious insider to obtain physical badge access to data centre.",
    "Rotated C2 infrastructure to fresh bulletproof hosting provider in new jurisdiction.",
    "First observed use of process hollowing technique to evade endpoint detection.",
    "Gained initial foothold via compromised third-party vendor remote-access credentials.",
  ]
  let times = [
    "2025-01-03 02:14", "2025-01-11 08:47", "2025-01-19 14:22", "2025-01-28 21:05",
    "2025-02-05 04:38", "2025-02-14 11:11", "2025-02-21 17:44", "2025-03-02 00:17",
    "2025-03-10 06:50", "2025-03-18 13:23", "2025-03-26 19:56", "2025-04-04 03:29",
    "2025-04-12 09:02", "2025-04-20 15:35", "2025-04-29 22:08", "2025-05-07 05:41",
    "2025-05-15 12:14", "2025-05-23 18:47", "2025-05-31 01:20", "2025-06-08 07:53",
  ]
  let variants = [
    timeline.Error, timeline.Default, timeline.Warning,
    timeline.Default, timeline.Error,
  ]
  let title = at(titles, h % 20, "Activity Detected")
  let desc = at(descs, h / 20 % 20, "Suspicious activity observed.")
  let time = at(times, h / 400 % 20, "2025-01-01 00:00")
  let variant = at(variants, h % 5, timeline.Default)
  ThreatEvent(time: time, title: title, description: desc, variant: variant)
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

fn range(from: Int, to: Int) -> List(Int) {
  case from > to {
    True -> []
    False -> [from, ..range(from + 1, to)]
  }
}

fn at(lst: List(a), i: Int, default: a) -> a {
  let #(_, rest) = list.split(lst, i)
  list.first(rest) |> result.unwrap(default)
}
