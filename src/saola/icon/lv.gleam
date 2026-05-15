import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn van(attributes: List(Attribute(a))) {
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
          "M13 6v5a1 1 0 0 0 1 1h6.102a1 1 0 0 1 .712.298l.898.91a1 1 0 0 1 .288.702V17a1 1 0 0 1-1 1h-3",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M5 18H3a1 1 0 0 1-1-1V8a2 2 0 0 1 2-2h12c1.1 0 2.1.8 2.4 1.8l1.176 4.2",
        ),
      ]),
      svg.path([a("d", "M9 18h5")]),
      svg.circle([
        a("r", "2"),
        a("cy", "18"),
        a("cx", "16"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "18"),
        a("cx", "7"),
      ]),
    ],
  )
}


pub fn variable(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M8 21s-4-3-4-9 4-9 4-9")]),
      svg.path([a("d", "M16 3s4 3 4 9-4 9-4 9")]),
      svg.line([
        a("y2", "15"),
        a("y1", "9"),
        a("x2", "9"),
        a("x1", "15"),
      ]),
      svg.line([
        a("y2", "15"),
        a("y1", "9"),
        a("x2", "15"),
        a("x1", "9"),
      ]),
    ],
  )
}


pub fn vault(attributes: List(Attribute(a))) {
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
      svg.circle([
        a("fill", "currentColor"),
        a("r", ".5"),
        a("cy", "7.5"),
        a("cx", "7.5"),
      ]),
      svg.path([a("d", "m7.9 7.9 2.7 2.7")]),
      svg.circle([
        a("fill", "currentColor"),
        a("r", ".5"),
        a("cy", "7.5"),
        a("cx", "16.5"),
      ]),
      svg.path([a("d", "m13.4 10.6 2.7-2.7")]),
      svg.circle([
        a("fill", "currentColor"),
        a("r", ".5"),
        a("cy", "16.5"),
        a("cx", "7.5"),
      ]),
      svg.path([a("d", "m7.9 16.1 2.7-2.7")]),
      svg.circle([
        a("fill", "currentColor"),
        a("r", ".5"),
        a("cy", "16.5"),
        a("cx", "16.5"),
      ]),
      svg.path([a("d", "m13.4 13.4 2.7 2.7")]),
      svg.circle([
        a("r", "2"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn vector_square(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M19.5 7a24 24 0 0 1 0 10")]),
      svg.path([a("d", "M4.5 7a24 24 0 0 0 0 10")]),
      svg.path([a("d", "M7 19.5a24 24 0 0 0 10 0")]),
      svg.path([a("d", "M7 4.5a24 24 0 0 1 10 0")]),
      svg.rect([
        a("rx", "1"),
        a("height", "5"),
        a("width", "5"),
        a("y", "17"),
        a("x", "17"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "5"),
        a("width", "5"),
        a("y", "2"),
        a("x", "17"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "5"),
        a("width", "5"),
        a("y", "17"),
        a("x", "2"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "5"),
        a("width", "5"),
        a("y", "2"),
        a("x", "2"),
      ]),
    ],
  )
}


pub fn vegan(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 8q6 0 6-6-6 0-6 6")]),
      svg.path([a("d", "M17.41 3.59a10 10 0 1 0 3 3")]),
      svg.path([
        a("d", "M2 2a26.6 26.6 0 0 1 10 20c.9-6.82 1.5-9.5 4-14"),
      ]),
    ],
  )
}


pub fn venetian_mask(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M18 11c-1.5 0-2.5.5-3 2")]),
      svg.path([
        a(
          "d",
          "M4 6a2 2 0 0 0-2 2v4a5 5 0 0 0 5 5 8 8 0 0 1 5 2 8 8 0 0 1 5-2 5 5 0 0 0 5-5V8a2 2 0 0 0-2-2h-3a8 8 0 0 0-5 2 8 8 0 0 0-5-2z",
        ),
      ]),
      svg.path([a("d", "M6 11c1.5 0 2.5.5 3 2")]),
    ],
  )
}


pub fn venus(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 15v7")]),
      svg.path([a("d", "M9 19h6")]),
      svg.circle([
        a("r", "6"),
        a("cy", "9"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn venus_and_mars(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 20h4")]),
      svg.path([a("d", "M12 16v6")]),
      svg.path([a("d", "M17 2h4v4")]),
      svg.path([a("d", "m21 2-5.46 5.46")]),
      svg.circle([
        a("r", "5"),
        a("cy", "11"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn vibrate(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m2 8 2 2-2 2 2 2-2 2")]),
      svg.path([a("d", "m22 8-2 2 2 2-2 2 2 2")]),
      svg.rect([
        a("rx", "1"),
        a("y", "5"),
        a("x", "8"),
        a("height", "14"),
        a("width", "8"),
      ]),
    ],
  )
}


pub fn vibrate_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m2 8 2 2-2 2 2 2-2 2")]),
      svg.path([a("d", "m22 8-2 2 2 2-2 2 2 2")]),
      svg.path([a("d", "M8 8v10c0 .55.45 1 1 1h6c.55 0 1-.45 1-1v-2")]),
      svg.path([a("d", "M16 10.34V6c0-.55-.45-1-1-1h-4.34")]),
      svg.line([
        a("y2", "22"),
        a("y1", "2"),
        a("x2", "22"),
        a("x1", "2"),
      ]),
    ],
  )
}


pub fn video(attributes: List(Attribute(a))) {
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
          "m16 13 5.223 3.482a.5.5 0 0 0 .777-.416V7.87a.5.5 0 0 0-.752-.432L16 10.5",
        ),
      ]),
      svg.rect([
        a("rx", "2"),
        a("height", "12"),
        a("width", "14"),
        a("y", "6"),
        a("x", "2"),
      ]),
    ],
  )
}


pub fn video_off(attributes: List(Attribute(a))) {
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
          "M10.66 6H14a2 2 0 0 1 2 2v2.5l5.248-3.062A.5.5 0 0 1 22 7.87v8.196",
        ),
      ]),
      svg.path([
        a("d", "M16 16a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h2"),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
    ],
  )
}


pub fn videotape(attributes: List(Attribute(a))) {
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
        a("y", "4"),
        a("x", "2"),
        a("height", "16"),
        a("width", "20"),
      ]),
      svg.path([a("d", "M2 8h20")]),
      svg.circle([
        a("r", "2"),
        a("cy", "14"),
        a("cx", "8"),
      ]),
      svg.path([a("d", "M8 12h8")]),
      svg.circle([
        a("r", "2"),
        a("cy", "14"),
        a("cx", "16"),
      ]),
    ],
  )
}


pub fn view(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M21 17v2a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-2")]),
      svg.path([a("d", "M21 7V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v2")]),
      svg.circle([
        a("r", "1"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.path([
        a(
          "d",
          "M18.944 12.33a1 1 0 0 0 0-.66 7.5 7.5 0 0 0-13.888 0 1 1 0 0 0 0 .66 7.5 7.5 0 0 0 13.888 0",
        ),
      ]),
    ],
  )
}


pub fn voicemail(attributes: List(Attribute(a))) {
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
        a("r", "4"),
        a("cy", "12"),
        a("cx", "6"),
      ]),
      svg.circle([
        a("r", "4"),
        a("cy", "12"),
        a("cx", "18"),
      ]),
      svg.line([
        a("y2", "16"),
        a("y1", "16"),
        a("x2", "18"),
        a("x1", "6"),
      ]),
    ],
  )
}


pub fn volleyball(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M11.1 7.1a16.55 16.55 0 0 1 10.9 4")]),
      svg.path([a("d", "M12 12a12.6 12.6 0 0 1-8.7 5")]),
      svg.path([a("d", "M16.8 13.6a16.55 16.55 0 0 1-9 7.5")]),
      svg.path([
        a("d", "M20.7 17a12.8 12.8 0 0 0-8.7-5 13.3 13.3 0 0 1 0-10"),
      ]),
      svg.path([a("d", "M6.3 3.8a16.55 16.55 0 0 0 1.9 11.5")]),
      svg.circle([
        a("r", "10"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn volume(attributes: List(Attribute(a))) {
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
          "M11 4.702a.705.705 0 0 0-1.203-.498L6.413 7.587A1.4 1.4 0 0 1 5.416 8H3a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h2.416a1.4 1.4 0 0 1 .997.413l3.383 3.384A.705.705 0 0 0 11 19.298z",
        ),
      ]),
    ],
  )
}


pub fn volume_1(attributes: List(Attribute(a))) {
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
          "M11 4.702a.705.705 0 0 0-1.203-.498L6.413 7.587A1.4 1.4 0 0 1 5.416 8H3a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h2.416a1.4 1.4 0 0 1 .997.413l3.383 3.384A.705.705 0 0 0 11 19.298z",
        ),
      ]),
      svg.path([a("d", "M16 9a5 5 0 0 1 0 6")]),
    ],
  )
}


pub fn volume_2(attributes: List(Attribute(a))) {
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
          "M11 4.702a.705.705 0 0 0-1.203-.498L6.413 7.587A1.4 1.4 0 0 1 5.416 8H3a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h2.416a1.4 1.4 0 0 1 .997.413l3.383 3.384A.705.705 0 0 0 11 19.298z",
        ),
      ]),
      svg.path([a("d", "M16 9a5 5 0 0 1 0 6")]),
      svg.path([a("d", "M19.364 18.364a9 9 0 0 0 0-12.728")]),
    ],
  )
}


pub fn volume_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 9a5 5 0 0 1 .95 2.293")]),
      svg.path([a("d", "M19.364 5.636a9 9 0 0 1 1.889 9.96")]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([
        a(
          "d",
          "m7 7-.587.587A1.4 1.4 0 0 1 5.416 8H3a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h2.416a1.4 1.4 0 0 1 .997.413l3.383 3.384A.705.705 0 0 0 11 19.298V11",
        ),
      ]),
      svg.path([a("d", "M9.828 4.172A.686.686 0 0 1 11 4.657v.686")]),
    ],
  )
}


pub fn volume_x(attributes: List(Attribute(a))) {
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
          "M11 4.702a.705.705 0 0 0-1.203-.498L6.413 7.587A1.4 1.4 0 0 1 5.416 8H3a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h2.416a1.4 1.4 0 0 1 .997.413l3.383 3.384A.705.705 0 0 0 11 19.298z",
        ),
      ]),
      svg.line([
        a("y2", "15"),
        a("y1", "9"),
        a("x2", "16"),
        a("x1", "22"),
      ]),
      svg.line([
        a("y2", "15"),
        a("y1", "9"),
        a("x2", "22"),
        a("x1", "16"),
      ]),
    ],
  )
}


pub fn vote(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m9 12 2 2 4-4")]),
      svg.path([a("d", "M5 7c0-1.1.9-2 2-2h10a2 2 0 0 1 2 2v12H5V7Z")]),
      svg.path([a("d", "M22 19H2")]),
    ],
  )
}
