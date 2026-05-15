import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn umbrella(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 13v7a2 2 0 0 0 4 0")]),
      svg.path([a("d", "M12 2v2")]),
      svg.path([
        a(
          "d",
          "M20.992 13a1 1 0 0 0 .97-1.274 10.284 10.284 0 0 0-19.923 0A1 1 0 0 0 3 13z",
        ),
      ]),
    ],
  )
}


pub fn umbrella_off(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 13v7a2 2 0 0 0 4 0")]),
      svg.path([a("d", "M12 2v2")]),
      svg.path([
        a(
          "d",
          "M18.656 13h2.336a1 1 0 0 0 .97-1.274 10.284 10.284 0 0 0-12.07-7.51",
        ),
      ]),
      svg.path([a("d", "m2 2 20 20")]),
      svg.path([
        a("d", "M5.961 5.957a10.28 10.28 0 0 0-3.922 5.769A1 1 0 0 0 3 13h10"),
      ]),
    ],
  )
}


pub fn underline(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M6 4v6a6 6 0 0 0 12 0V4")]),
      svg.line([
        a("y2", "20"),
        a("y1", "20"),
        a("x2", "20"),
        a("x1", "4"),
      ]),
    ],
  )
}


pub fn undo(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 7v6h6")]),
      svg.path([a("d", "M21 17a9 9 0 0 0-9-9 9 9 0 0 0-6 2.3L3 13")]),
    ],
  )
}


pub fn undo_2(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M9 14 4 9l5-5")]),
      svg.path([
        a("d", "M4 9h10.5a5.5 5.5 0 0 1 5.5 5.5a5.5 5.5 0 0 1-5.5 5.5H11"),
      ]),
    ],
  )
}


pub fn undo_dot(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M21 17a9 9 0 0 0-15-6.7L3 13")]),
      svg.path([a("d", "M3 7v6h6")]),
      svg.circle([
        a("r", "1"),
        a("cy", "17"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn unfold_horizontal(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 12h6")]),
      svg.path([a("d", "M8 12H2")]),
      svg.path([a("d", "M12 2v2")]),
      svg.path([a("d", "M12 8v2")]),
      svg.path([a("d", "M12 14v2")]),
      svg.path([a("d", "M12 20v2")]),
      svg.path([a("d", "m19 15 3-3-3-3")]),
      svg.path([a("d", "m5 9-3 3 3 3")]),
    ],
  )
}


pub fn unfold_vertical(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 22v-6")]),
      svg.path([a("d", "M12 8V2")]),
      svg.path([a("d", "M4 12H2")]),
      svg.path([a("d", "M10 12H8")]),
      svg.path([a("d", "M16 12h-2")]),
      svg.path([a("d", "M22 12h-2")]),
      svg.path([a("d", "m15 19-3 3-3-3")]),
      svg.path([a("d", "m15 5-3-3-3 3")]),
    ],
  )
}


pub fn ungroup(attributes: List(Attribute(a))) {
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
        a("rx", "1"),
        a("y", "4"),
        a("x", "5"),
        a("height", "6"),
        a("width", "8"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "14"),
        a("x", "11"),
        a("height", "6"),
        a("width", "8"),
      ]),
    ],
  )
}


pub fn university(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M14 21v-3a2 2 0 0 0-4 0v3")]),
      svg.path([a("d", "M18 12h.01")]),
      svg.path([a("d", "M18 16h.01")]),
      svg.path([
        a(
          "d",
          "M22 7a1 1 0 0 0-1-1h-2a2 2 0 0 1-1.143-.359L13.143 2.36a2 2 0 0 0-2.286-.001L6.143 5.64A2 2 0 0 1 5 6H3a1 1 0 0 0-1 1v12a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2z",
        ),
      ]),
      svg.path([a("d", "M6 12h.01")]),
      svg.path([a("d", "M6 16h.01")]),
      svg.circle([
        a("r", "2"),
        a("cy", "10"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn unlink(attributes: List(Attribute(a))) {
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
          "m18.84 12.25 1.72-1.71h-.02a5.004 5.004 0 0 0-.12-7.07 5.006 5.006 0 0 0-6.95 0l-1.72 1.71",
        ),
      ]),
      svg.path([
        a(
          "d",
          "m5.17 11.75-1.71 1.71a5.004 5.004 0 0 0 .12 7.07 5.006 5.006 0 0 0 6.95 0l1.71-1.71",
        ),
      ]),
      svg.line([
        a("y2", "5"),
        a("y1", "2"),
        a("x2", "8"),
        a("x1", "8"),
      ]),
      svg.line([
        a("y2", "8"),
        a("y1", "8"),
        a("x2", "5"),
        a("x1", "2"),
      ]),
      svg.line([
        a("y2", "22"),
        a("y1", "19"),
        a("x2", "16"),
        a("x1", "16"),
      ]),
      svg.line([
        a("y2", "16"),
        a("y1", "16"),
        a("x2", "22"),
        a("x1", "19"),
      ]),
    ],
  )
}


pub fn unlink_2(attributes: List(Attribute(a))) {
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
        a("d", "M15 7h2a5 5 0 0 1 0 10h-2m-6 0H7A5 5 0 0 1 7 7h2"),
      ]),
    ],
  )
}


pub fn unplug(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m19 5 3-3")]),
      svg.path([a("d", "m2 22 3-3")]),
      svg.path([
        a(
          "d",
          "M6.3 20.3a2.4 2.4 0 0 0 3.4 0L12 18l-6-6-2.3 2.3a2.4 2.4 0 0 0 0 3.4Z",
        ),
      ]),
      svg.path([a("d", "M7.5 13.5 10 11")]),
      svg.path([a("d", "M10.5 16.5 13 14")]),
      svg.path([
        a(
          "d",
          "m12 6 6 6 2.3-2.3a2.4 2.4 0 0 0 0-3.4l-2.6-2.6a2.4 2.4 0 0 0-3.4 0Z",
        ),
      ]),
    ],
  )
}


pub fn upload(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 3v12")]),
      svg.path([a("d", "m17 8-5-5-5 5")]),
      svg.path([a("d", "M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4")]),
    ],
  )
}


pub fn usb(attributes: List(Attribute(a))) {
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
        a("cy", "7"),
        a("cx", "10"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "20"),
        a("cx", "4"),
      ]),
      svg.path([a("d", "M4.7 19.3 19 5")]),
      svg.path([a("d", "m21 3-3 1 2 2Z")]),
      svg.path([a("d", "M9.26 7.68 5 12l2 5")]),
      svg.path([a("d", "m10 14 5 2 3.5-3.5")]),
      svg.path([a("d", "m18 12 1-1 1 1-1 1Z")]),
    ],
  )
}


pub fn user(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M19 21v-2a4 4 0 0 0-4-4H9a4 4 0 0 0-4 4v2")]),
      svg.circle([
        a("r", "4"),
        a("cy", "7"),
        a("cx", "12"),
      ]),
    ],
  )
}


pub fn user_check(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m16 11 2 2 4-4")]),
      svg.path([a("d", "M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2")]),
      svg.circle([
        a("r", "4"),
        a("cy", "7"),
        a("cx", "9"),
      ]),
    ],
  )
}


pub fn user_cog(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10 15H6a4 4 0 0 0-4 4v2")]),
      svg.path([a("d", "m14.305 16.53.923-.382")]),
      svg.path([a("d", "m15.228 13.852-.923-.383")]),
      svg.path([a("d", "m16.852 12.228-.383-.923")]),
      svg.path([a("d", "m16.852 17.772-.383.924")]),
      svg.path([a("d", "m19.148 12.228.383-.923")]),
      svg.path([a("d", "m19.53 18.696-.382-.924")]),
      svg.path([a("d", "m20.772 13.852.924-.383")]),
      svg.path([a("d", "m20.772 16.148.924.383")]),
      svg.circle([
        a("r", "3"),
        a("cy", "15"),
        a("cx", "18"),
      ]),
      svg.circle([
        a("r", "4"),
        a("cy", "7"),
        a("cx", "9"),
      ]),
    ],
  )
}


pub fn user_key(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M20 11v6")]),
      svg.path([a("d", "M20 13h2")]),
      svg.path([a("d", "M3 21v-2a4 4 0 0 1 4-4h6a4 4 0 0 1 2.072.578")]),
      svg.circle([
        a("r", "4"),
        a("cy", "7"),
        a("cx", "10"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "19"),
        a("cx", "20"),
      ]),
    ],
  )
}


pub fn user_lock(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M19 16v-2a2 2 0 0 0-4 0v2")]),
      svg.path([a("d", "M9.5 15H7a4 4 0 0 0-4 4v2")]),
      svg.circle([
        a("r", "4"),
        a("cy", "7"),
        a("cx", "10"),
      ]),
      svg.rect([
        a("rx", ".899"),
        a("height", "5"),
        a("width", "8"),
        a("y", "16"),
        a("x", "13"),
      ]),
    ],
  )
}


pub fn user_minus(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2")]),
      svg.circle([
        a("r", "4"),
        a("cy", "7"),
        a("cx", "9"),
      ]),
      svg.line([
        a("y2", "11"),
        a("y1", "11"),
        a("x2", "16"),
        a("x1", "22"),
      ]),
    ],
  )
}


pub fn user_pen(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M11.5 15H7a4 4 0 0 0-4 4v2")]),
      svg.path([
        a(
          "d",
          "M21.378 16.626a1 1 0 0 0-3.004-3.004l-4.01 4.012a2 2 0 0 0-.506.854l-.837 2.87a.5.5 0 0 0 .62.62l2.87-.837a2 2 0 0 0 .854-.506z",
        ),
      ]),
      svg.circle([
        a("r", "4"),
        a("cy", "7"),
        a("cx", "10"),
      ]),
    ],
  )
}


pub fn user_plus(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2")]),
      svg.circle([
        a("r", "4"),
        a("cy", "7"),
        a("cx", "9"),
      ]),
      svg.line([
        a("y2", "14"),
        a("y1", "8"),
        a("x2", "19"),
        a("x1", "19"),
      ]),
      svg.line([
        a("y2", "11"),
        a("y1", "11"),
        a("x2", "16"),
        a("x1", "22"),
      ]),
    ],
  )
}


pub fn user_round(attributes: List(Attribute(a))) {
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
        a("r", "5"),
        a("cy", "8"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M20 21a8 8 0 0 0-16 0")]),
    ],
  )
}


pub fn user_round_check(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 21a8 8 0 0 1 13.292-6")]),
      svg.circle([
        a("r", "5"),
        a("cy", "8"),
        a("cx", "10"),
      ]),
      svg.path([a("d", "m16 19 2 2 4-4")]),
    ],
  )
}


pub fn user_round_cog(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 21a8 8 0 0 1 10.434-7.62")]),
      svg.path([a("d", "m20.772 16.852.924-.383")]),
      svg.path([a("d", "m20.772 19.148.924.383")]),
      svg.circle([
        a("r", "5"),
        a("cy", "8"),
        a("cx", "10"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "18"),
      ]),
    ],
  )
}


pub fn user_round_key(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M19 11v6")]),
      svg.path([a("d", "M19 13h2")]),
      svg.path([a("d", "M2 21a8 8 0 0 1 12.868-6.349")]),
      svg.circle([
        a("r", "5"),
        a("cy", "8"),
        a("cx", "10"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "19"),
        a("cx", "19"),
      ]),
    ],
  )
}


pub fn user_round_minus(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 21a8 8 0 0 1 13.292-6")]),
      svg.circle([
        a("r", "5"),
        a("cy", "8"),
        a("cx", "10"),
      ]),
      svg.path([a("d", "M22 19h-6")]),
    ],
  )
}


pub fn user_round_pen(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 21a8 8 0 0 1 10.821-7.487")]),
      svg.path([
        a(
          "d",
          "M21.378 16.626a1 1 0 0 0-3.004-3.004l-4.01 4.012a2 2 0 0 0-.506.854l-.837 2.87a.5.5 0 0 0 .62.62l2.87-.837a2 2 0 0 0 .854-.506z",
        ),
      ]),
      svg.circle([
        a("r", "5"),
        a("cy", "8"),
        a("cx", "10"),
      ]),
    ],
  )
}


pub fn user_round_plus(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 21a8 8 0 0 1 13.292-6")]),
      svg.circle([
        a("r", "5"),
        a("cy", "8"),
        a("cx", "10"),
      ]),
      svg.path([a("d", "M19 16v6")]),
      svg.path([a("d", "M22 19h-6")]),
    ],
  )
}


pub fn user_round_search(attributes: List(Attribute(a))) {
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
        a("r", "5"),
        a("cy", "8"),
        a("cx", "10"),
      ]),
      svg.path([a("d", "M2 21a8 8 0 0 1 10.434-7.62")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "18"),
      ]),
      svg.path([a("d", "m22 22-1.9-1.9")]),
    ],
  )
}


pub fn user_round_x(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 21a8 8 0 0 1 11.873-7")]),
      svg.circle([
        a("r", "5"),
        a("cy", "8"),
        a("cx", "10"),
      ]),
      svg.path([a("d", "m17 17 5 5")]),
      svg.path([a("d", "m22 17-5 5")]),
    ],
  )
}


pub fn user_search(attributes: List(Attribute(a))) {
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
        a("cy", "7"),
        a("cx", "10"),
      ]),
      svg.path([a("d", "M10.3 15H7a4 4 0 0 0-4 4v2")]),
      svg.circle([
        a("r", "3"),
        a("cy", "17"),
        a("cx", "17"),
      ]),
      svg.path([a("d", "m21 21-1.9-1.9")]),
    ],
  )
}


pub fn user_star(attributes: List(Attribute(a))) {
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
          "M16.051 12.616a1 1 0 0 1 1.909.024l.737 1.452a1 1 0 0 0 .737.535l1.634.256a1 1 0 0 1 .588 1.806l-1.172 1.168a1 1 0 0 0-.282.866l.259 1.613a1 1 0 0 1-1.541 1.134l-1.465-.75a1 1 0 0 0-.912 0l-1.465.75a1 1 0 0 1-1.539-1.133l.258-1.613a1 1 0 0 0-.282-.866l-1.156-1.153a1 1 0 0 1 .572-1.822l1.633-.256a1 1 0 0 0 .737-.535z",
        ),
      ]),
      svg.path([a("d", "M8 15H7a4 4 0 0 0-4 4v2")]),
      svg.circle([
        a("r", "4"),
        a("cy", "7"),
        a("cx", "10"),
      ]),
    ],
  )
}


pub fn user_x(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2")]),
      svg.circle([
        a("r", "4"),
        a("cy", "7"),
        a("cx", "9"),
      ]),
      svg.line([
        a("y2", "13"),
        a("y1", "8"),
        a("x2", "22"),
        a("x1", "17"),
      ]),
      svg.line([
        a("y2", "13"),
        a("y1", "8"),
        a("x2", "17"),
        a("x1", "22"),
      ]),
    ],
  )
}


pub fn users(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2")]),
      svg.path([a("d", "M16 3.128a4 4 0 0 1 0 7.744")]),
      svg.path([a("d", "M22 21v-2a4 4 0 0 0-3-3.87")]),
      svg.circle([
        a("r", "4"),
        a("cy", "7"),
        a("cx", "9"),
      ]),
    ],
  )
}


pub fn users_round(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M18 21a8 8 0 0 0-16 0")]),
      svg.circle([
        a("r", "5"),
        a("cy", "8"),
        a("cx", "10"),
      ]),
      svg.path([a("d", "M22 20c0-3.37-2-6.5-4-8a5 5 0 0 0-.45-8.3")]),
    ],
  )
}


pub fn utensils(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 2v7c0 1.1.9 2 2 2h4a2 2 0 0 0 2-2V2")]),
      svg.path([a("d", "M7 2v20")]),
      svg.path([
        a("d", "M21 15V2a5 5 0 0 0-5 5v6c0 1.1.9 2 2 2h3Zm0 0v7"),
      ]),
    ],
  )
}


pub fn utensils_crossed(attributes: List(Attribute(a))) {
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
        a("d", "m16 2-2.3 2.3a3 3 0 0 0 0 4.2l1.8 1.8a3 3 0 0 0 4.2 0L22 8"),
      ]),
      svg.path([
        a(
          "d",
          "M15 15 3.3 3.3a4.2 4.2 0 0 0 0 6l7.3 7.3c.7.7 2 .7 2.8 0L15 15Zm0 0 7 7",
        ),
      ]),
      svg.path([a("d", "m2.1 21.8 6.4-6.3")]),
      svg.path([a("d", "m19 5-7 7")]),
    ],
  )
}


pub fn utility_pole(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 2v20")]),
      svg.path([a("d", "M2 5h20")]),
      svg.path([a("d", "M3 3v2")]),
      svg.path([a("d", "M7 3v2")]),
      svg.path([a("d", "M17 3v2")]),
      svg.path([a("d", "M21 3v2")]),
      svg.path([a("d", "m19 5-7 7-7-7")]),
    ],
  )
}
