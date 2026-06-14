import gleam/dynamic/decode
import gleam/list
import lustre/attribute as a
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e

pub type CommandItem(msg) {
  CommandAction(value: String, label: String, on_select: msg)
  CommandActionShortcut(
    value: String,
    label: String,
    shortcut: String,
    on_select: msg,
  )
  CommandDisabled(label: String)
  CommandSeparator
  CommandGroup(label: String, items: List(CommandItem(msg)))
}

pub type CommandAttrs {
  CommandAttrs(placeholder: String, class: String)
}

pub const default_attrs = CommandAttrs(placeholder: "Search...", class: "")

fn count_items(items: List(CommandItem(msg))) -> Int {
  list.fold(items, 0, fn(acc, item) {
    case item {
      CommandAction(_, _, _) -> acc + 1
      CommandActionShortcut(_, _, _, _) -> acc + 1
      CommandDisabled(_) -> acc + 1
      CommandSeparator -> acc
      CommandGroup(_, sub) -> acc + count_items(sub)
    }
  })
}

fn render_item(
  item: CommandItem(msg),
  highlighted: Int,
  idx: Int,
) -> #(Element(msg), Int) {
  case item {
    CommandAction(_, label, on_select) -> {
      let is_highlighted = idx == highlighted
      let cls = case is_highlighted {
        True -> "command-item command-item-highlighted"
        False -> "command-item"
      }
      #(
        h.button(
          [
            a.type_("button"),
            a.class(cls),
            a.role("option"),
            e.on_click(on_select),
          ],
          [h.span([], [h.text(label)])],
        ),
        idx + 1,
      )
    }
    CommandActionShortcut(_, label, shortcut, on_select) -> {
      let is_highlighted = idx == highlighted
      let cls = case is_highlighted {
        True -> "command-item command-item-highlighted"
        False -> "command-item"
      }
      #(
        h.button(
          [
            a.type_("button"),
            a.class(cls),
            a.role("option"),
            e.on_click(on_select),
          ],
          [
            h.span([], [h.text(label)]),
            h.span([a.class("command-shortcut")], [h.text(shortcut)]),
          ],
        ),
        idx + 1,
      )
    }
    CommandDisabled(label) -> #(
      h.div(
        [
          a.class("command-item command-item-disabled"),
          a.aria_disabled(True),
        ],
        [h.text(label)],
      ),
      idx + 1,
    )
    CommandSeparator -> #(
      h.div([a.class("command-separator"), a.role("separator")], []),
      idx,
    )
    CommandGroup(group_label, sub_items) -> {
      let #(rendered, new_idx) = render_items(sub_items, highlighted, idx)
      #(
        h.div([a.class("command-group")], [
          h.div([a.class("command-group-label")], [h.text(group_label)]),
          ..rendered
        ]),
        new_idx,
      )
    }
  }
}

fn render_items(
  items: List(CommandItem(msg)),
  highlighted: Int,
  start_idx: Int,
) -> #(List(Element(msg)), Int) {
  list.fold(items, #([], start_idx), fn(acc, item) {
    let #(els, idx) = acc
    let #(el, new_idx) = render_item(item, highlighted, idx)
    #(list.append(els, [el]), new_idx)
  })
}

fn decode_keydown(
  item_count: Int,
  highlighted: Int,
  on_nav_up: fn() -> msg,
  on_nav_down: fn() -> msg,
  on_select_at: fn(Int) -> msg,
) -> decode.Decoder(msg) {
  use key <- decode.field("key", decode.string)
  case key {
    "ArrowUp" -> {
      let _ = item_count
      let _ = highlighted
      decode.success(on_nav_up())
    }
    "ArrowDown" -> {
      let _ = item_count
      let _ = highlighted
      decode.success(on_nav_down())
    }
    "Enter" -> decode.success(on_select_at(highlighted))
    _ -> decode.failure(on_nav_up(), "not a nav key")
  }
}

pub fn command(
  query: String,
  items: List(CommandItem(msg)),
  highlighted: Int,
  on_query_change: fn(String) -> msg,
  on_nav_up: fn() -> msg,
  on_nav_down: fn() -> msg,
  on_select_at: fn(Int) -> msg,
  attrs: CommandAttrs,
) -> Element(msg) {
  let item_count = count_items(items)
  let extra_class = case attrs.class {
    "" -> a.none()
    c -> a.class(c)
  }
  let #(rendered_items, _) = render_items(items, highlighted, 0)
  let list_content = case rendered_items {
    [] -> [h.div([a.class("command-empty")], [h.text("No results.")])]
    _ -> rendered_items
  }
  h.div(
    [
      a.class("command"),
      a.role("combobox"),
      a.aria_expanded(True),
      extra_class,
    ],
    [
      h.div([a.class("command-input-wrapper")], [
        h.input([
          a.type_("text"),
          a.class("command-input"),
          a.value(query),
          a.placeholder(attrs.placeholder),
          a.aria_autocomplete("list"),
          e.on_input(on_query_change),
          e.on(
            "keydown",
            decode_keydown(
              item_count,
              highlighted,
              on_nav_up,
              on_nav_down,
              on_select_at,
            )
              |> decode.map(fn(m) { m }),
          )
            |> e.prevent_default,
        ]),
        h.span([a.class("command-input-icon"), a.aria_hidden(True)], [
          h.text("⌕"),
        ]),
      ]),
      h.div([a.class("command-list"), a.role("listbox")], list_content),
    ],
  )
}

pub fn command_simple(
  query: String,
  items: List(CommandItem(msg)),
  on_query_change: fn(String) -> msg,
  on_select_at: fn(Int) -> msg,
) -> Element(msg) {
  command(
    query,
    items,
    -1,
    on_query_change,
    fn() { on_select_at(-1) },
    fn() { on_select_at(-1) },
    on_select_at,
    default_attrs,
  )
}

pub fn command_item_count(items: List(CommandItem(msg))) -> Int {
  count_items(items)
}

pub fn command_clamp_highlight(
  highlighted: Int,
  items: List(CommandItem(msg)),
) -> Int {
  let n = count_items(items)
  case n {
    0 -> -1
    _ -> {
      let clamped = highlighted
      case clamped < 0 {
        True -> n - 1
        False ->
          case clamped >= n {
            True -> 0
            False -> clamped
          }
      }
    }
  }
}

pub fn command_get_value_at(items: List(CommandItem(msg)), idx: Int) -> String {
  let flat = flatten_items(items)
  case list.drop(flat, idx) {
    [#(value, _), ..] -> value
    _ -> ""
  }
}

fn flatten_items(items: List(CommandItem(msg))) -> List(#(String, String)) {
  list.flat_map(items, fn(item) {
    case item {
      CommandAction(v, l, _) -> [#(v, l)]
      CommandActionShortcut(v, l, _, _) -> [#(v, l)]
      CommandDisabled(l) -> [#("", l)]
      CommandSeparator -> []
      CommandGroup(_, sub) -> flatten_items(sub)
    }
  })
}

pub fn command_nav_up(highlighted: Int, items: List(CommandItem(msg))) -> Int {
  command_clamp_highlight(highlighted - 1, items)
}

pub fn command_nav_down(
  highlighted: Int,
  items: List(CommandItem(msg)),
) -> Int {
  command_clamp_highlight(highlighted + 1, items)
}
