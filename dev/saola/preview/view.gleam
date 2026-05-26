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

pub fn view_alerts() -> Element(Message) {
  alert.view_alerts()
}

pub fn view_badges() -> Element(Message) {
  badge.view_badges()
}

pub fn view_cards() -> Element(Message) {
  card.view_cards()
}

pub fn view_inputs() -> Element(Message) {
  input.view_inputs()
}

pub fn view_buttons() -> Element(Message) {
  button.view_buttons()
}

pub fn view_dropdown_menus(model: Model) -> Element(Message) {
  dropdown_menu.view_dropdown_menus(model)
}

pub fn view_tabs(model: Model) -> Element(Message) {
  tabs.view_tabs(model)
}

pub fn view_dialogs(model: Model) -> Element(Message) {
  dialog.view_dialogs(model)
}

pub fn view_tables() -> Element(Message) {
  table.view_tables()
}

pub fn view_toasts(model: Model) -> Element(Message) {
  toast.view_toasts(model)
}

pub fn view_form_example(model: Model) -> Element(Message) {
  form_example.view_form_example(model)
}

pub fn view_small_site_example(model: Model) -> Element(Message) {
  site_example.view_small_site_example(model)
}

pub fn view_d3_charts() -> Element(Message) {
  chart_examples.view_d3_charts()
}

pub fn view_monaco_editor() -> Element(Message) {
  chart_examples.view_monaco_editor()
}

pub fn view_separators() -> Element(Message) {
  separator_preview.view_separators()
}

pub fn view_tooltips() -> Element(Message) {
  tooltip_preview.view_tooltips()
}

pub fn view_switches(model: Model) -> Element(Message) {
  switch_preview.view_switches(
    model.switch_notifications,
    model.switch_marketing,
  )
}

pub fn view_sliders(model: Model) -> Element(Message) {
  slider_preview.view_sliders(model.slider_volume, model.slider_brightness)
}

pub fn view_selects(model: Model) -> Element(Message) {
  select_preview.view_selects(model.select_fruit, model.select_timezone)
}

pub fn view_fields(model: Model) -> Element(Message) {
  field_preview.view_fields(model.form_name, model.form_email)
}

pub fn view_accordions(model: Model) -> Element(Message) {
  accordion_preview.view_accordions(model)
}

pub fn view_progresses() -> Element(Message) {
  progress_preview.view_progresses()
}

pub fn view_skeletons() -> Element(Message) {
  skeleton_preview.view_skeletons()
}

pub fn view_avatars() -> Element(Message) {
  avatar_preview.view_avatars()
}

pub fn view_radio_groups(model: Model) -> Element(Message) {
  radio_group_preview.view_radio_groups(model)
}

pub fn view_toggles(model: Model) -> Element(Message) {
  toggle_preview.view_toggles(model)
}

pub fn view_toggle_groups(model: Model) -> Element(Message) {
  toggle_group_preview.view_toggle_groups(model)
}

pub fn view_breadcrumbs() -> Element(Message) {
  breadcrumb_preview.view_breadcrumbs()
}

pub fn view_paginations(model: Model) -> Element(Message) {
  pagination_preview.view_paginations(model)
}

pub fn view_scroll_areas() -> Element(Message) {
  scroll_area_preview.view_scroll_areas()
}

pub fn view_aspect_ratios() -> Element(Message) {
  aspect_ratio_preview.view_aspect_ratios()
}

pub fn view_collapsibles(model: Model) -> Element(Message) {
  collapsible_preview.view_collapsibles(model)
}

pub fn view_popovers(model: Model) -> Element(Message) {
  popover_preview.view_popovers(model)
}

pub fn view_alert_dialogs(model: Model) -> Element(Message) {
  alert_dialog_preview.view_alert_dialogs(model)
}

pub fn view_hover_cards(model: Model) -> Element(Message) {
  hover_card_preview.view_hover_cards(model)
}

pub fn view_input_otps(model: Model) -> Element(Message) {
  input_otp_preview.view_input_otps(model)
}

pub fn view_sheets(model: Model) -> Element(Message) {
  sheet_preview.view_sheets(model)
}

pub fn view_menubars(model: Model) -> Element(Message) {
  menubar_preview.view_menubars(model)
}

pub fn view_calendars(model: Model) -> Element(Message) {
  calendar_preview.view_calendars(model)
}

pub fn view_date_pickers(model: Model) -> Element(Message) {
  date_picker_preview.view_date_pickers(model)
}

pub fn view_spinners() -> Element(Message) {
  spinner_preview.view_spinners()
}

pub fn view_native_selects(model: Model) -> Element(Message) {
  native_select_preview.view_native_selects(model)
}

pub fn view_button_groups() -> Element(Message) {
  button_group_preview.view_button_groups()
}

pub fn view_input_groups() -> Element(Message) {
  input_group_preview.view_input_groups()
}

pub fn view_context_menus(model: Model) -> Element(Message) {
  context_menu_preview.view_context_menus(model)
}

pub fn view_drawers(model: Model) -> Element(Message) {
  drawer_preview.view_drawers(model)
}

pub fn view_sidebars(model: Model) -> Element(Message) {
  sidebar_preview.view_sidebars(model)
}

pub fn view_commands(model: Model) -> Element(Message) {
  command_preview.view_commands(model)
}

pub fn view_resizables(model: Model) -> Element(Message) {
  resizable_preview.view_resizables(model)
}

pub fn view_data_tables(model: Model) -> Element(Message) {
  data_table_preview.view_data_tables(model)
}

pub fn view_carousels(model: Model) -> Element(Message) {
  carousel_preview.view_carousels(model)
}

pub fn view_comboboxes(model: Model) -> Element(Message) {
  combobox_preview.view_comboboxes(model)
}

pub fn view_navigation_menus(model: Model) -> Element(Message) {
  navigation_menu_preview.view_navigation_menus(model)
}

pub fn view_empties() -> Element(Message) {
  empty_preview.view_empties()
}

pub fn view_items() -> Element(Message) {
  item_preview.view_items()
}

pub fn view_form_validation(model: Model) -> Element(Message) {
  form_validation_preview.view_form_validation(model)
}

pub fn view_forms() -> Element(Message) {
  h.div([], [
    h.h1([a.class("page-title")], [text("Forms")]),
    h.p([a.class("page-description")], [
      text("Showcase of complex form layouts."),
    ]),
  ])
}

pub fn view_searches(model: Model) -> Element(Message) {
  search_preview.view_searches(model)
}

pub fn view_ratings(model: Model) -> Element(Message) {
  rating_preview.view_ratings(model)
}

pub fn view_navigation_bars() -> Element(Message) {
  navigation_bar_preview.view_navigation_bars()
}

pub fn view_steppers(model: Model) -> Element(Message) {
  stepper_preview.view_steppers(model)
}

pub fn view_tree_views(model: Model) -> Element(Message) {
  tree_view_preview.view_tree_views(model)
}

pub fn view_time_pickers(model: Model) -> Element(Message) {
  time_picker_preview.view_time_pickers(model)
}

pub fn view_multiselects(model: Model) -> Element(Message) {
  multiselect_preview.view_multiselects(model)
}

pub fn view_timelines() -> Element(Message) {
  timeline_preview.view_timelines()
}

pub fn view_heatmap_comparison(model: Model) -> Element(Message) {
  heatmap_comparison.view_heatmap_comparison(model)
}

pub fn view_canvas_stress_test(model: Model) -> Element(Message) {
  canvas_stress_test.view_canvas_stress_test(model)
}

pub fn view_widget_dashboard(model: Model) -> Element(Message) {
  widget_dashboard.view_widget_dashboard(model)
}

pub fn view_threat_intel_network(model: Model) -> Element(Message) {
  threat_intel.view_threat_intel_network(model)
}
