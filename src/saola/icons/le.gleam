import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn ear(attributes: List(Attribute(a))) {
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
        a("d", "M6 8.5a6.5 6.5 0 1 1 13 0c0 6-6 6-6 10a3.5 3.5 0 1 1-7 0"),
      ]),
      svg.path([a("d", "M15 8.5a2.5 2.5 0 0 0-5 0v1a2 2 0 1 1 0 4")]),
    ],
  )
}


pub fn ear_off(attributes: List(Attribute(a))) {
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
        a("d", "M6 18.5a3.5 3.5 0 1 0 7 0c0-1.57.92-2.52 2.04-3.46"),
      ]),
      svg.path([a("d", "M6 8.5c0-.75.13-1.47.36-2.14")]),
      svg.path([
        a("d", "M8.8 3.15A6.5 6.5 0 0 1 19 8.5c0 1.63-.44 2.81-1.09 3.76"),
      ]),
      svg.path([
        a("d", "M12.5 6A2.5 2.5 0 0 1 15 8.5M10 13a2 2 0 0 0 1.82-1.18"),
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


pub fn earth(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M21.54 15H17a2 2 0 0 0-2 2v4.54")]),
      svg.path([
        a(
          "d",
          "M7 3.34V5a3 3 0 0 0 3 3a2 2 0 0 1 2 2c0 1.1.9 2 2 2a2 2 0 0 0 2-2c0-1.1.9-2 2-2h3.17",
        ),
      ]),
      svg.path([
        a("d", "M11 21.95V18a2 2 0 0 0-2-2a2 2 0 0 1-2-2v-1a2 2 0 0 0-2-2H2.05"),
      ]),
      svg.circle([
        a("r", "10"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn earth_lock(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M7 3.34V5a3 3 0 0 0 3 3")]),
      svg.path([
        a("d", "M11 21.95V18a2 2 0 0 0-2-2 2 2 0 0 1-2-2v-1a2 2 0 0 0-2-2H2.05"),
      ]),
      svg.path([a("d", "M21.54 15H17a2 2 0 0 0-2 2v4.54")]),
      svg.path([a("d", "M12 2a10 10 0 1 0 9.54 13")]),
      svg.path([a("d", "M20 6V4a2 2 0 1 0-4 0v2")]),
      svg.rect([
        a("rx", "1"),
        a("y", "6"),
        a("x", "14"),
        a("height", "5"),
        a("width", "8"),
      ]),
    ],
  )
}


pub fn eclipse(attributes: List(Attribute(a))) {
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
        a("r", "10"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M12 2a7 7 0 1 0 10 10")]),
    ],
  )
}


pub fn egg(attributes: List(Attribute(a))) {
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
        a("d", "M12 2C8 2 4 8 4 14a8 8 0 0 0 16 0c0-6-4-12-8-12"),
      ]),
    ],
  )
}


pub fn egg_fried(attributes: List(Attribute(a))) {
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
        a("r", "3.5"),
        a("cy", "12.5"),
        a("cx", "11.5"),
      ]),
      svg.path([
        a(
          "d",
          "M3 8c0-3.5 2.5-6 6.5-6 5 0 4.83 3 7.5 5s5 2 5 6c0 4.5-2.5 6.5-7 6.5-2.5 0-2.5 2.5-6 2.5s-7-2-7-5.5c0-3 1.5-3 1.5-5C3.5 10 3 9 3 8Z",
        ),
      ]),
    ],
  )
}


pub fn egg_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([
        a("d", "M20 14.347V14c0-6-4-12-8-12-1.078 0-2.157.436-3.157 1.19"),
      ]),
      svg.path([
        a("d", "M6.206 6.21C4.871 8.4 4 11.2 4 14a8 8 0 0 0 14.568 4.568"),
      ]),
    ],
  )
}


pub fn ellipse(attributes: List(Attribute(a))) {
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
      svg.ellipse([
        a("ry", "6"),
        a("rx", "10"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn ellipsis(attributes: List(Attribute(a))) {
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
        a("r", "1"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "12"),
        a("cx", "19"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "12"),
        a("cx", "5"),
      ]),
    ],
  )
}


pub fn ellipsis_vertical(attributes: List(Attribute(a))) {
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
        a("r", "1"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "5"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "19"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn equal(attributes: List(Attribute(a))) {
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
      svg.line([
        a("y2", "9"),
        a("y1", "9"),
        a("x2", "19"),
        a("x1", "5"),
      ]),
      svg.line([
        a("y2", "15"),
        a("y1", "15"),
        a("x2", "19"),
        a("x1", "5"),
      ]),
    ],
  )
}


pub fn equal_approximately(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M5 15a6.5 6.5 0 0 1 7 0 6.5 6.5 0 0 0 7 0")]),
      svg.path([a("d", "M5 9a6.5 6.5 0 0 1 7 0 6.5 6.5 0 0 0 7 0")]),
    ],
  )
}


pub fn equal_not(attributes: List(Attribute(a))) {
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
      svg.line([
        a("y2", "9"),
        a("y1", "9"),
        a("x2", "19"),
        a("x1", "5"),
      ]),
      svg.line([
        a("y2", "15"),
        a("y1", "15"),
        a("x2", "19"),
        a("x1", "5"),
      ]),
      svg.line([
        a("y2", "19"),
        a("y1", "5"),
        a("x2", "5"),
        a("x1", "19"),
      ]),
    ],
  )
}


pub fn eraser(attributes: List(Attribute(a))) {
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
          "M21 21H8a2 2 0 0 1-1.42-.587l-3.994-3.999a2 2 0 0 1 0-2.828l10-10a2 2 0 0 1 2.829 0l5.999 6a2 2 0 0 1 0 2.828L12.834 21",
        ),
      ]),
      svg.path([a("d", "m5.082 11.09 8.828 8.828")]),
    ],
  )
}


pub fn ethernet_port(attributes: List(Attribute(a))) {
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
          "m15 20 3-3h2a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h2l3 3z",
        ),
      ]),
      svg.path([a("d", "M6 8v1")]),
      svg.path([a("d", "M10 8v1")]),
      svg.path([a("d", "M14 8v1")]),
      svg.path([a("d", "M18 8v1")]),
    ],
  )
}


pub fn euro(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M4 10h12")]),
      svg.path([a("d", "M4 14h9")]),
      svg.path([
        a(
          "d",
          "M19 6a7.7 7.7 0 0 0-5.2-2A7.9 7.9 0 0 0 6 12c0 4.4 3.5 8 7.8 8 2 0 3.8-.8 5.2-2",
        ),
      ]),
    ],
  )
}


pub fn ev_charger(attributes: List(Attribute(a))) {
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
          "M14 13h2a2 2 0 0 1 2 2v2a2 2 0 0 0 4 0v-6.998a2 2 0 0 0-.59-1.42L18 5",
        ),
      ]),
      svg.path([a("d", "M14 21V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v16")]),
      svg.path([a("d", "M2 21h13")]),
      svg.path([a("d", "M3 7h11")]),
      svg.path([a("d", "m9 11-2 3h3l-2 3")]),
    ],
  )
}


pub fn expand(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m15 15 6 6")]),
      svg.path([a("d", "m15 9 6-6")]),
      svg.path([a("d", "M21 16v5h-5")]),
      svg.path([a("d", "M21 8V3h-5")]),
      svg.path([a("d", "M3 16v5h5")]),
      svg.path([a("d", "m3 21 6-6")]),
      svg.path([a("d", "M3 8V3h5")]),
      svg.path([a("d", "M9 9 3 3")]),
    ],
  )
}


pub fn external_link(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M15 3h6v6")]),
      svg.path([a("d", "M10 14 21 3")]),
      svg.path([
        a("d", "M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"),
      ]),
    ],
  )
}


pub fn eye(attributes: List(Attribute(a))) {
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
          "M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0",
        ),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn eye_closed(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m15 18-.722-3.25")]),
      svg.path([a("d", "M2 8a10.645 10.645 0 0 0 20 0")]),
      svg.path([a("d", "m20 15-1.726-2.05")]),
      svg.path([a("d", "m4 15 1.726-2.05")]),
      svg.path([a("d", "m9 18 .722-3.25")]),
    ],
  )
}


pub fn eye_off(attributes: List(Attribute(a))) {
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
          "M10.733 5.076a10.744 10.744 0 0 1 11.205 6.575 1 1 0 0 1 0 .696 10.747 10.747 0 0 1-1.444 2.49",
        ),
      ]),
      svg.path([a("d", "M14.084 14.158a3 3 0 0 1-4.242-4.242")]),
      svg.path([
        a(
          "d",
          "M17.479 17.499a10.75 10.75 0 0 1-15.417-5.151 1 1 0 0 1 0-.696 10.75 10.75 0 0 1 4.446-5.143",
        ),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
    ],
  )
}
