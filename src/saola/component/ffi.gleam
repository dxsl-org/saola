import gleam/dynamic.{type Dynamic}
import gleam/javascript/array.{type Array as JSArray}
import plinth/browser/element.{type Element}

@external(javascript, "./component-helpers.mjs", "querySelectorAll")
pub fn query_selector_all(root: Dynamic, selector: String) -> JSArray(Dynamic)

@external(javascript, "./component-helpers.mjs", "isOutOfView")
pub fn is_out_of_view(element: Element, container: Element) -> Bool

@external(javascript, "./component-helpers.mjs", "addOutsideClickListener")
pub fn add_outside_click_listener(root: Dynamic, callback: fn() -> Nil) -> Nil
