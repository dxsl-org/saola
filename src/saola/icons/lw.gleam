import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn wallet(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([
        a(
          "d",
          "M19 7V4a1 1 0 0 0-1-1H5a2 2 0 0 0 0 4h15a1 1 0 0 1 1 1v4h-3a2 2 0 0 0 0 4h3a1 1 0 0 0 1-1v-2a1 1 0 0 0-1-1",
        ),
      ]),
      svg.path([a("d", "M3 5v14a2 2 0 0 0 2 2h15a1 1 0 0 0 1-1v-4")]),
    ],
  )
}


pub fn wallet_cards(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "3"),
        a("height", "18"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M3 9a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2")]),
      svg.path([
        a(
          "d",
          "M3 11h3c.8 0 1.6.3 2.1.9l1.1.9c1.6 1.6 4.1 1.6 5.7 0l1.1-.9c.5-.5 1.3-.9 2.1-.9H21",
        ),
      ]),
    ],
  )
}


pub fn wallet_minimal(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M17 14h.01")]),
      svg.path([
        a(
          "d",
          "M7 7h12a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14",
        ),
      ]),
    ],
  )
}


pub fn wallpaper(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 17v4")]),
      svg.path([a("d", "M8 21h8")]),
      svg.path([a("d", "m9 17 6.1-6.1a2 2 0 0 1 2.81.01L22 15")]),
      svg.circle([
        a("r", "2"),
        a("cy", "9"),
        a("cx", "8"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("height", "14"),
        a("width", "20"),
        a("y", "3"),
        a("x", "2"),
      ]),
    ],
  )
}


pub fn wand(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M15 4V2")]),
      svg.path([a("d", "M15 16v-2")]),
      svg.path([a("d", "M8 9h2")]),
      svg.path([a("d", "M20 9h2")]),
      svg.path([a("d", "M17.8 11.8 19 13")]),
      svg.path([a("d", "M15 9h.01")]),
      svg.path([a("d", "M17.8 6.2 19 5")]),
      svg.path([a("d", "m3 21 9-9")]),
      svg.path([a("d", "M12.2 6.2 11 5")]),
    ],
  )
}


pub fn wand_sparkles(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([
        a(
          "d",
          "m21.64 3.64-1.28-1.28a1.21 1.21 0 0 0-1.72 0L2.36 18.64a1.21 1.21 0 0 0 0 1.72l1.28 1.28a1.2 1.2 0 0 0 1.72 0L21.64 5.36a1.2 1.2 0 0 0 0-1.72",
        ),
      ]),
      svg.path([a("d", "m14 7 3 3")]),
      svg.path([a("d", "M5 6v4")]),
      svg.path([a("d", "M19 14v4")]),
      svg.path([a("d", "M10 2v2")]),
      svg.path([a("d", "M7 8H3")]),
      svg.path([a("d", "M21 16h-4")]),
      svg.path([a("d", "M11 3H9")]),
    ],
  )
}


pub fn warehouse(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M18 21V10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1v11")]),
      svg.path([
        a(
          "d",
          "M22 19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V8a2 2 0 0 1 1.132-1.803l7.95-3.974a2 2 0 0 1 1.837 0l7.948 3.974A2 2 0 0 1 22 8z",
        ),
      ]),
      svg.path([a("d", "M6 13h12")]),
      svg.path([a("d", "M6 17h12")]),
    ],
  )
}


pub fn washing_machine(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M3 6h3")]),
      svg.path([a("d", "M17 6h.01")]),
      svg.rect([
        a("rx", "2"),
        a("y", "2"),
        a("x", "3"),
        a("height", "20"),
        a("width", "18"),
      ]),
      svg.circle([
        a("r", "5"),
        a("cy", "13"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M12 18a2.5 2.5 0 0 0 0-5 2.5 2.5 0 0 1 0-5")]),
    ],
  )
}


pub fn watch(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 10v2.2l1.6 1")]),
      svg.path([
        a(
          "d",
          "m16.13 7.66-.81-4.05a2 2 0 0 0-2-1.61h-2.68a2 2 0 0 0-2 1.61l-.78 4.05",
        ),
      ]),
      svg.path([
        a(
          "d",
          "m7.88 16.36.8 4a2 2 0 0 0 2 1.61h2.72a2 2 0 0 0 2-1.61l.81-4.05",
        ),
      ]),
      svg.circle([
        a("r", "6"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn waves(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([
        a(
          "d",
          "M2 6c.6.5 1.2 1 2.5 1C7 7 7 5 9.5 5c2.6 0 2.4 2 5 2 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M2 12c.6.5 1.2 1 2.5 1 2.5 0 2.5-2 5-2 2.6 0 2.4 2 5 2 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M2 18c.6.5 1.2 1 2.5 1 2.5 0 2.5-2 5-2 2.6 0 2.4 2 5 2 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1",
        ),
      ]),
    ],
  )
}


pub fn waves_arrow_down(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 10L12 2")]),
      svg.path([a("d", "M16 6L12 10L8 6")]),
      svg.path([
        a(
          "d",
          "M2 15C2.6 15.5 3.2 16 4.5 16C7 16 7 14 9.5 14C12.1 14 11.9 16 14.5 16C17 16 17 14 19.5 14C20.8 14 21.4 14.5 22 15",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M2 21C2.6 21.5 3.2 22 4.5 22C7 22 7 20 9.5 20C12.1 20 11.9 22 14.5 22C17 22 17 20 19.5 20C20.8 20 21.4 20.5 22 21",
        ),
      ]),
    ],
  )
}


pub fn waves_arrow_up(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 2v8")]),
      svg.path([
        a(
          "d",
          "M2 15c.6.5 1.2 1 2.5 1 2.5 0 2.5-2 5-2 2.6 0 2.4 2 5 2 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M2 21c.6.5 1.2 1 2.5 1 2.5 0 2.5-2 5-2 2.6 0 2.4 2 5 2 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1",
        ),
      ]),
      svg.path([a("d", "m8 6 4-4 4 4")]),
    ],
  )
}


pub fn waves_ladder(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M19 5a2 2 0 0 0-2 2v11")]),
      svg.path([
        a(
          "d",
          "M2 18c.6.5 1.2 1 2.5 1 2.5 0 2.5-2 5-2 2.6 0 2.4 2 5 2 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1",
        ),
      ]),
      svg.path([a("d", "M7 13h10")]),
      svg.path([a("d", "M7 9h10")]),
      svg.path([a("d", "M9 5a2 2 0 0 0-2 2v11")]),
    ],
  )
}


pub fn waypoints(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m10.586 5.414-5.172 5.172")]),
      svg.path([a("d", "m18.586 13.414-5.172 5.172")]),
      svg.path([a("d", "M6 12h12")]),
      svg.circle([
        a("r", "2"),
        a("cy", "20"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "4"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "12"),
        a("cx", "20"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "12"),
        a("cx", "4"),
      ]),
    ],
  )
}


pub fn webcam(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.circle([
        a("r", "8"),
        a("cy", "10"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "10"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M7 22h10")]),
      svg.path([a("d", "M12 22v-4")]),
    ],
  )
}


pub fn webhook(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([
        a(
          "d",
          "M18 16.98h-5.99c-1.1 0-1.95.94-2.48 1.9A4 4 0 0 1 2 17c.01-.7.2-1.4.57-2",
        ),
      ]),
      svg.path([
        a("d", "m6 17 3.13-5.78c.53-.97.1-2.18-.5-3.1a4 4 0 1 1 6.89-4.06"),
      ]),
      svg.path([
        a("d", "m12 6 3.13 5.73C15.66 12.7 16.9 13 18 13a4 4 0 0 1 0 8"),
      ]),
    ],
  )
}


pub fn webhook_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([
        a("d", "M17 17h-5c-1.09-.02-1.94.92-2.5 1.9A3 3 0 1 1 2.57 15"),
      ]),
      svg.path([a("d", "M9 3.4a4 4 0 0 1 6.52.66")]),
      svg.path([a("d", "m6 17 3.1-5.8a2.5 2.5 0 0 0 .057-2.05")]),
      svg.path([a("d", "M20.3 20.3a4 4 0 0 1-2.3.7")]),
      svg.path([a("d", "M18.6 13a4 4 0 0 1 3.357 3.414")]),
      svg.path([a("d", "m12 6 .6 1")]),
      svg.path([a("d", "m2 2 20 20")]),
    ],
  )
}


pub fn weight(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.circle([
        a("r", "3"),
        a("cy", "5"),
        a("cx", "12"),
      ]),
      svg.path([
        a(
          "d",
          "M6.5 8a2 2 0 0 0-1.905 1.46L2.1 18.5A2 2 0 0 0 4 21h16a2 2 0 0 0 1.925-2.54L19.4 9.5A2 2 0 0 0 17.48 8Z",
        ),
      ]),
    ],
  )
}


pub fn weight_tilde(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([
        a(
          "d",
          "M6.5 8a2 2 0 0 0-1.906 1.46L2.1 18.5A2 2 0 0 0 4 21h16a2 2 0 0 0 1.925-2.54L19.4 9.5A2 2 0 0 0 17.48 8z",
        ),
      ]),
      svg.path([a("d", "M7.999 15a2.5 2.5 0 0 1 4 0 2.5 2.5 0 0 0 4 0")]),
      svg.circle([
        a("r", "3"),
        a("cy", "5"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn wheat(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M2 22 16 8")]),
      svg.path([
        a(
          "d",
          "M3.47 12.53 5 11l1.53 1.53a3.5 3.5 0 0 1 0 4.94L5 19l-1.53-1.53a3.5 3.5 0 0 1 0-4.94Z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M7.47 8.53 9 7l1.53 1.53a3.5 3.5 0 0 1 0 4.94L9 15l-1.53-1.53a3.5 3.5 0 0 1 0-4.94Z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M11.47 4.53 13 3l1.53 1.53a3.5 3.5 0 0 1 0 4.94L13 11l-1.53-1.53a3.5 3.5 0 0 1 0-4.94Z",
        ),
      ]),
      svg.path([a("d", "M20 2h2v2a4 4 0 0 1-4 4h-2V6a4 4 0 0 1 4-4Z")]),
      svg.path([
        a(
          "d",
          "M11.47 17.47 13 19l-1.53 1.53a3.5 3.5 0 0 1-4.94 0L5 19l1.53-1.53a3.5 3.5 0 0 1 4.94 0Z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M15.47 13.47 17 15l-1.53 1.53a3.5 3.5 0 0 1-4.94 0L9 15l1.53-1.53a3.5 3.5 0 0 1 4.94 0Z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M19.47 9.47 21 11l-1.53 1.53a3.5 3.5 0 0 1-4.94 0L13 11l1.53-1.53a3.5 3.5 0 0 1 4.94 0Z",
        ),
      ]),
    ],
  )
}


pub fn wheat_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m2 22 10-10")]),
      svg.path([a("d", "m16 8-1.17 1.17")]),
      svg.path([
        a(
          "d",
          "M3.47 12.53 5 11l1.53 1.53a3.5 3.5 0 0 1 0 4.94L5 19l-1.53-1.53a3.5 3.5 0 0 1 0-4.94Z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "m8 8-.53.53a3.5 3.5 0 0 0 0 4.94L9 15l1.53-1.53c.55-.55.88-1.25.98-1.97",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M10.91 5.26c.15-.26.34-.51.56-.73L13 3l1.53 1.53a3.5 3.5 0 0 1 .28 4.62",
        ),
      ]),
      svg.path([a("d", "M20 2h2v2a4 4 0 0 1-4 4h-2V6a4 4 0 0 1 4-4Z")]),
      svg.path([
        a(
          "d",
          "M11.47 17.47 13 19l-1.53 1.53a3.5 3.5 0 0 1-4.94 0L5 19l1.53-1.53a3.5 3.5 0 0 1 4.94 0Z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "m16 16-.53.53a3.5 3.5 0 0 1-4.94 0L9 15l1.53-1.53a3.49 3.49 0 0 1 1.97-.98",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M18.74 13.09c.26-.15.51-.34.73-.56L21 11l-1.53-1.53a3.5 3.5 0 0 0-4.62-.28",
        ),
      ]),
      svg.line([
        a("y2", "22"),
        a("y1", "2"),
        a("x2", "22"),
        a("x1", "2"),
      ]),
    ],
  )
}


pub fn whole_word(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.circle([
        a("r", "3"),
        a("cy", "12"),
        a("cx", "7"),
      ]),
      svg.path([a("d", "M10 9v6")]),
      svg.circle([
        a("r", "3"),
        a("cy", "12"),
        a("cx", "17"),
      ]),
      svg.path([a("d", "M14 7v8")]),
      svg.path([a("d", "M22 17v1c0 .5-.5 1-1 1H3c-.5 0-1-.5-1-1v-1")]),
    ],
  )
}


pub fn wifi(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 20h.01")]),
      svg.path([a("d", "M2 8.82a15 15 0 0 1 20 0")]),
      svg.path([a("d", "M5 12.859a10 10 0 0 1 14 0")]),
      svg.path([a("d", "M8.5 16.429a5 5 0 0 1 7 0")]),
    ],
  )
}


pub fn wifi_cog(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m14.305 19.53.923-.382")]),
      svg.path([a("d", "m15.228 16.852-.923-.383")]),
      svg.path([a("d", "m16.852 15.228-.383-.923")]),
      svg.path([a("d", "m16.852 20.772-.383.924")]),
      svg.path([a("d", "m19.148 15.228.383-.923")]),
      svg.path([a("d", "m19.53 21.696-.382-.924")]),
      svg.path([a("d", "M2 7.82a15 15 0 0 1 20 0")]),
      svg.path([a("d", "m20.772 16.852.924-.383")]),
      svg.path([a("d", "m20.772 19.148.924.383")]),
      svg.path([a("d", "M5 11.858a10 10 0 0 1 11.5-1.785")]),
      svg.path([a("d", "M8.5 15.429a5 5 0 0 1 2.413-1.31")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "18"),
      ]),
    ],
  )
}


pub fn wifi_high(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 20h.01")]),
      svg.path([a("d", "M5 12.859a10 10 0 0 1 14 0")]),
      svg.path([a("d", "M8.5 16.429a5 5 0 0 1 7 0")]),
    ],
  )
}


pub fn wifi_low(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 20h.01")]),
      svg.path([a("d", "M8.5 16.429a5 5 0 0 1 7 0")]),
    ],
  )
}


pub fn wifi_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12 20h.01")]),
      svg.path([a("d", "M8.5 16.429a5 5 0 0 1 7 0")]),
      svg.path([a("d", "M5 12.859a10 10 0 0 1 5.17-2.69")]),
      svg.path([a("d", "M19 12.859a10 10 0 0 0-2.007-1.523")]),
      svg.path([a("d", "M2 8.82a15 15 0 0 1 4.177-2.643")]),
      svg.path([a("d", "M22 8.82a15 15 0 0 0-11.288-3.764")]),
      svg.path([a("d", "m2 2 20 20")]),
    ],
  )
}


pub fn wifi_pen(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M2 8.82a15 15 0 0 1 20 0")]),
      svg.path([
        a(
          "d",
          "M21.378 16.626a1 1 0 0 0-3.004-3.004l-4.01 4.012a2 2 0 0 0-.506.854l-.837 2.87a.5.5 0 0 0 .62.62l2.87-.837a2 2 0 0 0 .854-.506z",
        ),
      ]),
      svg.path([a("d", "M5 12.859a10 10 0 0 1 10.5-2.222")]),
      svg.path([a("d", "M8.5 16.429a5 5 0 0 1 3-1.406")]),
    ],
  )
}


pub fn wifi_sync(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M11.965 10.105v4L13.5 12.5a5 5 0 0 1 8 1.5")]),
      svg.path([a("d", "M11.965 14.105h4")]),
      svg.path([a("d", "M17.965 18.105h4L20.43 19.71a5 5 0 0 1-8-1.5")]),
      svg.path([a("d", "M2 8.82a15 15 0 0 1 20 0")]),
      svg.path([a("d", "M21.965 22.105v-4")]),
      svg.path([a("d", "M5 12.86a10 10 0 0 1 3-2.032")]),
      svg.path([a("d", "M8.5 16.429h.01")]),
    ],
  )
}


pub fn wifi_zero(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [svg.path([a("d", "M12 20h.01")])],
  )
}


pub fn wind(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M12.8 19.6A2 2 0 1 0 14 16H2")]),
      svg.path([a("d", "M17.5 8a2.5 2.5 0 1 1 2 4H2")]),
      svg.path([a("d", "M9.8 4.4A2 2 0 1 1 11 8H2")]),
    ],
  )
}


pub fn wind_arrow_down(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M10 2v8")]),
      svg.path([a("d", "M12.8 21.6A2 2 0 1 0 14 18H2")]),
      svg.path([a("d", "M17.5 10a2.5 2.5 0 1 1 2 4H2")]),
      svg.path([a("d", "m6 6 4 4 4-4")]),
    ],
  )
}


pub fn wine(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M8 22h8")]),
      svg.path([a("d", "M7 10h10")]),
      svg.path([a("d", "M12 15v7")]),
      svg.path([
        a(
          "d",
          "M12 15a5 5 0 0 0 5-5c0-2-.5-4-2-8H9c-1.5 4-2 6-2 8a5 5 0 0 0 5 5Z",
        ),
      ]),
    ],
  )
}


pub fn wine_off(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "M8 22h8")]),
      svg.path([a("d", "M7 10h3m7 0h-1.343")]),
      svg.path([a("d", "M12 15v7")]),
      svg.path([
        a(
          "d",
          "M7.307 7.307A12.33 12.33 0 0 0 7 10a5 5 0 0 0 7.391 4.391M8.638 2.981C8.75 2.668 8.872 2.34 9 2h6c1.5 4 2 6 2 8 0 .407-.05.809-.145 1.198",
        ),
      ]),
      svg.line([
        a("y2", "22"),
        a("y1", "2"),
        a("x2", "22"),
        a("x1", "2"),
      ]),
    ],
  )
}


pub fn workflow(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "3"),
        a("height", "8"),
        a("width", "8"),
      ]),
      svg.path([a("d", "M7 11v4a2 2 0 0 0 2 2h4")]),
      svg.rect([
        a("rx", "2"),
        a("y", "13"),
        a("x", "13"),
        a("height", "8"),
        a("width", "8"),
      ]),
    ],
  )
}


pub fn worm(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([a("d", "m19 12-1.5 3")]),
      svg.path([a("d", "M19.63 18.81 22 20")]),
      svg.path([
        a(
          "d",
          "M6.47 8.23a1.68 1.68 0 0 1 2.44 1.93l-.64 2.08a6.76 6.76 0 0 0 10.16 7.67l.42-.27a1 1 0 1 0-2.73-4.21l-.42.27a1.76 1.76 0 0 1-2.63-1.99l.64-2.08A6.66 6.66 0 0 0 3.94 3.9l-.7.4a1 1 0 1 0 2.55 4.34z",
        ),
      ]),
    ],
  )
}


pub fn wrench(attributes: List(Attribute(a))) {
  svg.svg(
    [
      a("stroke-linejoin", "round"),
      a("stroke-linecap", "round"),
      a("stroke-width", "2"),
      a("stroke", "currentColor"),
      a("fill", "none"),
      a("viewBox", "0 0 24 24"),
      a("height", "24"),
      a("width", "24"),
      ..attributes
    ],
    [
      svg.path([
        a(
          "d",
          "M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.106-3.105c.32-.322.863-.22.983.218a6 6 0 0 1-8.259 7.057l-7.91 7.91a1 1 0 0 1-2.999-3l7.91-7.91a6 6 0 0 1 7.057-8.259c.438.12.54.662.219.984z",
        ),
      ]),
    ],
  )
}
