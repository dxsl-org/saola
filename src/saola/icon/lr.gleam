import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn rabbit(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M13 16a3 3 0 0 1 2.24 5")]),
      svg.path([a("d", "M18 12h.01")]),
      svg.path([
        a(
          "d",
          "M18 21h-8a4 4 0 0 1-4-4 7 7 0 0 1 7-7h.2L9.6 6.4a1 1 0 1 1 2.8-2.8L15.8 7h.2c3.3 0 6 2.7 6 6v1a2 2 0 0 1-2 2h-1a3 3 0 0 0-3 3",
        ),
      ]),
      svg.path([a("d", "M20 8.54V4a2 2 0 1 0-4 0v3")]),
      svg.path([a("d", "M7.612 12.524a3 3 0 1 0-1.6 4.3")]),
    ],
  )
}


pub fn radar(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M19.07 4.93A10 10 0 0 0 6.99 3.34")]),
      svg.path([a("d", "M4 6h.01")]),
      svg.path([a("d", "M2.29 9.62A10 10 0 1 0 21.31 8.35")]),
      svg.path([a("d", "M16.24 7.76A6 6 0 1 0 8.23 16.67")]),
      svg.path([a("d", "M12 18h.01")]),
      svg.path([a("d", "M17.99 11.66A6 6 0 0 1 15.77 16.67")]),
      svg.circle([
        a("r", "2"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "m13.41 10.59 5.66-5.66")]),
    ],
  )
}


pub fn radiation(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 12h.01")]),
      svg.path([
        a(
          "d",
          "M14 15.4641a4 4 0 0 1-4 0L7.52786 19.74597 A 1 1 0 0 0 7.99303 21.16211 10 10 0 0 0 16.00697 21.16211 1 1 0 0 0 16.47214 19.74597z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M16 12a4 4 0 0 0-2-3.464l2.472-4.282a1 1 0 0 1 1.46-.305 10 10 0 0 1 4.006 6.94A1 1 0 0 1 21 12z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M8 12a4 4 0 0 1 2-3.464L7.528 4.254a1 1 0 0 0-1.46-.305 10 10 0 0 0-4.006 6.94A1 1 0 0 0 3 12z",
        ),
      ]),
    ],
  )
}


pub fn radical(attributes: List(Attribute(a))) {
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
          "M3 12h3.28a1 1 0 0 1 .948.684l2.298 7.934a.5.5 0 0 0 .96-.044L13.82 4.771A1 1 0 0 1 14.792 4H21",
        ),
      ]),
    ],
  )
}


pub fn radio(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16.247 7.761a6 6 0 0 1 0 8.478")]),
      svg.path([a("d", "M19.075 4.933a10 10 0 0 1 0 14.134")]),
      svg.path([a("d", "M4.925 19.067a10 10 0 0 1 0-14.134")]),
      svg.path([a("d", "M7.753 16.239a6 6 0 0 1 0-8.478")]),
      svg.circle([
        a("r", "2"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn radio_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M13.414 13.414a2 2 0 1 1-2.828-2.828")]),
      svg.path([a("d", "M16.247 7.761a6 6 0 0 1 1.744 4.572")]),
      svg.path([a("d", "M19.075 4.933a10 10 0 0 1 2.234 10.72")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M4.925 19.067a10 10 0 0 1 0-14.134")]),
      svg.path([a("d", "M7.753 16.239a6 6 0 0 1 0-8.478")]),
    ],
  )
}


pub fn radio_receiver(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M5 16v2")]),
      svg.path([a("d", "M19 16v2")]),
      svg.rect([
        a("rx", "2"),
        a("y", "8"),
        a("x", "2"),
        a("height", "8"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M18 12h.01")]),
    ],
  )
}


pub fn radio_tower(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M4.9 16.1C1 12.2 1 5.8 4.9 1.9")]),
      svg.path([a("d", "M7.8 4.7a6.14 6.14 0 0 0-.8 7.5")]),
      svg.circle([
        a("r", "2"),
        a("cy", "9"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M16.2 4.8c2 2 2.26 5.11.8 7.47")]),
      svg.path([a("d", "M19.1 1.9a9.96 9.96 0 0 1 0 14.1")]),
      svg.path([a("d", "M9.5 18h5")]),
      svg.path([a("d", "m8 22 4-11 4 11")]),
    ],
  )
}


pub fn radius(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M20.34 17.52a10 10 0 1 0-2.82 2.82")]),
      svg.circle([
        a("r", "2"),
        a("cy", "19"),
        a("cx", "19"),
      ]),
      svg.path([a("d", "m13.41 13.41 4.18 4.18")]),
      svg.circle([
        a("r", "2"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn rainbow(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M22 17a10 10 0 0 0-20 0")]),
      svg.path([a("d", "M6 17a6 6 0 0 1 12 0")]),
      svg.path([a("d", "M10 17a2 2 0 0 1 4 0")]),
    ],
  )
}


pub fn rat(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M13 22H4a2 2 0 0 1 0-4h12")]),
      svg.path([a("d", "M13.236 18a3 3 0 0 0-2.2-5")]),
      svg.path([a("d", "M16 9h.01")]),
      svg.path([
        a(
          "d",
          "M16.82 3.94a3 3 0 1 1 3.237 4.868l1.815 2.587a1.5 1.5 0 0 1-1.5 2.1l-2.872-.453a3 3 0 0 0-3.5 3",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M17 4.988a3 3 0 1 0-5.2 2.052A7 7 0 0 0 4 14.015 4 4 0 0 0 8 18",
        ),
      ]),
    ],
  )
}


pub fn ratio(attributes: List(Attribute(a))) {
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
        a("y", "2"),
        a("x", "6"),
        a("height", "20"),
        a("width", "12"),
      ]),
      svg.rect([
        a("rx", "2"),
        a("y", "6"),
        a("x", "2"),
        a("height", "12"),
        a("width", "20"),
      ]),
    ],
  )
}


pub fn receipt(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 17V7")]),
      svg.path([a("d", "M16 8h-6a2 2 0 0 0 0 4h4a2 2 0 0 1 0 4H8")]),
      svg.path([
        a(
          "d",
          "M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z",
        ),
      ]),
    ],
  )
}


pub fn receipt_cent(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 7v10")]),
      svg.path([
        a(
          "d",
          "M14.828 14.829a4 4 0 0 1-5.656 0 4 4 0 0 1 0-5.657 4 4 0 0 1 5.656 0",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z",
        ),
      ]),
    ],
  )
}


pub fn receipt_euro(attributes: List(Attribute(a))) {
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
          "M15.828 14.829a4 4 0 0 1-5.656 0 4 4 0 0 1 0-5.657 4 4 0 0 1 5.656 0",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z",
        ),
      ]),
      svg.path([a("d", "M8 12h5")]),
    ],
  )
}


pub fn receipt_indian_rupee(attributes: List(Attribute(a))) {
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
          "M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z",
        ),
      ]),
      svg.path([a("d", "M8 11h8")]),
      svg.path([a("d", "M8 7h8")]),
      svg.path([a("d", "M9 7a4 4 0 0 1 0 8H8l3 2")]),
    ],
  )
}


pub fn receipt_japanese_yen(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m12 10 3-3")]),
      svg.path([
        a(
          "d",
          "M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z",
        ),
      ]),
      svg.path([a("d", "M9 11h6")]),
      svg.path([a("d", "M9 15h6")]),
      svg.path([a("d", "m9 7 3 3v7")]),
    ],
  )
}


pub fn receipt_pound_sterling(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 17V9.5a1 1 0 0 1 5 0")]),
      svg.path([
        a(
          "d",
          "M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z",
        ),
      ]),
      svg.path([a("d", "M8 13h5")]),
      svg.path([a("d", "M8 17h7")]),
    ],
  )
}


pub fn receipt_russian_ruble(attributes: List(Attribute(a))) {
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
          "M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z",
        ),
      ]),
      svg.path([a("d", "M8 11h5a2 2 0 0 0 0-4h-3v10")]),
      svg.path([a("d", "M8 15h5")]),
    ],
  )
}


pub fn receipt_swiss_franc(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 11h4")]),
      svg.path([a("d", "M10 17V7h5")]),
      svg.path([
        a(
          "d",
          "M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z",
        ),
      ]),
      svg.path([a("d", "M8 15h5")]),
    ],
  )
}


pub fn receipt_text(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M13 16H8")]),
      svg.path([a("d", "M14 8H8")]),
      svg.path([a("d", "M16 12H8")]),
      svg.path([
        a(
          "d",
          "M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z",
        ),
      ]),
    ],
  )
}


pub fn receipt_turkish_lira(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 7v10a5 5 0 0 0 5-5")]),
      svg.path([a("d", "m14 8-6 3")]),
      svg.path([
        a(
          "d",
          "M4 3a1 1 0 0 1 1-1 1.3 1.3 0 0 1 .7.2l.933.6a1.3 1.3 0 0 0 1.4 0l.934-.6a1.3 1.3 0 0 1 1.4 0l.933.6a1.3 1.3 0 0 0 1.4 0l.933-.6a1.3 1.3 0 0 1 1.4 0l.934.6a1.3 1.3 0 0 0 1.4 0l.933-.6A1.3 1.3 0 0 1 19 2a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1 1.3 1.3 0 0 1-.7-.2l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.934.6a1.3 1.3 0 0 1-1.4 0l-.933-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-1.4 0l-.934-.6a1.3 1.3 0 0 0-1.4 0l-.933.6a1.3 1.3 0 0 1-.7.2 1 1 0 0 1-1-1z",
        ),
      ]),
    ],
  )
}


pub fn rectangle_circle(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M14 4v16H3a1 1 0 0 1-1-1V5a1 1 0 0 1 1-1z")]),
      svg.circle([
        a("r", "8"),
        a("cy", "12"),
        a("cx", "14"),
      ]),
    ],
  )
}


pub fn rectangle_ellipsis(attributes: List(Attribute(a))) {
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
        a("y", "6"),
        a("x", "2"),
        a("height", "12"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M12 12h.01")]),
      svg.path([a("d", "M17 12h.01")]),
      svg.path([a("d", "M7 12h.01")]),
    ],
  )
}


pub fn rectangle_goggles(attributes: List(Attribute(a))) {
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
          "M20 6a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2h-4a2 2 0 0 1-1.6-.8l-1.6-2.13a1 1 0 0 0-1.6 0L9.6 17.2A2 2 0 0 1 8 18H4a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2z",
        ),
      ]),
    ],
  )
}


pub fn rectangle_horizontal(attributes: List(Attribute(a))) {
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
        a("y", "6"),
        a("x", "2"),
        a("height", "12"),
        a("width", "20"),
      ]),
    ],
  )
}


pub fn rectangle_vertical(attributes: List(Attribute(a))) {
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
        a("y", "2"),
        a("x", "6"),
        a("height", "20"),
        a("width", "12"),
      ]),
    ],
  )
}


pub fn recycle(attributes: List(Attribute(a))) {
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
          "M7 19H4.815a1.83 1.83 0 0 1-1.57-.881 1.785 1.785 0 0 1-.004-1.784L7.196 9.5",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M11 19h8.203a1.83 1.83 0 0 0 1.556-.89 1.784 1.784 0 0 0 0-1.775l-1.226-2.12",
        ),
      ]),
      svg.path([a("d", "m14 16-3 3 3 3")]),
      svg.path([a("d", "M8.293 13.596 7.196 9.5 3.1 10.598")]),
      svg.path([
        a(
          "d",
          "m9.344 5.811 1.093-1.892A1.83 1.83 0 0 1 11.985 3a1.784 1.784 0 0 1 1.546.888l3.943 6.843",
        ),
      ]),
      svg.path([a("d", "m13.378 9.633 4.096 1.098 1.097-4.096")]),
    ],
  )
}


pub fn redo(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M21 7v6h-6")]),
      svg.path([a("d", "M3 17a9 9 0 0 1 9-9 9 9 0 0 1 6 2.3l3 2.7")]),
    ],
  )
}


pub fn redo_2(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m15 14 5-5-5-5")]),
      svg.path([
        a("d", "M20 9H9.5A5.5 5.5 0 0 0 4 14.5A5.5 5.5 0 0 0 9.5 20H13"),
      ]),
    ],
  )
}


pub fn redo_dot(attributes: List(Attribute(a))) {
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
        a("cy", "17"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M21 7v6h-6")]),
      svg.path([a("d", "M3 17a9 9 0 0 1 9-9 9 9 0 0 1 6 2.3l3 2.7")]),
    ],
  )
}


pub fn refresh_ccw(attributes: List(Attribute(a))) {
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
        a("d", "M21 12a9 9 0 0 0-9-9 9.75 9.75 0 0 0-6.74 2.74L3 8"),
      ]),
      svg.path([a("d", "M3 3v5h5")]),
      svg.path([
        a("d", "M3 12a9 9 0 0 0 9 9 9.75 9.75 0 0 0 6.74-2.74L21 16"),
      ]),
      svg.path([a("d", "M16 16h5v5")]),
    ],
  )
}


pub fn refresh_ccw_dot(attributes: List(Attribute(a))) {
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
        a("d", "M21 12a9 9 0 0 0-9-9 9.75 9.75 0 0 0-6.74 2.74L3 8"),
      ]),
      svg.path([a("d", "M3 3v5h5")]),
      svg.path([
        a("d", "M3 12a9 9 0 0 0 9 9 9.75 9.75 0 0 0 6.74-2.74L21 16"),
      ]),
      svg.path([a("d", "M16 16h5v5")]),
      svg.circle([
        a("r", "1"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn refresh_cw(attributes: List(Attribute(a))) {
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
        a("d", "M3 12a9 9 0 0 1 9-9 9.75 9.75 0 0 1 6.74 2.74L21 8"),
      ]),
      svg.path([a("d", "M21 3v5h-5")]),
      svg.path([
        a("d", "M21 12a9 9 0 0 1-9 9 9.75 9.75 0 0 1-6.74-2.74L3 16"),
      ]),
      svg.path([a("d", "M8 16H3v5")]),
    ],
  )
}


pub fn refresh_cw_off(attributes: List(Attribute(a))) {
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
          "M21 8L18.74 5.74A9.75 9.75 0 0 0 12 3C11 3 10.03 3.16 9.13 3.47",
        ),
      ]),
      svg.path([a("d", "M8 16H3v5")]),
      svg.path([a("d", "M3 12C3 9.51 4 7.26 5.64 5.64")]),
      svg.path([
        a("d", "m3 16 2.26 2.26A9.75 9.75 0 0 0 12 21c2.49 0 4.74-1 6.36-2.64"),
      ]),
      svg.path([a("d", "M21 12c0 1-.16 1.97-.47 2.87")]),
      svg.path([a("d", "M21 3v5h-5")]),
      svg.path([a("d", "M22 22 2 2")]),
    ],
  )
}


pub fn refrigerator(attributes: List(Attribute(a))) {
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
          "M5 6a4 4 0 0 1 4-4h6a4 4 0 0 1 4 4v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6Z",
        ),
      ]),
      svg.path([a("d", "M5 10h14")]),
      svg.path([a("d", "M15 7v6")]),
    ],
  )
}


pub fn regex(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M17 3v10")]),
      svg.path([a("d", "m12.67 5.5 8.66 5")]),
      svg.path([a("d", "m12.67 10.5 8.66-5")]),
      svg.path([
        a(
          "d",
          "M9 17a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v2a2 2 0 0 0 2 2h2a2 2 0 0 0 2-2v-2z",
        ),
      ]),
    ],
  )
}


pub fn remove_formatting(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M4 7V4h16v3")]),
      svg.path([a("d", "M5 20h6")]),
      svg.path([a("d", "M13 4 8 20")]),
      svg.path([a("d", "m15 15 5 5")]),
      svg.path([a("d", "m20 15-5 5")]),
    ],
  )
}


pub fn repeat(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m17 2 4 4-4 4")]),
      svg.path([a("d", "M3 11v-1a4 4 0 0 1 4-4h14")]),
      svg.path([a("d", "m7 22-4-4 4-4")]),
      svg.path([a("d", "M21 13v1a4 4 0 0 1-4 4H3")]),
    ],
  )
}


pub fn repeat_1(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m17 2 4 4-4 4")]),
      svg.path([a("d", "M3 11v-1a4 4 0 0 1 4-4h14")]),
      svg.path([a("d", "m7 22-4-4 4-4")]),
      svg.path([a("d", "M21 13v1a4 4 0 0 1-4 4H3")]),
      svg.path([a("d", "M11 10h1v4")]),
    ],
  )
}


pub fn repeat_2(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m2 9 3-3 3 3")]),
      svg.path([a("d", "M13 18H7a2 2 0 0 1-2-2V6")]),
      svg.path([a("d", "m22 15-3 3-3-3")]),
      svg.path([a("d", "M11 6h6a2 2 0 0 1 2 2v10")]),
    ],
  )
}


pub fn replace(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M14 4a1 1 0 0 1 1-1")]),
      svg.path([a("d", "M15 10a1 1 0 0 1-1-1")]),
      svg.path([a("d", "M21 4a1 1 0 0 0-1-1")]),
      svg.path([a("d", "M21 9a1 1 0 0 1-1 1")]),
      svg.path([a("d", "m3 7 3 3 3-3")]),
      svg.path([a("d", "M6 10V5a2 2 0 0 1 2-2h2")]),
      svg.rect([
        a("rx", "1"),
        a("height", "7"),
        a("width", "7"),
        a("y", "14"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn replace_all(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M14 14a1 1 0 0 1 1 1v5a1 1 0 0 1-1 1")]),
      svg.path([a("d", "M14 4a1 1 0 0 1 1-1")]),
      svg.path([a("d", "M15 10a1 1 0 0 1-1-1")]),
      svg.path([a("d", "M19 14a1 1 0 0 1 1 1v5a1 1 0 0 1-1 1")]),
      svg.path([a("d", "M21 4a1 1 0 0 0-1-1")]),
      svg.path([a("d", "M21 9a1 1 0 0 1-1 1")]),
      svg.path([a("d", "m3 7 3 3 3-3")]),
      svg.path([a("d", "M6 10V5a2 2 0 0 1 2-2h2")]),
      svg.rect([
        a("rx", "1"),
        a("height", "7"),
        a("width", "7"),
        a("y", "14"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn reply(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M20 18v-2a4 4 0 0 0-4-4H4")]),
      svg.path([a("d", "m9 17-5-5 5-5")]),
    ],
  )
}


pub fn reply_all(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m12 17-5-5 5-5")]),
      svg.path([a("d", "M22 18v-2a4 4 0 0 0-4-4H7")]),
      svg.path([a("d", "m7 17-5-5 5-5")]),
    ],
  )
}


pub fn rewind(attributes: List(Attribute(a))) {
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
          "M12 6a2 2 0 0 0-3.414-1.414l-6 6a2 2 0 0 0 0 2.828l6 6A2 2 0 0 0 12 18z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M22 6a2 2 0 0 0-3.414-1.414l-6 6a2 2 0 0 0 0 2.828l6 6A2 2 0 0 0 22 18z",
        ),
      ]),
    ],
  )
}


pub fn ribbon(attributes: List(Attribute(a))) {
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
          "M12 11.22C11 9.997 10 9 10 8a2 2 0 0 1 4 0c0 1-.998 2.002-2.01 3.22",
        ),
      ]),
      svg.path([a("d", "m12 18 2.57-3.5")]),
      svg.path([a("d", "M6.243 9.016a7 7 0 0 1 11.507-.009")]),
      svg.path([a("d", "M9.35 14.53 12 11.22")]),
      svg.path([
        a(
          "d",
          "M9.35 14.53C7.728 12.246 6 10.221 6 7a6 5 0 0 1 12 0c-.005 3.22-1.778 5.235-3.43 7.5l3.557 4.527a1 1 0 0 1-.203 1.43l-1.894 1.36a1 1 0 0 1-1.384-.215L12 18l-2.679 3.593a1 1 0 0 1-1.39.213l-1.865-1.353a1 1 0 0 1-.203-1.422z",
        ),
      ]),
    ],
  )
}


pub fn road(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 5V3")]),
      svg.path([a("d", "M12 9v3")]),
      svg.path([
        a(
          "d",
          "M2.077 18.449A2 2 0 0 0 4 21h16a2 2 0 0 0 1.924-2.55l-4-14A2 2 0 0 0 16 3H8a2 2 0 0 0-1.924 1.45z",
        ),
      ]),
    ],
  )
}


pub fn rocket(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 15v5s3.03-.55 4-2c1.08-1.62 0-5 0-5")]),
      svg.path([
        a(
          "d",
          "M4.5 16.5c-1.5 1.26-2 5-2 5s3.74-.5 5-2c.71-.84.7-2.13-.09-2.91a2.18 2.18 0 0 0-2.91-.09",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M9 12a22 22 0 0 1 2-3.95A12.88 12.88 0 0 1 22 2c0 2.72-.78 7.5-6 11a22.4 22.4 0 0 1-4 2z",
        ),
      ]),
      svg.path([a("d", "M9 12H4s.55-3.03 2-4c1.62-1.08 5 .05 5 .05")]),
    ],
  )
}


pub fn rocking_chair(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m15 13 3.708 7.416")]),
      svg.path([a("d", "M3 19a15 15 0 0 0 18 0")]),
      svg.path([a("d", "m3 2 3.21 9.633A2 2 0 0 0 8.109 13H18")]),
      svg.path([a("d", "m9 13-3.708 7.416")]),
    ],
  )
}


pub fn roller_coaster(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M6 19V5")]),
      svg.path([a("d", "M10 19V6.8")]),
      svg.path([a("d", "M14 19v-7.8")]),
      svg.path([a("d", "M18 5v4")]),
      svg.path([a("d", "M18 19v-6")]),
      svg.path([a("d", "M22 19V9")]),
      svg.path([
        a("d", "M2 19V9a4 4 0 0 1 4-4c2 0 4 1.33 6 4s4 4 6 4a4 4 0 1 0-3-6.65"),
      ]),
    ],
  )
}


pub fn rose(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M17 10h-1a4 4 0 1 1 4-4v.534")]),
      svg.path([
        a(
          "d",
          "M17 6h1a4 4 0 0 1 1.42 7.74l-2.29.87a6 6 0 0 1-5.339-10.68l2.069-1.31",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M4.5 17c2.8-.5 4.4 0 5.5.8s1.8 2.2 2.3 3.7c-2 .4-3.5.4-4.8-.3-1.2-.6-2.3-1.9-3-4.2",
        ),
      ]),
      svg.path([a("d", "M9.77 12C4 15 2 22 2 22")]),
      svg.circle([
        a("r", "2"),
        a("cy", "8"),
        a("cx", "17"),
      ]),
    ],
  )
}


pub fn rotate_3d(attributes: List(Attribute(a))) {
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
          "M16.466 7.5C15.643 4.237 13.952 2 12 2 9.239 2 7 6.477 7 12s2.239 10 5 10c.342 0 .677-.069 1-.2",
        ),
      ]),
      svg.path([a("d", "m15.194 13.707 3.814 1.86-1.86 3.814")]),
      svg.path([
        a(
          "d",
          "M19 15.57c-1.804.885-4.274 1.43-7 1.43-5.523 0-10-2.239-10-5s4.477-5 10-5c4.838 0 8.873 1.718 9.8 4",
        ),
      ]),
    ],
  )
}


pub fn rotate_ccw(attributes: List(Attribute(a))) {
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
        a("d", "M3 12a9 9 0 1 0 9-9 9.75 9.75 0 0 0-6.74 2.74L3 8"),
      ]),
      svg.path([a("d", "M3 3v5h5")]),
    ],
  )
}


pub fn rotate_ccw_key(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 7v6")]),
      svg.path([a("d", "M12 9h2")]),
      svg.path([
        a("d", "M3 12a9 9 0 1 0 9-9 9.74 9.74 0 0 0-6.74 2.74L3 8"),
      ]),
      svg.path([a("d", "M3 3v5h5")]),
      svg.circle([
        a("r", "2"),
        a("cy", "15"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn rotate_ccw_square(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M20 9V7a2 2 0 0 0-2-2h-6")]),
      svg.path([a("d", "m15 2-3 3 3 3")]),
      svg.path([
        a("d", "M20 13v5a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V7a2 2 0 0 1 2-2h2"),
      ]),
    ],
  )
}


pub fn rotate_cw(attributes: List(Attribute(a))) {
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
        a("d", "M21 12a9 9 0 1 1-9-9c2.52 0 4.93 1 6.74 2.74L21 8"),
      ]),
      svg.path([a("d", "M21 3v5h-5")]),
    ],
  )
}


pub fn rotate_cw_square(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 5H6a2 2 0 0 0-2 2v3")]),
      svg.path([a("d", "m9 8 3-3-3-3")]),
      svg.path([
        a("d", "M4 14v4a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2h-2"),
      ]),
    ],
  )
}


pub fn route(attributes: List(Attribute(a))) {
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
        a("cy", "19"),
        a("cx", "6"),
      ]),
      svg.path([
        a("d", "M9 19h8.5a3.5 3.5 0 0 0 0-7h-11a3.5 3.5 0 0 1 0-7H15"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "5"),
        a("cx", "18"),
      ]),
    ],
  )
}


pub fn route_off(attributes: List(Attribute(a))) {
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
        a("cy", "19"),
        a("cx", "6"),
      ]),
      svg.path([a("d", "M9 19h8.5c.4 0 .9-.1 1.3-.2")]),
      svg.path([a("d", "M5.2 5.2A3.5 3.53 0 0 0 6.5 12H12")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([a("d", "M21 15.3a3.5 3.5 0 0 0-3.3-3.3")]),
      svg.path([a("d", "M15 5h-4.3")]),
      svg.circle([
        a("r", "3"),
        a("cy", "5"),
        a("cx", "18"),
      ]),
    ],
  )
}


pub fn router(attributes: List(Attribute(a))) {
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
        a("y", "14"),
        a("x", "2"),
        a("height", "8"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M6.01 18H6")]),
      svg.path([a("d", "M10.01 18H10")]),
      svg.path([a("d", "M15 10v4")]),
      svg.path([a("d", "M17.84 7.17a4 4 0 0 0-5.66 0")]),
      svg.path([a("d", "M20.66 4.34a8 8 0 0 0-11.31 0")]),
    ],
  )
}


pub fn rows_2(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 12h18")]),
    ],
  )
}


pub fn rows_3(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M21 9H3")]),
      svg.path([a("d", "M21 15H3")]),
    ],
  )
}


pub fn rows_4(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M21 7.5H3")]),
      svg.path([a("d", "M21 12H3")]),
      svg.path([a("d", "M21 16.5H3")]),
    ],
  )
}


pub fn rss(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M4 11a9 9 0 0 1 9 9")]),
      svg.path([a("d", "M4 4a16 16 0 0 1 16 16")]),
      svg.circle([
        a("r", "1"),
        a("cy", "19"),
        a("cx", "5"),
      ]),
    ],
  )
}


pub fn ruler(attributes: List(Attribute(a))) {
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
          "M21.3 15.3a2.4 2.4 0 0 1 0 3.4l-2.6 2.6a2.4 2.4 0 0 1-3.4 0L2.7 8.7a2.41 2.41 0 0 1 0-3.4l2.6-2.6a2.41 2.41 0 0 1 3.4 0Z",
        ),
      ]),
      svg.path([a("d", "m14.5 12.5 2-2")]),
      svg.path([a("d", "m11.5 9.5 2-2")]),
      svg.path([a("d", "m8.5 6.5 2-2")]),
      svg.path([a("d", "m17.5 15.5 2-2")]),
    ],
  )
}


pub fn ruler_dimension_line(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 15v-3")]),
      svg.path([a("d", "M14 15v-3")]),
      svg.path([a("d", "M18 15v-3")]),
      svg.path([a("d", "M2 8V4")]),
      svg.path([a("d", "M22 6H2")]),
      svg.path([a("d", "M22 8V4")]),
      svg.path([a("d", "M6 15v-3")]),
      svg.rect([
        a("rx", "2"),
        a("height", "8"),
        a("width", "20"),
        a("y", "12"),
        a("x", "2"),
      ]),
    ],
  )
}


pub fn russian_ruble(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M6 11h8a4 4 0 0 0 0-8H9v18")]),
      svg.path([a("d", "M6 15h8")]),
    ],
  )
}
