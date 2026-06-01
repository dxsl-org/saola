import gleam/option.{None}
import gleam/string
import lustre/element
import saola/multiselect
import saola/navigation_bar
import saola/rating
import saola/search
import saola/stepper
import saola/time_picker
import saola/timeline
import saola/tree_view

// --- rating ---

pub fn rating_readonly_has_role_img_test() {
  let html = rating.rating_readonly(3) |> element.to_string
  assert string.contains(html, "role=\"img\"")
  assert string.contains(html, "3 out of 5")
}

pub fn rating_readonly_fills_correct_stars_test() {
  let html = rating.rating_readonly(2) |> element.to_string
  assert string.contains(html, "rating-readonly")
  assert string.contains(html, "rating-star-filled")
  assert string.contains(html, "rating-star")
}

pub fn rating_interactive_renders_buttons_test() {
  let html =
    rating.rating_interactive(1, fn(n) { n })
    |> element.to_string
  assert string.contains(html, "role=\"group\"")
  assert string.contains(html, "type=\"button\"")
  assert string.contains(html, "1 out of 5")
}

// --- search ---

pub fn search_simple_renders_input_test() {
  let html =
    search.search_simple("hello", fn(_) { Nil })
    |> element.to_string
  assert string.contains(html, "role=\"search\"")
  assert string.contains(html, "type=\"search\"")
  assert string.contains(html, "value=\"hello\"")
}

pub fn search_clearable_has_clear_button_test() {
  let html =
    search.search_clearable("q", fn(_) { Nil }, Nil)
    |> element.to_string
  assert string.contains(html, "search-clear")
  assert string.contains(html, "aria-label=\"Clear search\"")
}

pub fn search_small_has_input_sm_class_test() {
  let html =
    search.search_full(
      search.Small,
      "",
      fn(_) { Nil },
      None,
      search.default_attrs,
    )
    |> element.to_string
  assert string.contains(html, "input-sm")
}

// --- time_picker ---

pub fn time_picker_simple_renders_hour_select_test() {
  let html =
    time_picker.time_picker_simple(None, fn(_) { Nil })
    |> element.to_string
  assert string.contains(html, "time-picker")
  assert string.contains(html, "aria-label=\"Hour\"")
  assert string.contains(html, "aria-label=\"Minute\"")
}

pub fn time_picker_24h_has_00_option_test() {
  let html =
    time_picker.time_picker_full(
      None,
      time_picker.TwentyFourHour,
      fn(_) { Nil },
      time_picker.default_attrs,
    )
    |> element.to_string
  assert string.contains(html, ">00<")
}

pub fn time_picker_with_seconds_renders_second_select_test() {
  let html =
    time_picker.time_picker_full(
      None,
      time_picker.TwentyFourHour,
      fn(_) { Nil },
      time_picker.TimePickerAttrs(
        show_seconds: True,
        disabled: False,
        class: "",
      ),
    )
    |> element.to_string
  assert string.contains(html, "aria-label=\"Second\"")
}

// --- multiselect ---

pub fn multiselect_simple_renders_custom_element_test() {
  let html =
    multiselect.multiselect_simple([#("a", "Apple")], [], fn(_) { Nil })
    |> element.to_string
  assert string.contains(html, "saola-multiselect")
  assert string.contains(html, "placeholder=\"Select…\"")
}

pub fn multiselect_disabled_has_disabled_attr_test() {
  let html =
    multiselect.multiselect_full(
      [],
      [],
      fn(_) { Nil },
      multiselect.MultiselectAttrs(
        placeholder: "Pick",
        disabled: True,
        max_selected: None,
        class: "",
      ),
    )
    |> element.to_string
  assert string.contains(html, "disabled")
}

// --- navigation_bar ---

pub fn nav_bar_simple_renders_header_test() {
  let html =
    navigation_bar.nav_bar_simple(None, [])
    |> element.to_string
  assert string.contains(html, "nav-bar")
  assert string.contains(html, "<header")
}

pub fn nav_bar_sticky_has_sticky_class_test() {
  let html =
    navigation_bar.nav_bar_full(
      navigation_bar.Sticky,
      None,
      [],
      [],
      navigation_bar.default_attrs,
    )
    |> element.to_string
  assert string.contains(html, "nav-bar-sticky")
}

pub fn nav_bar_link_active_has_aria_current_test() {
  let html =
    navigation_bar.nav_bar_link("/", "Home", True)
    |> element.to_string
  assert string.contains(html, "nav-bar-link-active")
  assert string.contains(html, "aria-current=\"page\"")
}

// --- stepper ---

pub fn stepper_horizontal_has_correct_class_test() {
  let html =
    stepper.stepper_full(
      stepper.Horizontal,
      [stepper.StepItem("Step 1", "", stepper.Pending)],
      0,
      None,
      "",
    )
    |> element.to_string
  assert string.contains(html, "stepper-horizontal")
  assert string.contains(html, "aria-label=\"Progress\"")
}

pub fn stepper_vertical_has_correct_class_test() {
  let html =
    stepper.stepper_full(
      stepper.Vertical,
      [stepper.StepItem("Step A", "", stepper.Complete)],
      0,
      None,
      "",
    )
    |> element.to_string
  assert string.contains(html, "stepper-vertical")
}

pub fn stepper_active_step_has_active_class_test() {
  let steps = [
    stepper.StepItem("One", "", stepper.Complete),
    stepper.StepItem("Two", "", stepper.Active),
  ]
  let html =
    stepper.stepper_full(stepper.Horizontal, steps, 1, None, "")
    |> element.to_string
  assert string.contains(html, "stepper-step-active")
  assert string.contains(html, "aria-current=\"step\"")
}

// --- tree_view ---

pub fn tree_view_simple_renders_list_test() {
  let items = [tree_view.TreeItem("root", "Root", None, [])]
  let html =
    tree_view.tree_view_simple(items, [], fn(id) { id })
    |> element.to_string
  assert string.contains(html, "tree-view")
  assert string.contains(html, "role=\"tree\"")
  assert string.contains(html, "Root")
}

pub fn tree_view_leaf_has_leaf_class_test() {
  let items = [tree_view.TreeItem("leaf1", "Leaf", None, [])]
  let html =
    tree_view.tree_view_simple(items, [], fn(id) { id })
    |> element.to_string
  assert string.contains(html, "tree-node-leaf")
}

pub fn tree_view_open_node_has_open_class_test() {
  let child = tree_view.TreeItem("child1", "Child", None, [])
  let items = [tree_view.TreeItem("parent1", "Parent", None, [child])]
  let html =
    tree_view.tree_view_simple(items, ["parent1"], fn(id) { id })
    |> element.to_string
  assert string.contains(html, "tree-node-open")
  assert string.contains(html, "aria-expanded=\"true\"")
}

// --- timeline ---

pub fn timeline_simple_renders_ol_test() {
  let items = [
    timeline.TimelineItem(
      "Now",
      "Event",
      "Something happened",
      None,
      timeline.Default,
    ),
  ]
  let html = timeline.timeline_simple(items) |> element.to_string
  assert string.contains(html, "timeline")
  assert string.contains(html, "timeline-item")
  assert string.contains(html, "Event")
}

pub fn timeline_success_variant_has_success_class_test() {
  let items = [timeline.TimelineItem("", "Done", "", None, timeline.Success)]
  let html = timeline.timeline_simple(items) |> element.to_string
  assert string.contains(html, "timeline-item-success")
}

pub fn timeline_empty_time_omits_time_span_test() {
  let items = [timeline.TimelineItem("", "No time", "", None, timeline.Default)]
  let html = timeline.timeline_simple(items) |> element.to_string
  assert !string.contains(html, "timeline-time")
}
