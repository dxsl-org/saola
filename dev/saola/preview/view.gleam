import lustre/attribute as a
import lustre/element.{type Element, text}
import lustre/element/html as h

import saola/preview/accordion as accordion_preview
import saola/preview/alert
import saola/preview/alert_dialog_preview
import saola/preview/aspect_ratio_preview
import saola/preview/avatar as avatar_preview
import saola/preview/badge
import saola/preview/breadcrumb_preview
import saola/preview/button
import saola/preview/button_group_preview
import saola/preview/calendar_preview
import saola/preview/canvas_stress_test
import saola/preview/card
import saola/preview/carousel_preview
import saola/preview/chart_examples
import saola/preview/collapsible_preview
import saola/preview/combobox_preview
import saola/preview/command_preview
import saola/preview/context_menu_preview
import saola/preview/data_table_preview
import saola/preview/date_picker_preview
import saola/preview/dialog
import saola/preview/drawer_preview
import saola/preview/dropdown_menu
import saola/preview/empty_preview
import saola/preview/field as field_preview
import saola/preview/form_example
import saola/preview/form_validation_preview
import saola/preview/heatmap_comparison
import saola/preview/hover_card_preview
import saola/preview/input
import saola/preview/input_group_preview
import saola/preview/input_otp_preview
import saola/preview/item_preview
import saola/preview/menubar_preview
import saola/preview/model.{type Message, type Model}
import saola/preview/multiselect_preview
import saola/preview/native_select_preview
import saola/preview/navigation_bar_preview
import saola/preview/navigation_menu_preview
import saola/preview/pagination_preview
import saola/preview/popover_preview
import saola/preview/progress as progress_preview
import saola/preview/radio_group_preview
import saola/preview/rating_preview
import saola/preview/resizable_preview
import saola/preview/scroll_area_preview
import saola/preview/search_preview
import saola/preview/select as select_preview
import saola/preview/separator as separator_preview
import saola/preview/sheet_preview
import saola/preview/sidebar_preview
import saola/preview/site_example
import saola/preview/skeleton as skeleton_preview
import saola/preview/slider as slider_preview
import saola/preview/spinner_preview
import saola/preview/stepper_preview
import saola/preview/switch as switch_preview
import saola/preview/table
import saola/preview/tabs
import saola/preview/threat_intel
import saola/preview/time_picker_preview
import saola/preview/timeline_preview
import saola/preview/toast
import saola/preview/toggle_group_preview
import saola/preview/toggle_preview
import saola/preview/tooltip as tooltip_preview
import saola/preview/tree_view_preview
import saola/preview/widget_dashboard

pub fn alerts() -> Element(Message) {
  alert.view()
}

pub fn badges() -> Element(Message) {
  badge.view()
}

pub fn cards() -> Element(Message) {
  card.view()
}

pub fn inputs() -> Element(Message) {
  input.view()
}

pub fn buttons() -> Element(Message) {
  button.view()
}

pub fn dropdown_menus(model: Model) -> Element(Message) {
  dropdown_menu.view(model)
}

pub fn tabs(model: Model) -> Element(Message) {
  tabs.view(model)
}

pub fn dialogs(model: Model) -> Element(Message) {
  dialog.view(model)
}

pub fn tables() -> Element(Message) {
  table.view()
}

pub fn toasts(model: Model) -> Element(Message) {
  toast.view(model)
}

pub fn form_example(model: Model) -> Element(Message) {
  form_example.view(model)
}

pub fn small_site_example(model: Model) -> Element(Message) {
  site_example.view(model)
}

pub fn d3_charts() -> Element(Message) {
  chart_examples.d3_charts()
}

pub fn monaco_editor() -> Element(Message) {
  chart_examples.monaco_editor()
}

pub fn separators() -> Element(Message) {
  separator_preview.view()
}

pub fn tooltips() -> Element(Message) {
  tooltip_preview.view()
}

pub fn switches(model: Model) -> Element(Message) {
  switch_preview.view(model.switch_notifications, model.switch_marketing)
}

pub fn sliders(model: Model) -> Element(Message) {
  slider_preview.view(model.slider_volume, model.slider_brightness)
}

pub fn selects(model: Model) -> Element(Message) {
  select_preview.view(model.select_fruit, model.select_timezone)
}

pub fn fields(model: Model) -> Element(Message) {
  field_preview.view(model.form_name, model.form_email)
}

pub fn accordions(model: Model) -> Element(Message) {
  accordion_preview.view(model)
}

pub fn progresses() -> Element(Message) {
  progress_preview.view()
}

pub fn skeletons() -> Element(Message) {
  skeleton_preview.view()
}

pub fn avatars() -> Element(Message) {
  avatar_preview.view()
}

pub fn radio_groups(model: Model) -> Element(Message) {
  radio_group_preview.view(model)
}

pub fn toggles(model: Model) -> Element(Message) {
  toggle_preview.view(model)
}

pub fn toggle_groups(model: Model) -> Element(Message) {
  toggle_group_preview.view(model)
}

pub fn breadcrumbs() -> Element(Message) {
  breadcrumb_preview.view()
}

pub fn paginations(model: Model) -> Element(Message) {
  pagination_preview.view(model)
}

pub fn scroll_areas() -> Element(Message) {
  scroll_area_preview.view()
}

pub fn aspect_ratios() -> Element(Message) {
  aspect_ratio_preview.view()
}

pub fn collapsibles(model: Model) -> Element(Message) {
  collapsible_preview.view(model)
}

pub fn popovers(model: Model) -> Element(Message) {
  popover_preview.view(model)
}

pub fn alert_dialogs(model: Model) -> Element(Message) {
  alert_dialog_preview.view(model)
}

pub fn hover_cards(model: Model) -> Element(Message) {
  hover_card_preview.view(model)
}

pub fn input_otps(model: Model) -> Element(Message) {
  input_otp_preview.view(model)
}

pub fn sheets(model: Model) -> Element(Message) {
  sheet_preview.view(model)
}

pub fn menubars(model: Model) -> Element(Message) {
  menubar_preview.view(model)
}

pub fn calendars(model: Model) -> Element(Message) {
  calendar_preview.view(model)
}

pub fn date_pickers(model: Model) -> Element(Message) {
  date_picker_preview.view(model)
}

pub fn spinners() -> Element(Message) {
  spinner_preview.view()
}

pub fn native_selects(model: Model) -> Element(Message) {
  native_select_preview.view(model)
}

pub fn button_groups() -> Element(Message) {
  button_group_preview.view()
}

pub fn input_groups() -> Element(Message) {
  input_group_preview.view()
}

pub fn context_menus(model: Model) -> Element(Message) {
  context_menu_preview.view(model)
}

pub fn drawers(model: Model) -> Element(Message) {
  drawer_preview.view(model)
}

pub fn sidebars(model: Model) -> Element(Message) {
  sidebar_preview.view(model)
}

pub fn commands(model: Model) -> Element(Message) {
  command_preview.view(model)
}

pub fn resizables(model: Model) -> Element(Message) {
  resizable_preview.view(model)
}

pub fn data_tables(model: Model) -> Element(Message) {
  data_table_preview.view(model)
}

pub fn carousels(model: Model) -> Element(Message) {
  carousel_preview.view(model)
}

pub fn comboboxes(model: Model) -> Element(Message) {
  combobox_preview.view(model)
}

pub fn navigation_menus(model: Model) -> Element(Message) {
  navigation_menu_preview.view(model)
}

pub fn empties() -> Element(Message) {
  empty_preview.view()
}

pub fn items() -> Element(Message) {
  item_preview.view()
}

pub fn form_validation(model: Model) -> Element(Message) {
  form_validation_preview.view(model)
}

pub fn forms() -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Forms")]),
    h.p([a.class("page-description")], [
      text("Showcase of complex form layouts."),
    ]),
  ])
}

pub fn searches(model: Model) -> Element(Message) {
  search_preview.view(model)
}

pub fn ratings(model: Model) -> Element(Message) {
  rating_preview.view(model)
}

pub fn navigation_bars() -> Element(Message) {
  navigation_bar_preview.view()
}

pub fn steppers(model: Model) -> Element(Message) {
  stepper_preview.view(model)
}

pub fn tree_views(model: Model) -> Element(Message) {
  tree_view_preview.view(model)
}

pub fn time_pickers(model: Model) -> Element(Message) {
  time_picker_preview.view(model)
}

pub fn multiselects(model: Model) -> Element(Message) {
  multiselect_preview.view(model)
}

pub fn timelines() -> Element(Message) {
  timeline_preview.view()
}

pub fn heatmap_comparison(model: Model) -> Element(Message) {
  heatmap_comparison.view(model)
}

pub fn canvas_stress_test(model: Model) -> Element(Message) {
  canvas_stress_test.view(model)
}

pub fn widget_dashboard(model: Model) -> Element(Message) {
  widget_dashboard.view(model)
}

pub fn threat_intel_network(model: Model) -> Element(Message) {
  threat_intel.view(model)
}
