//// A multi-select dropdown (custom element) implemented as a Lustre component.//// A multi-select dropdown (custom element) implemented as a Lustre component.
////
//// ## Setup
////
//// Register the custom element once at application startup, before the first
//// render:
////
//// ```gleam
//// import saola/component/multi_select
////
//// pub fn main() {
////   let assert Ok(_) = multi_select.register()
////   // ... start your Lustre app
//// }
//// ```
////
//// ## Basic usage
////
//// Pass choices as a JS property and listen for the `change` event:
////
//// ```gleam
//// import gleam/json
//// import lustre/attribute as a
//// import saola/component/multi_select.{type Item, Item}
////
//// type Msg {
////   TagsChanged(List(String))
//// }
////
//// fn view(model: Model) -> Element(Msg) {
////   let tags = [Item("rust", "Rust"), Item("gleam", "Gleam")]
////   multi_select.element([
////     a.property("choices", tags |> multi_select.encode_choices),
////     multi_select.on_changed(TagsChanged),
////   ])
//// }
//// ```
////
//// ## Preselecting values
////
//// Use `preselect_values` to seed initial selections. Safe to set before
//// `choices` are loaded — selection is deferred until matching choices arrive:
////
//// ```gleam
//// multi_select.element([
////   a.property("choices", tags |> multi_select.encode_choices),
////   multi_select.preselect_values(["rust", "gleam"]),
////   multi_select.on_changed(TagsChanged),
//// ])
//// ```

import gleam/dynamic/decode
import gleam/json
import gleam/list
import gleam/option.{type Option, None, Some}
import gleam/result
import gleam/set.{type Set}
import gleam/string
import lustre
import lustre/attribute.{type Attribute} as a
import lustre/component
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as ev
import saola/component/ffi
import saola/icon/lc
import typeid

// This component will be used as `<multi-select>`
pub const tag = "multi-select"

// Data passed from parent
pub type Item {
  Item(value: String, name: String)
}

// Internal data, converted from `Item`
type StateItem {
  StateItem(value: String, name: String, selected: Bool)
}

// The direction of keyboard navigation (up / down)
type SlideDir {
  SlideUp
  SlideDown
}

type Model {
  Model(
    // Needed for `scrollIntoView`
    id: String,
    choices: List(StateItem),
    // Preselected item value (used when choices arrive later)
    preselect_values: Set(String),
    // Index of the item to focus when navigating with keyboard.
    focused_index: Option(Int),
    is_open: Bool,
    has_outside_listener: Bool,
  )
}

type Message {
  UserClickedTrigger
  UserClickedOutside
  UserNavigate(SlideDir)
  // Pick an item in suggested list, either via click or "Enter".
  // This message holds the value of the item to be toggled.
  UserPickedChoice(String)
  ParentSetId(String)
  ParentChangedChoices(List(Item))
  ParentPreselectedValues(List(String))
}

/// Message that this component will emit to parent
pub type EmitMessage {
  Focused
  // The "value" of the selected items
  Changed(List(String))
}

const attr_preselect = "preselect"

const attr_choices = "choices"

/// Registers the `<multi-select>` custom element with the browser.
/// Call once at application startup before rendering any multi-select elements.
pub fn register() -> Result(Nil, lustre.Error) {
  let app =
    lustre.component(init, update, view, [
      component.on_attribute_change("id", fn(value) { Ok(ParentSetId(value)) }),
      component.on_attribute_change(attr_preselect, fn(raw: String) {
        json.parse(raw, decode.list(decode.string))
        |> result.map(ParentPreselectedValues)
        |> result.replace_error(Nil)
      }),
      component.on_property_change(attr_choices, {
        decode.list(item_decoder()) |> decode.map(ParentChangedChoices)
      }),
    ])
  lustre.register(app, tag)
}

/// Creates a `<multi-select>` element. Pass data and event handler attributes
/// produced by the other functions in this module.
pub fn element(attributes: List(Attribute(m))) -> Element(m) {
  element.element(tag, attributes, [])
}

/// Sets the initially selected values as a JSON string (e.g. `["a","b"]`).
/// Safe to set before `choices` are loaded — selection is deferred until
/// matching choices arrive.
pub fn preselect_value(value: String) -> Attribute(m) {
  a.attribute(attr_preselect, value)
}

/// Encodes an `Item` to JSON. Use with `encode_choices` or directly with
/// `json.array` when building the `choices` property.
pub fn item_to_json(item: Item) -> json.Json {
  let Item(value:, name:) = item
  json.object([
    #("value", json.string(value)),
    #("name", json.string(name)),
  ])
}

/// Encodes a list of `Item`s to JSON for the `choices` property.
///
/// ```gleam
/// a.property("choices", tags |> multi_select.encode_choices)
/// ```
pub fn encode_choices(items: List(Item)) -> json.Json {
  json.array(items, item_to_json)
}

// -- Shortcuts to let parent element easily register event handlers -- //

/// Fires when the multi-select input receives focus.
pub fn on_focused(message: message) -> Attribute(message) {
  ev.on("focus", decode.success(message))
}

/// Fires when the user changes the selection. The handler receives the list of
/// selected item values.
pub fn on_changed(handler: fn(List(String)) -> message) -> Attribute(message) {
  ev.on("change", {
    use detail <- decode.field("detail", decode.list(decode.string))
    decode.success(handler(detail))
  })
}

// -- Internal implementation -- //

fn item_decoder() -> decode.Decoder(Item) {
  use value <- decode.field("value", decode.string)
  use name <- decode.field("name", decode.string)
  decode.success(Item(value:, name:))
}

fn emit(msg: EmitMessage) -> Effect(Message) {
  case msg {
    Focused -> ev.emit("focus", json.null())
    Changed(values) -> ev.emit("change", json.array(values, json.string))
  }
}

fn item_to_state_item(choice: Item, preselected_values: Set(String)) {
  let Item(value:, name:) = choice
  let selected = set.contains(preselected_values, value)
  StateItem(value:, name:, selected:)
}

fn init(_) -> #(Model, Effect(Message)) {
  let id =
    typeid.new(prefix: "mselect")
    |> result.map(typeid.to_string)
    |> result.unwrap("mselect-fallback")
  let model = Model(id, [], set.new(), None, False, False)
  #(model, effect.none())
}

fn update(model: Model, message: Message) -> #(Model, Effect(Message)) {
  case message {
    UserClickedTrigger -> {
      let is_open = !model.is_open
      let listener_eff = case model.has_outside_listener {
        True -> effect.none()
        False -> register_outside_click_listener()
      }
      #(Model(..model, is_open:, has_outside_listener: True), case is_open {
        True -> listener_eff
        False -> effect.none()
      })
    }
    UserClickedOutside -> #(Model(..model, is_open: False), effect.none())
    UserNavigate(dir) -> {
      let count = list.length(model.choices)
      let focused_index = case count {
        0 -> None
        n -> {
          let next = case dir, model.focused_index {
            SlideDown, None -> 0
            SlideDown, Some(i) -> { i + 1 } % n
            SlideUp, None -> n - 1
            SlideUp, Some(i) -> { i - 1 + n } % n
          }
          Some(next)
        }
      }
      #(Model(..model, focused_index:), effect.none())
    }
    UserPickedChoice(value) -> {
      let choices =
        list.map(model.choices, fn(item) {
          case item.value == value {
            True -> StateItem(..item, selected: !item.selected)
            False -> item
          }
        })
      let selected_values =
        list.filter_map(choices, fn(item) {
          case item.selected {
            True -> Ok(item.value)
            False -> Error(Nil)
          }
        })
      #(Model(..model, choices:), emit(Changed(selected_values)))
    }
    ParentSetId(id) -> #(Model(..model, id: id), effect.none())
    ParentChangedChoices(items) -> {
      let choices =
        items |> list.map(item_to_state_item(_, model.preselect_values))
      let model = Model(..model, choices:)
      #(model, effect.none())
    }
    ParentPreselectedValues(values) -> {
      let preselect_values = set.from_list(values)
      let model = Model(..model, preselect_values:)
      #(model, effect.none())
    }
  }
}

fn register_outside_click_listener() -> Effect(Message) {
  use dispatch, root <- effect.after_paint
  ffi.add_outside_click_listener(root, fn() { dispatch(UserClickedOutside) })
  Nil
}

fn view(model: Model) -> Element(Message) {
  let trigger_id = model.id <> "-trigger"
  let listbox_id = model.id <> "-listbox"
  h.div([], [
    h.div([a.class("select"), a.id(model.id)], [
      render_trigger(model, trigger_id, listbox_id),
      case model.is_open {
        False -> element.none()
        True -> render_popover(model, trigger_id, listbox_id)
      },
      render_hidden_input(model),
    ]),
  ])
}

fn render_trigger(
  model: Model,
  trigger_id: String,
  listbox_id: String,
) -> Element(Message) {
  let selected = list.filter(model.choices, fn(item) { item.selected })
  let label = case selected {
    [] -> "Select..."
    items -> items |> list.map(fn(i) { i.name }) |> string.join(", ")
  }
  h.button(
    [
      a.type_("button"),
      a.class("btn-outline"),
      a.id(trigger_id),
      a.aria_haspopup("listbox"),
      a.aria_expanded(model.is_open),
      a.aria_controls(listbox_id),
      ev.on_click(UserClickedTrigger),
    ],
    [h.span([a.class("truncate")], [h.text(label)]), lc.chevron_down([])],
  )
}

fn render_popover(
  model: Model,
  trigger_id: String,
  listbox_id: String,
) -> Element(Message) {
  h.div([a.attribute("data-popover", "")], [
    h.div(
      [
        a.role("listbox"),
        a.id(listbox_id),
        a.aria_orientation("vertical"),
        a.aria_labelledby(trigger_id),
        a.aria_multiselectable(True),
      ],
      render_options(model),
    ),
  ])
}

fn render_options(model: Model) -> List(Element(Message)) {
  list.index_map(model.choices, fn(item, i) {
    let is_focused = model.focused_index == Some(i)
    h.div(
      [
        a.role("option"),
        a.attribute("data-value", item.value),
        a.aria_selected(item.selected),
        case is_focused {
          True -> a.class("active")
          False -> a.none()
        },
        ev.on_click(UserPickedChoice(item.value)),
      ],
      [h.text(item.name)],
    )
  })
}

fn render_hidden_input(model: Model) -> Element(Message) {
  let selected_values =
    list.filter_map(model.choices, fn(item) {
      case item.selected {
        True -> Ok(item.value)
        False -> Error(Nil)
      }
    })
  h.input([
    a.type_("hidden"),
    a.name(model.id <> "-value"),
    a.value(json.array(selected_values, json.string) |> json.to_string),
  ])
}
