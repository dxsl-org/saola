import lustre/attribute.{type Attribute, attribute as a}
import lustre/element/svg

pub fn gallery_horizontal(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 3v18")]),
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "6"),
        a("height", "18"),
        a("width", "12"),
      ]),
      svg.path([a("d", "M22 3v18")]),
    ],
  )
}


pub fn gallery_horizontal_end(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 7v10")]),
      svg.path([a("d", "M6 5v14")]),
      svg.rect([
        a("rx", "2"),
        a("y", "3"),
        a("x", "10"),
        a("height", "18"),
        a("width", "12"),
      ]),
    ],
  )
}


pub fn gallery_thumbnails(attributes: List(Attribute(a))) {
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
        a("height", "14"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M4 21h1")]),
      svg.path([a("d", "M9 21h1")]),
      svg.path([a("d", "M14 21h1")]),
      svg.path([a("d", "M19 21h1")]),
    ],
  )
}


pub fn gallery_vertical(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 2h18")]),
      svg.rect([
        a("rx", "2"),
        a("y", "6"),
        a("x", "3"),
        a("height", "12"),
        a("width", "18"),
      ]),
      svg.path([a("d", "M3 22h18")]),
    ],
  )
}


pub fn gallery_vertical_end(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M7 2h10")]),
      svg.path([a("d", "M5 6h14")]),
      svg.rect([
        a("rx", "2"),
        a("y", "10"),
        a("x", "3"),
        a("height", "12"),
        a("width", "18"),
      ]),
    ],
  )
}


pub fn gamepad(attributes: List(Attribute(a))) {
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
        a("y2", "12"),
        a("y1", "12"),
        a("x2", "10"),
        a("x1", "6"),
      ]),
      svg.line([
        a("y2", "14"),
        a("y1", "10"),
        a("x2", "8"),
        a("x1", "8"),
      ]),
      svg.line([
        a("y2", "13"),
        a("y1", "13"),
        a("x2", "15.01"),
        a("x1", "15"),
      ]),
      svg.line([
        a("y2", "11"),
        a("y1", "11"),
        a("x2", "18.01"),
        a("x1", "18"),
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


pub fn gamepad_2(attributes: List(Attribute(a))) {
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
        a("y2", "11"),
        a("y1", "11"),
        a("x2", "10"),
        a("x1", "6"),
      ]),
      svg.line([
        a("y2", "13"),
        a("y1", "9"),
        a("x2", "8"),
        a("x1", "8"),
      ]),
      svg.line([
        a("y2", "12"),
        a("y1", "12"),
        a("x2", "15.01"),
        a("x1", "15"),
      ]),
      svg.line([
        a("y2", "10"),
        a("y1", "10"),
        a("x2", "18.01"),
        a("x1", "18"),
      ]),
      svg.path([
        a(
          "d",
          "M17.32 5H6.68a4 4 0 0 0-3.978 3.59c-.006.052-.01.101-.017.152C2.604 9.416 2 14.456 2 16a3 3 0 0 0 3 3c1 0 1.5-.5 2-1l1.414-1.414A2 2 0 0 1 9.828 16h4.344a2 2 0 0 1 1.414.586L17 18c.5.5 1 1 2 1a3 3 0 0 0 3-3c0-1.545-.604-6.584-.685-7.258-.007-.05-.011-.1-.017-.151A4 4 0 0 0 17.32 5z",
        ),
      ]),
    ],
  )
}


pub fn gamepad_directional(attributes: List(Attribute(a))) {
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
          "M11.146 15.854a1.207 1.207 0 0 1 1.708 0l1.56 1.56A2 2 0 0 1 15 18.828V21a1 1 0 0 1-1 1h-4a1 1 0 0 1-1-1v-2.172a2 2 0 0 1 .586-1.414z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M18.828 15a2 2 0 0 1-1.414-.586l-1.56-1.56a1.207 1.207 0 0 1 0-1.708l1.56-1.56A2 2 0 0 1 18.828 9H21a1 1 0 0 1 1 1v4a1 1 0 0 1-1 1z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M6.586 14.414A2 2 0 0 1 5.172 15H3a1 1 0 0 1-1-1v-4a1 1 0 0 1 1-1h2.172a2 2 0 0 1 1.414.586l1.56 1.56a1.207 1.207 0 0 1 0 1.708z",
        ),
      ]),
      svg.path([
        a(
          "d",
          "M9 3a1 1 0 0 1 1-1h4a1 1 0 0 1 1 1v2.172a2 2 0 0 1-.586 1.414l-1.56 1.56a1.207 1.207 0 0 1-1.708 0l-1.56-1.56A2 2 0 0 1 9 5.172z",
        ),
      ]),
    ],
  )
}


pub fn gauge(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m12 14 4-4")]),
      svg.path([a("d", "M3.34 19a10 10 0 1 1 17.32 0")]),
    ],
  )
}


pub fn gavel(attributes: List(Attribute(a))) {
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
        a("d", "m14 13-8.381 8.38a1 1 0 0 1-3.001-3l8.384-8.381"),
      ]),
      svg.path([a("d", "m16 16 6-6")]),
      svg.path([a("d", "m21.5 10.5-8-8")]),
      svg.path([a("d", "m8 8 6-6")]),
      svg.path([a("d", "m8.5 7.5 8 8")]),
    ],
  )
}


pub fn gem(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M10.5 3 8 9l4 13 4-13-2.5-6")]),
      svg.path([
        a(
          "d",
          "M17 3a2 2 0 0 1 1.6.8l3 4a2 2 0 0 1 .013 2.382l-7.99 10.986a2 2 0 0 1-3.247 0l-7.99-10.986A2 2 0 0 1 2.4 7.8l2.998-3.997A2 2 0 0 1 7 3z",
        ),
      ]),
      svg.path([a("d", "M2 9h20")]),
    ],
  )
}


pub fn georgian_lari(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M11.5 21a7.5 7.5 0 1 1 7.35-9")]),
      svg.path([a("d", "M13 12V3")]),
      svg.path([a("d", "M4 21h16")]),
      svg.path([a("d", "M9 12V3")]),
    ],
  )
}


pub fn ghost(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M9 10h.01")]),
      svg.path([a("d", "M15 10h.01")]),
      svg.path([
        a(
          "d",
          "M12 2a8 8 0 0 0-8 8v12l3-3 2.5 2.5L12 19l2.5 2.5L17 19l3 3V10a8 8 0 0 0-8-8z",
        ),
      ]),
    ],
  )
}


pub fn gift(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 7v14")]),
      svg.path([a("d", "M20 11v8a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2v-8")]),
      svg.path([
        a(
          "d",
          "M7.5 7a1 1 0 0 1 0-5A4.8 8 0 0 1 12 7a4.8 8 0 0 1 4.5-5 1 1 0 0 1 0 5",
        ),
      ]),
      svg.rect([
        a("rx", "1"),
        a("height", "4"),
        a("width", "18"),
        a("y", "7"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn git_branch(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M15 6a9 9 0 0 0-9 9V3")]),
      svg.circle([
        a("r", "3"),
        a("cy", "6"),
        a("cx", "18"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "6"),
      ]),
    ],
  )
}


pub fn git_branch_minus(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M15 6a9 9 0 0 0-9 9V3")]),
      svg.path([a("d", "M21 18h-6")]),
      svg.circle([
        a("r", "3"),
        a("cy", "6"),
        a("cx", "18"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "6"),
      ]),
    ],
  )
}


pub fn git_branch_plus(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M6 3v12")]),
      svg.path([a("d", "M18 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z")]),
      svg.path([a("d", "M6 21a3 3 0 1 0 0-6 3 3 0 0 0 0 6z")]),
      svg.path([a("d", "M15 6a9 9 0 0 0-9 9")]),
      svg.path([a("d", "M18 15v6")]),
      svg.path([a("d", "M21 18h-6")]),
    ],
  )
}


pub fn git_commit_horizontal(attributes: List(Attribute(a))) {
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
        a("cx", "12"),
      ]),
      svg.line([
        a("y2", "12"),
        a("y1", "12"),
        a("x2", "9"),
        a("x1", "3"),
      ]),
      svg.line([
        a("y2", "12"),
        a("y1", "12"),
        a("x2", "21"),
        a("x1", "15"),
      ]),
    ],
  )
}


pub fn git_commit_vertical(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 3v6")]),
      svg.circle([
        a("r", "3"),
        a("cy", "12"),
        a("cx", "12"),
      ]),
      svg.path([a("d", "M12 15v6")]),
    ],
  )
}


pub fn git_compare(attributes: List(Attribute(a))) {
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
        a("cy", "18"),
        a("cx", "18"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "6"),
        a("cx", "6"),
      ]),
      svg.path([a("d", "M13 6h3a2 2 0 0 1 2 2v7")]),
      svg.path([a("d", "M11 18H8a2 2 0 0 1-2-2V9")]),
    ],
  )
}


pub fn git_compare_arrows(attributes: List(Attribute(a))) {
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
        a("cy", "6"),
        a("cx", "5"),
      ]),
      svg.path([a("d", "M12 6h5a2 2 0 0 1 2 2v7")]),
      svg.path([a("d", "m15 9-3-3 3-3")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "19"),
      ]),
      svg.path([a("d", "M12 18H7a2 2 0 0 1-2-2V9")]),
      svg.path([a("d", "m9 15 3 3-3 3")]),
    ],
  )
}


pub fn git_fork(attributes: List(Attribute(a))) {
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
        a("cy", "18"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "6"),
        a("cx", "6"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "6"),
        a("cx", "18"),
      ]),
      svg.path([a("d", "M18 9v2c0 .6-.4 1-1 1H7c-.6 0-1-.4-1-1V9")]),
      svg.path([a("d", "M12 12v3")]),
    ],
  )
}


pub fn git_graph(attributes: List(Attribute(a))) {
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
        a("cy", "6"),
        a("cx", "5"),
      ]),
      svg.path([a("d", "M5 9v6")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "5"),
      ]),
      svg.path([a("d", "M12 3v18")]),
      svg.circle([
        a("r", "3"),
        a("cy", "6"),
        a("cx", "19"),
      ]),
      svg.path([a("d", "M16 15.7A9 9 0 0 0 19 9")]),
    ],
  )
}


pub fn git_merge(attributes: List(Attribute(a))) {
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
        a("cy", "18"),
        a("cx", "18"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "6"),
        a("cx", "6"),
      ]),
      svg.path([a("d", "M6 21V9a9 9 0 0 0 9 9")]),
    ],
  )
}


pub fn git_merge_conflict(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 6h4a2 2 0 0 1 2 2v7")]),
      svg.path([a("d", "M6 12v9")]),
      svg.path([a("d", "M9 3 3 9")]),
      svg.path([a("d", "M9 9 3 3")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "18"),
      ]),
    ],
  )
}


pub fn git_pull_request(attributes: List(Attribute(a))) {
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
        a("cy", "18"),
        a("cx", "18"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "6"),
        a("cx", "6"),
      ]),
      svg.path([a("d", "M13 6h3a2 2 0 0 1 2 2v7")]),
      svg.line([
        a("y2", "21"),
        a("y1", "9"),
        a("x2", "6"),
        a("x1", "6"),
      ]),
    ],
  )
}


pub fn git_pull_request_arrow(attributes: List(Attribute(a))) {
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
        a("cy", "6"),
        a("cx", "5"),
      ]),
      svg.path([a("d", "M5 9v12")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "19"),
      ]),
      svg.path([a("d", "m15 9-3-3 3-3")]),
      svg.path([a("d", "M12 6h5a2 2 0 0 1 2 2v7")]),
    ],
  )
}


pub fn git_pull_request_closed(attributes: List(Attribute(a))) {
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
        a("cy", "6"),
        a("cx", "6"),
      ]),
      svg.path([a("d", "M6 9v12")]),
      svg.path([a("d", "m21 3-6 6")]),
      svg.path([a("d", "m21 9-6-6")]),
      svg.path([a("d", "M18 11.5V15")]),
      svg.circle([
        a("r", "3"),
        a("cy", "18"),
        a("cx", "18"),
      ]),
    ],
  )
}


pub fn git_pull_request_create(attributes: List(Attribute(a))) {
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
        a("cy", "6"),
        a("cx", "6"),
      ]),
      svg.path([a("d", "M6 9v12")]),
      svg.path([a("d", "M13 6h3a2 2 0 0 1 2 2v3")]),
      svg.path([a("d", "M18 15v6")]),
      svg.path([a("d", "M21 18h-6")]),
    ],
  )
}


pub fn git_pull_request_create_arrow(attributes: List(Attribute(a))) {
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
        a("cy", "6"),
        a("cx", "5"),
      ]),
      svg.path([a("d", "M5 9v12")]),
      svg.path([a("d", "m15 9-3-3 3-3")]),
      svg.path([a("d", "M12 6h5a2 2 0 0 1 2 2v3")]),
      svg.path([a("d", "M19 15v6")]),
      svg.path([a("d", "M22 18h-6")]),
    ],
  )
}


pub fn git_pull_request_draft(attributes: List(Attribute(a))) {
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
        a("cy", "18"),
        a("cx", "18"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "6"),
        a("cx", "6"),
      ]),
      svg.path([a("d", "M18 6V5")]),
      svg.path([a("d", "M18 11v-1")]),
      svg.line([
        a("y2", "21"),
        a("y1", "9"),
        a("x2", "6"),
        a("x1", "6"),
      ]),
    ],
  )
}


pub fn glass_water(attributes: List(Attribute(a))) {
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
          "M5.116 4.104A1 1 0 0 1 6.11 3h11.78a1 1 0 0 1 .994 1.105L17.19 20.21A2 2 0 0 1 15.2 22H8.8a2 2 0 0 1-2-1.79z",
        ),
      ]),
      svg.path([a("d", "M6 12a5 5 0 0 1 6 0 5 5 0 0 0 6 0")]),
    ],
  )
}


pub fn glasses(attributes: List(Attribute(a))) {
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
        a("cy", "15"),
        a("cx", "6"),
      ]),
      svg.circle([
        a("r", "4"),
        a("cy", "15"),
        a("cx", "18"),
      ]),
      svg.path([a("d", "M14 15a2 2 0 0 0-2-2 2 2 0 0 0-2 2")]),
      svg.path([a("d", "M2.5 13 5 7c.7-1.3 1.4-2 3-2")]),
      svg.path([a("d", "M21.5 13 19 7c-.7-1.3-1.5-2-3-2")]),
    ],
  )
}


pub fn globe(attributes: List(Attribute(a))) {
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
      svg.path([
        a("d", "M12 2a14.5 14.5 0 0 0 0 20 14.5 14.5 0 0 0 0-20"),
      ]),
      svg.path([a("d", "M2 12h20")]),
    ],
  )
}


pub fn globe_lock(attributes: List(Attribute(a))) {
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
          "M15.686 15A14.5 14.5 0 0 1 12 22a14.5 14.5 0 0 1 0-20 10 10 0 1 0 9.542 13",
        ),
      ]),
      svg.path([a("d", "M2 12h8.5")]),
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


pub fn globe_off(attributes: List(Attribute(a))) {
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
        a("d", "M10.114 4.462A14.5 14.5 0 0 1 12 2a10 10 0 0 1 9.313 13.643"),
      ]),
      svg.path([
        a("d", "M15.557 15.556A14.5 14.5 0 0 1 12 22 10 10 0 0 1 4.929 4.929"),
      ]),
      svg.path([
        a("d", "M15.892 10.234A14.5 14.5 0 0 0 12 2a10 10 0 0 0-3.643.687"),
      ]),
      svg.path([a("d", "M17.656 12H22")]),
      svg.path([
        a("d", "M19.071 19.071A10 10 0 0 1 12 22 14.5 14.5 0 0 1 8.44 8.45"),
      ]),
      svg.path([a("d", "M2 12h10")]),
      svg.path([a("d", "m2 2 20 20")]),
    ],
  )
}


pub fn globe_x(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m16 3 5 5")]),
      svg.path([
        a(
          "d",
          "M2 12h20A10 10 0 1 1 12 2a14.5 14.5 0 0 0 0 20 14.5 14.5 0 0 0 4-10",
        ),
      ]),
      svg.path([a("d", "m21 3-5 5")]),
    ],
  )
}


pub fn goal(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 13V2l8 4-8 4")]),
      svg.path([a("d", "M20.561 10.222a9 9 0 1 1-12.55-5.29")]),
      svg.path([a("d", "M8.002 9.997a5 5 0 1 0 8.9 2.02")]),
    ],
  )
}


pub fn gpu(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M2 17h18a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2H2")]),
      svg.path([a("d", "M2 21V3")]),
      svg.path([a("d", "M7 17v3a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1v-3")]),
      svg.circle([
        a("r", "2"),
        a("cy", "11"),
        a("cx", "16"),
      ]),
      svg.circle([
        a("r", "2"),
        a("cy", "11"),
        a("cx", "8"),
      ]),
    ],
  )
}


pub fn graduation_cap(attributes: List(Attribute(a))) {
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
          "M21.42 10.922a1 1 0 0 0-.019-1.838L12.83 5.18a2 2 0 0 0-1.66 0L2.6 9.08a1 1 0 0 0 0 1.832l8.57 3.908a2 2 0 0 0 1.66 0z",
        ),
      ]),
      svg.path([a("d", "M22 10v6")]),
      svg.path([a("d", "M6 12.5V16a6 3 0 0 0 12 0v-3.5")]),
    ],
  )
}


pub fn grape(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M22 5V2l-5.89 5.89")]),
      svg.circle([
        a("r", "3"),
        a("cy", "15.89"),
        a("cx", "16.6"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "7.4"),
        a("cx", "8.11"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "11.65"),
        a("cx", "12.35"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "5.85"),
        a("cx", "13.91"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "10.09"),
        a("cx", "18.15"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "13.2"),
        a("cx", "6.56"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "17.44"),
        a("cx", "10.8"),
      ]),
      svg.circle([
        a("r", "3"),
        a("cy", "19"),
        a("cx", "5"),
      ]),
    ],
  )
}


pub fn grid_2x2(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M12 3v18")]),
      svg.path([a("d", "M3 12h18")]),
      svg.rect([
        a("rx", "2"),
        a("height", "18"),
        a("width", "18"),
        a("y", "3"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn grid_2x2_check(attributes: List(Attribute(a))) {
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
          "M12 3v17a1 1 0 0 1-1 1H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v6a1 1 0 0 1-1 1H3",
        ),
      ]),
      svg.path([a("d", "m16 19 2 2 4-4")]),
    ],
  )
}


pub fn grid_2x2_plus(attributes: List(Attribute(a))) {
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
          "M12 3v17a1 1 0 0 1-1 1H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v6a1 1 0 0 1-1 1H3",
        ),
      ]),
      svg.path([a("d", "M16 19h6")]),
      svg.path([a("d", "M19 22v-6")]),
    ],
  )
}


pub fn grid_2x2_x(attributes: List(Attribute(a))) {
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
          "M12 3v17a1 1 0 0 1-1 1H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v6a1 1 0 0 1-1 1H3",
        ),
      ]),
      svg.path([a("d", "m16 16 5 5")]),
      svg.path([a("d", "m16 21 5-5")]),
    ],
  )
}


pub fn grid_3x2(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M15 3v18")]),
      svg.path([a("d", "M3 12h18")]),
      svg.path([a("d", "M9 3v18")]),
      svg.rect([
        a("rx", "2"),
        a("height", "18"),
        a("width", "18"),
        a("y", "3"),
        a("x", "3"),
      ]),
    ],
  )
}


pub fn grid_3x3(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 9h18")]),
      svg.path([a("d", "M3 15h18")]),
      svg.path([a("d", "M9 3v18")]),
      svg.path([a("d", "M15 3v18")]),
    ],
  )
}


pub fn grip(attributes: List(Attribute(a))) {
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
        a("cy", "5"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "5"),
        a("cx", "19"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "5"),
        a("cx", "5"),
      ]),
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
      svg.circle([
        a("r", "1"),
        a("cy", "19"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "19"),
        a("cx", "19"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "19"),
        a("cx", "5"),
      ]),
    ],
  )
}


pub fn grip_horizontal(attributes: List(Attribute(a))) {
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
        a("cy", "9"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "9"),
        a("cx", "19"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "9"),
        a("cx", "5"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "15"),
        a("cx", "12"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "15"),
        a("cx", "19"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "15"),
        a("cx", "5"),
      ]),
    ],
  )
}


pub fn grip_vertical(attributes: List(Attribute(a))) {
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
        a("cx", "9"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "5"),
        a("cx", "9"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "19"),
        a("cx", "9"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "12"),
        a("cx", "15"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "5"),
        a("cx", "15"),
      ]),
      svg.circle([
        a("r", "1"),
        a("cy", "19"),
        a("cx", "15"),
      ]),
    ],
  )
}


pub fn group(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "M3 7V5c0-1.1.9-2 2-2h2")]),
      svg.path([a("d", "M17 3h2c1.1 0 2 .9 2 2v2")]),
      svg.path([a("d", "M21 17v2c0 1.1-.9 2-2 2h-2")]),
      svg.path([a("d", "M7 21H5c-1.1 0-2-.9-2-2v-2")]),
      svg.rect([
        a("rx", "1"),
        a("y", "7"),
        a("x", "7"),
        a("height", "5"),
        a("width", "7"),
      ]),
      svg.rect([
        a("rx", "1"),
        a("y", "12"),
        a("x", "10"),
        a("height", "5"),
        a("width", "7"),
      ]),
    ],
  )
}


pub fn guitar(attributes: List(Attribute(a))) {
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
      svg.path([a("d", "m11.9 12.1 4.514-4.514")]),
      svg.path([
        a(
          "d",
          "M20.1 2.3a1 1 0 0 0-1.4 0l-1.114 1.114A2 2 0 0 0 17 4.828v1.344a2 2 0 0 1-.586 1.414A2 2 0 0 1 17.828 7h1.344a2 2 0 0 0 1.414-.586L21.7 5.3a1 1 0 0 0 0-1.4z",
        ),
      ]),
      svg.path([a("d", "m6 16 2 2")]),
      svg.path([
        a(
          "d",
          "M8.23 9.85A3 3 0 0 1 11 8a5 5 0 0 1 5 5 3 3 0 0 1-1.85 2.77l-.92.38A2 2 0 0 0 12 18a4 4 0 0 1-4 4 6 6 0 0 1-6-6 4 4 0 0 1 4-4 2 2 0 0 0 1.85-1.23z",
        ),
      ]),
    ],
  )
}
