//// A searchable dropdown (combobox) implemented as a Lustre component backed by
//// the `<combo-box>` custom element.
////
//// ## Setup
////
//// Register the custom element once at application startup, before the first
//// render:
////
//// ```gleam
//// import saola/component/combobox
////
//// pub fn main() {
////   let assert Ok(_) = combobox.register()
////   // ... start your Lustre app
//// }
//// ```
////
//// ## Basic usage
////
//// Pass choices as a JS property and listen for the `selected` event:
////
//// ```gleam
//// import gleam/json
//// import lustre/attribute as a
//// import saola/component/combobox.{type Item, Item}
////
//// type Msg {
////   FruitSelected(String)
////   SearchChanged(String)
//// }
////
//// fn view(model: Model) -> Element(Msg) {
////   let fruits = [Item("apple", "Apple"), Item("banana", "Banana")]
////   combobox.element([
////     a.property("choices", fruits |> combobox.encode_choices),
////     combobox.on_selected(FruitSelected),
////     combobox.on_text_input(SearchChanged),
////   ])
//// }
//// ```
////
//// ## Preselecting a value
////
//// Use `preselect_value` to seed an initial selection. It is safe to set this
//// attribute before the `choices` property arrives — the selection is applied
//// once the matching choice is loaded:
////
//// ```gleam
//// combobox.element([
////   a.property("choices", fruits |> combobox.encode_choices),
////   combobox.preselect_value("banana"),
////   combobox.on_selected(FruitSelected),
//// ])
//// ```

import gleam/bool
import gleam/dynamic/decode
import gleam/float
import gleam/int
import gleam/javascript/array
import gleam/json
import gleam/list
import gleam/option.{type Option, None, Some}
import gleam/result
import gleam/string
import iv
import lustre
import lustre/attribute.{type Attribute} as a
import lustre/component
import lustre/effect
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/element/keyed
import lustre/event as ev
import on
import plinth/browser/element as web_element
import saola/component/ffi
import saola/icon/lc
import saola/icon/ls
import typeid

// This component will be used as `<combo-box>`
pub const tag = "combo-box"

pub type Item {
  Item(value: String, name: String)
}

pub type SlideDir {
  SlideUp
  SlideDown
}

type Model {
  Model(
    // Needed for `scrollIntoView`
    id: String,
    choices: List(Item),
    filter_text: String,
    is_open: Bool,
    filtered_choices: iv.Array(Item),
    selected_item: Option(Item),
    // 1-based index of the item to focus when navigating with keyboard.
    // Zero means no one is focused.
    focused_index: Int,
    // Preselected item value (used when choices arrive later)
    preselect_value: Option(String),
    // Track if we've registered the outside-click listener already
    has_outside_listener: Bool,
  )
}

type Message {
  UserFocusedInput
  UserClickedOutside
  UserNavigate(SlideDir)
  // Pick an item in suggested list, either via click or "Enter"
  UserPickedChoice(Item)
  UserWroteText(String)
  ParentSetId(String)
  ParentChangedChoices(List(Item))
  ParentPreselectedItem(String)
}

pub type EmitMessage {
  Focused
  Selected(String)
  TextInput(String)
}

const attr_preselect_value = "preselect"

/// Registers the `<combo-box>` custom element with the browser.
/// Call once at application startup before rendering any combobox elements.
pub fn register() -> Result(Nil, lustre.Error) {
  let app =
    lustre.component(init, update, view, [
      component.on_attribute_change("id", fn(value) { Ok(ParentSetId(value)) }),
      component.on_attribute_change(attr_preselect_value, fn(value) {
        Ok(ParentPreselectedItem(value))
      }),
      component.on_property_change("choices", {
        decode.list(item_decoder()) |> decode.map(ParentChangedChoices)
      }),
    ])
  lustre.register(app, tag)
}

/// Creates a `<combo-box>` element. Pass data and event handler attributes produced
/// by the other functions in this module.
pub fn element(attributes: List(Attribute(m))) -> Element(m) {
  element.element(tag, attributes, [])
}

/// Sets the initially selected item by value. Safe to set before `choices` are
/// loaded — selection is deferred until the matching choice arrives.
pub fn preselect_value(value: String) -> Attribute(m) {
  a.attribute(attr_preselect_value, value)
}

// -- Shortcuts to let parent element easily register event handlers -- //

/// Fires when the combobox input receives focus.
pub fn on_focused(message: message) -> Attribute(message) {
  ev.on("focused", decode.success(message))
}

/// Fires when the user picks an item. The handler receives the selected item's value.
pub fn on_selected(handler: fn(String) -> message) -> Attribute(message) {
  ev.on("selected", {
    use detail <- decode.field("detail", decode.string)
    decode.success(handler(detail))
  })
}

/// Fires on every keystroke in the search input. The handler receives the current text.
pub fn on_text_input(handler: fn(String) -> message) -> Attribute(message) {
  ev.on("text-input", {
    use detail <- decode.field("detail", decode.string)
    decode.success(handler(detail))
  })
}

/// No-op — the combobox has no clear button. Provided for API compatibility only.
pub fn on_clear_clicked(message: message) -> Attribute(message) {
  ev.on("clear-clicked", decode.success(message))
}

// -- Internal implementation -- //

/// Encodes an `Item` to JSON. Use with `encode_choices` or directly with
/// `json.array` when building the `choices` property.
pub fn encode_item(item: Item) -> json.Json {
  let Item(value:, name:) = item
  json.object([#("value", json.string(value)), #("name", json.string(name))])
}

/// Encodes a list of `Item`s to JSON for the `choices` property.
///
/// ```gleam
/// a.property("choices", fruits |> combobox.encode_choices)
/// ```
pub fn encode_choices(items: List(Item)) -> json.Json {
  json.array(items, encode_item)
}

fn item_decoder() -> decode.Decoder(Item) {
  use value <- decode.field("value", value_as_string_decoder())
  use name <- decode.field("name", decode.string)
  decode.success(Item(value:, name:))
}

fn value_as_string_decoder() -> decode.Decoder(String) {
  decode.one_of(decode.string, [
    decode.int |> decode.map(int.to_string),
    decode.float |> decode.map(float.to_string),
    decode.bool
      |> decode.map(fn(b) {
        case b {
          True -> "true"
          False -> "false"
        }
      }),
  ])
}

fn init(_) -> #(Model, effect.Effect(Message)) {
  let id =
    typeid.new(prefix: "cbox")
    |> result.map(typeid.to_string)
    |> result.unwrap("cbox-fallback")
  #(
    Model(
      id: id,
      choices: [],
      filter_text: "",
      is_open: False,
      filtered_choices: iv.new(),
      selected_item: None,
      focused_index: 0,
      preselect_value: None,
      has_outside_listener: False,
    ),
    effect.none(),
  )
}

fn update(model: Model, message: Message) -> #(Model, effect.Effect(Message)) {
  case message {
    UserFocusedInput -> {
      let new_model =
        Model(
          ..model,
          is_open: True,
          has_outside_listener: True,
          filter_text: "",
          filtered_choices: iv.from_list(model.choices),
          focused_index: 0,
        )
      let listener_eff = case model.has_outside_listener {
        True -> effect.none()
        False -> register_outside_click_listener()
      }
      #(new_model, effect.batch([emit(Focused), listener_eff]))
    }
    UserClickedOutside -> {
      #(Model(..model, is_open: False, focused_index: 0), effect.none())
    }
    UserNavigate(dir) -> {
      let size = iv.size(model.filtered_choices)
      let fi = case dir {
        SlideUp -> model.focused_index - 1
        SlideDown -> model.focused_index + 1
      }
      let fi = int.clamp(fi, 0, size)
      let scroll_eff = scroll_to_focused(fi)
      #(Model(..model, focused_index: fi, is_open: True), scroll_eff)
    }
    UserPickedChoice(item) -> {
      let new_model =
        Model(
          ..model,
          selected_item: Some(item),
          filter_text: item.name,
          is_open: False,
          focused_index: 0,
          filtered_choices: iv.from_list(model.choices),
        )
      #(new_model, emit(Selected(item.value)))
    }
    UserWroteText(text) -> {
      let filtered = filter_choices(model.choices, text)
      let new_model =
        Model(
          ..model,
          filter_text: text,
          is_open: True,
          filtered_choices: iv.from_list(filtered),
          focused_index: 0,
        )
      #(new_model, emit(TextInput(text)))
    }
    ParentSetId(id) -> #(Model(..model, id: id), effect.none())
    ParentChangedChoices(choices) -> {
      let filtered = filter_choices(choices, model.filter_text)
      let new_model =
        Model(
          ..model,
          choices: choices,
          filtered_choices: iv.from_list(filtered),
        )
      case model.preselect_value {
        Some(value) -> apply_preselection(value, new_model)
        None -> #(new_model, effect.none())
      }
    }
    ParentPreselectedItem(value) -> {
      let new_model = Model(..model, preselect_value: Some(value))
      case model.choices {
        [] -> #(new_model, effect.none())
        _ -> apply_preselection(value, new_model)
      }
    }
  }
}

fn filter_choices(choices: List(Item), text: String) -> List(Item) {
  case text {
    "" -> choices
    q -> {
      let q_lower = string.lowercase(q)
      list.filter(choices, fn(item) {
        string.contains(string.lowercase(item.name), q_lower)
      })
    }
  }
}

// Choices and the preselect attribute can arrive in either order. This function
// runs only when both are present, resolving the pending preselect_value against
// the current choices list.
fn apply_preselection(
  value: String,
  model: Model,
) -> #(Model, effect.Effect(Message)) {
  let selected_item =
    list.find(model.choices, fn(item) { item.value == value })
    |> option.from_result
  let filter_text =
    selected_item
    |> option.map(fn(item) { item.name })
    |> option.unwrap("")
  let new_model =
    Model(
      ..model,
      selected_item: selected_item,
      filter_text: filter_text,
      preselect_value: None,
      filtered_choices: iv.from_list(model.choices),
    )
  #(new_model, effect.none())
}

fn emit(message: EmitMessage) -> effect.Effect(Message) {
  case message {
    Focused -> ev.emit("focused", json.null())
    Selected(value) -> ev.emit("selected", json.string(value))
    TextInput(text) -> ev.emit("text-input", json.string(text))
  }
}

fn register_outside_click_listener() -> effect.Effect(Message) {
  use dispatch, root <- effect.after_paint
  ffi.add_outside_click_listener(root, fn() { dispatch(UserClickedOutside) })
  Nil
}

fn scroll_to_focused(focused_index: Int) -> effect.Effect(Message) {
  use <- bool.guard(focused_index <= 0, effect.none())
  use _dispatch, root <- effect.after_paint
  let options = ffi.query_selector_all(root, "[role='option']")
  let scroll_target = {
    use el_dyn <- result.try(array.get(options, focused_index - 1))
    use el <- result.try(
      web_element.cast(el_dyn) |> result.map_error(fn(_) { Nil }),
    )
    use container <- result.try(web_element.parent_element(el))
    Ok(#(el, container))
  }
  case scroll_target {
    Error(_) -> False
    Ok(#(el, container)) -> {
      use <- on.true(ffi.is_out_of_view(el, container))
      web_element.scroll_into_view(el)
      True
    }
  }
  Nil
}

fn setup_keyup_handler(focused_item: Option(Item)) -> Attribute(Message) {
  ev.on("keyup", {
    use key <- decode.field("key", decode.string)
    case key {
      "ArrowUp" -> decode.success(UserNavigate(SlideUp))
      "ArrowDown" -> decode.success(UserNavigate(SlideDown))
      "Escape" -> decode.success(UserClickedOutside)
      "Enter" ->
        case focused_item {
          None -> decode.failure(UserNavigate(SlideUp), "no focused item")
          Some(item) -> decode.success(UserPickedChoice(item))
        }
      _ -> decode.failure(UserNavigate(SlideUp), "unhandled key")
    }
  })
}

fn view(model: Model) -> Element(Message) {
  let trigger_id = model.id <> "-trigger"
  let listbox_id = model.id <> "-listbox"
  let label = case model.selected_item {
    None -> "Select..."
    Some(item) -> item.name
  }
  h.div([], [
    element.element("link", [a.rel("stylesheet"), a.href("/basecoat.css")], []),
    h.div([a.class("select"), a.id(model.id)], [
      render_trigger(model.is_open, trigger_id, listbox_id, label),
      case model.is_open {
        False -> element.none()
        True -> render_popover(model, trigger_id, listbox_id)
      },
    ]),
  ])
}

fn render_trigger(
  is_open: Bool,
  trigger_id: String,
  listbox_id: String,
  label: String,
) -> Element(Message) {
  h.button(
    [
      a.type_("button"),
      a.class("btn-outline"),
      a.id(trigger_id),
      a.attribute("aria-haspopup", "listbox"),
      a.attribute("aria-expanded", case is_open {
        True -> "true"
        False -> "false"
      }),
      a.attribute("aria-controls", listbox_id),
      a.style("width", "12rem"),
      ev.on_click(UserFocusedInput),
    ],
    [
      h.span([], [h.text(label)]),
      lc.chevrons_up_down([]),
    ],
  )
}

fn render_popover(
  model: Model,
  trigger_id: String,
  listbox_id: String,
) -> Element(Message) {
  let focused_item = case model.focused_index {
    fi if fi < 1 -> None
    fi -> iv.get(model.filtered_choices, fi - 1) |> option.from_result
  }
  h.div([a.attribute("data-popover", ""), a.style("width", "12rem")], [
    h.header([], [
      ls.search([]),
      h.input([
        a.type_("text"),
        a.value(model.filter_text),
        a.placeholder("Search..."),
        a.attribute("autocomplete", "off"),
        a.attribute("autocorrect", "off"),
        a.attribute("spellcheck", "false"),
        a.attribute("aria-autocomplete", "list"),
        a.attribute("role", "combobox"),
        a.attribute("aria-expanded", "true"),
        a.attribute("aria-controls", listbox_id),
        a.attribute("aria-labelledby", trigger_id),
        ev.on_input(UserWroteText),
        setup_keyup_handler(focused_item),
      ]),
    ]),
    keyed.div(
      [
        a.attribute("role", "listbox"),
        a.id(listbox_id),
        a.attribute("aria-orientation", "vertical"),
        a.attribute("aria-labelledby", trigger_id),
        a.attribute("data-empty", "No results."),
      ],
      render_options(model),
    ),
  ])
}

fn render_options(model: Model) -> List(#(String, Element(Message))) {
  iv.to_list(model.filtered_choices)
  |> list.index_map(fn(item, i) {
    let is_selected = case model.selected_item {
      Some(s) -> s.value == item.value
      None -> False
    }
    let is_focused = model.focused_index == i + 1
    #(
      item.value,
      h.div(
        [
          a.attribute("role", "option"),
          a.attribute("data-value", item.value),
          case is_selected {
            True -> a.attribute("aria-selected", "true")
            False -> a.none()
          },
          case is_focused {
            True -> a.class("active")
            False -> a.none()
          },
          ev.on_click(UserPickedChoice(item)),
        ],
        [h.text(item.name)],
      ),
    )
  })
}
