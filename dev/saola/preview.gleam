import formal/form as formlib
import gleam/dict
import gleam/float
import gleam/int
import gleam/list
import gleam/option.{None, Some}
import gleam/uri.{type Uri}

import lustre
import lustre/attribute as a
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/element/html as h
import lustre/event as e
import modem
import saola/canvas_command as canvas
import saola/graph_layout
import saola/lustre_heatmap
import saola/preview/threat_intel_data
import saola/theme
import saola/toast

import gleam/time/calendar
import saola/data_table
import saola/preview/model.{
  type Message, type Model, AccordionToggled, Accordions, AddToast,
  AlertDialogCancelled, AlertDialogConfirmed, AlertDialogOpened, AlertDialogs,
  Alerts, AspectRatios, Avatars, Badges, Breadcrumbs, ButtonGroups, Buttons,
  CalendarDateSelected, CalendarMonthChanged, Calendars, CanvasStressTest, Cards,
  CarouselChanged, Carousels, CloseDialog, CollapsibleToggled, Collapsibles,
  ComboboxOpenChanged, ComboboxQueryChanged, ComboboxSelected, Comboboxes,
  CommandNavDown, CommandNavUp, CommandQueryChanged, CommandSelected, Commands,
  ContextMenuClosed, ContextMenuOpened, ContextMenus, D3Charts, DashDrawerClosed,
  DashPageChanged, DashRowClicked, DashSearchChanged, DataTableFilterChanged,
  DataTablePageChanged, DataTableSelectChanged, DataTableSortChanged, DataTables,
  DatePickerDateSelected, DatePickerMonthChanged, DatePickerOpenChanged,
  DatePickers, Dialogs, DismissToast, DrawerClosed, DrawerOpened, Drawers,
  DropdownMenus, Empties, ExampleForm, ExampleSite, Fields, FormEmailChanged,
  FormMessageChanged, FormNameChanged, FormSubmitted, FormValidation, Forms,
  HeatmapAnimTick, HeatmapCanvasCellClicked, HeatmapCanvasHoverLeft,
  HeatmapCanvasHovered, HeatmapCellPxChanged, HeatmapComparison,
  HeatmapPaintEnded, HeatmapPaintStarted, HeatmapRandomize, HeatmapSchemeChanged,
  HeatmapSizeChanged, HeatmapSvgCellClicked, HeatmapSvgHoverLeft,
  HeatmapSvgHovered, Home, HoverCardClosed, HoverCardOpened, HoverCards,
  InputGroups, InputOtpChanged, InputOtps, Inputs, Items, MenubarClosed,
  MenubarOpened, Menubars, Model, MonacoEditor, MultiselectChanged, Multiselects,
  NativeSelectChanged, NativeSelects, NavMenuOpenChanged, NavigationBars,
  NavigationMenus, OnRouteChange, OpenDialog, PaginationChanged, Paginations,
  PopoverClosed, Popovers, Progresses, RadioGroups, RatingChanged, Ratings,
  ResizableSizesChanged, Resizables, ScrollAreas, SearchQueryChanged, Searches,
  SelectChanged, Selects, Separators, SheetClosed, SheetOpened, Sheets,
  SidebarCollapsedToggled, SidebarToggled, Sidebars, SignupConfirmChanged,
  SignupEmailChanged, SignupNameChanged, SignupPasswordChanged, SignupReset,
  SignupSubmitted, Skeletons, SliderChanged, Sliders, Spinners, StartedTrial,
  StepperStepClicked, Steppers, StressBarClicked, StressOffsetChanged,
  StressZoomChanged, SwitchToggled, Switches, SystemOsDarkChanged, TabChanged,
  Tables, Tabs, ThemeToggled, ThreatEntityDeselected, ThreatEntitySelected,
  ThreatFiltersCleared, ThreatGraphPanned, ThreatGraphZoomed, ThreatIntelNetwork,
  ThreatIntelRouteEntered, ThreatLayoutReceived, ThreatMapCountryClicked,
  ThreatNodeHovered, ThreatSearchChanged, ThreatSearchCleared,
  ThreatSeverityFilterChanged, ThreatTablePageChanged, ThreatTableRowSelected,
  ThreatTableSortChanged, ThreatTimelineEntityChanged, TimePickerChanged,
  TimePickers, Timelines, Toasts, ToggleBoldChanged, ToggleDropdown,
  ToggleGroupChanged, ToggleGroups, ToggleItalicChanged, Toggles, Tooltips,
  TreeNodeToggled, TreeViews, WidgetDashboard,
}
import saola/preview/view

pub fn main() {
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre.start(app, "#app", Nil)

  Nil
}

fn init(_args) -> #(Model, Effect(Message)) {
  let whatnext = case modem.initial_uri() {
    Ok(uri) -> {
      use dispatch <- effect.from
      dispatch(on_url_change(uri))
    }
    Error(_) -> effect.none()
  }
  #(
    Model(
      route: Home,
      open_dropdown: None,
      active_tab: "account",
      is_dialog_open: False,
      toasts: [],
      form_name: "",
      form_email: "",
      form_message: "",
      form_submitted_values: [],
      switch_notifications: True,
      switch_marketing: False,
      slider_volume: 60,
      slider_brightness: 80,
      select_fruit: "apple",
      select_timezone: "asia/ho_chi_minh",
      accordion_open: [],
      toggle_group_selected: [],
      pagination_page: 1,
      collapsible_open: False,
      popover_open: False,
      alert_dialog_open: False,
      hover_card_open: False,
      input_otp_value: "",
      sheet_open: False,
      menubar_open: "",
      toggle_bold: False,
      toggle_italic: False,
      calendar_selected: None,
      calendar_view_year: 2026,
      calendar_view_month: calendar.May,
      date_picker_selected: None,
      date_picker_open: False,
      date_picker_view_year: 2026,
      date_picker_view_month: calendar.May,
      native_select_value: "apple",
      context_menu_open: False,
      context_menu_x: 0,
      context_menu_y: 0,
      drawer_open: False,
      sidebar_open: True,
      sidebar_collapsed: False,
      command_query: "",
      command_highlighted: -1,
      resizable_sizes: [30.0, 70.0],
      data_table_state: data_table.default_state,
      carousel_index: 0,
      carousel_can_prev: False,
      carousel_can_next: True,
      combobox_value: None,
      combobox_query: "",
      combobox_open: False,
      nav_menu_open: None,
      theme: theme.Light,
      system_os_dark: theme.get_system_dark(),
      signup_name: "",
      signup_email: "",
      signup_password: "",
      signup_confirm: "",
      signup_errors: dict.new(),
      signup_success: False,
      search_query: "",
      rating_value: 3,
      stepper_step: 1,
      tree_open_ids: [],
      time_picker_value: None,
      multiselect_values: [],
      stress_offset: 0,
      stress_zoom: 50,
      stress_selected: None,
      dash_search: "",
      dash_page: 1,
      dash_drawer_open: False,
      dash_selected_id: None,
      threat_selected_ids: [],
      threat_severity_filter: [],
      threat_search: "",
      threat_map_country_filter: None,
      threat_graph_positions: [],
      threat_graph_layout_done: False,
      threat_graph_pan: #(0.0, 0.0),
      threat_graph_zoom: 1.0,
      threat_graph_hovered: None,
      threat_table_state: data_table.default_state,
      threat_timeline_entity: None,
      heatmap_size: 80,
      heatmap_cell_px: 6,
      heatmap_scheme: "blues",
      heatmap_seed: 0,
      heatmap_anim_time: 0.0,
      heatmap_last_ts: 0.0,
      heatmap_painted: dict.new(),
      heatmap_painting: False,
      heatmap_ripple_count: 0,
      heatmap_svg_ripple: None,
      heatmap_canvas_ripple: None,
      heatmap_svg_hover: None,
      heatmap_canvas_hover: None,
    ),
    effect.batch([
      modem.init(on_url_change),
      whatnext,
      theme.watch_system_dark(True, SystemOsDarkChanged),
      theme.apply_to_html(theme.Light, theme.get_system_dark()),
    ]),
  )
}

fn on_url_change(uri: Uri) -> Message {
  let route = case uri.path {
    "/alerts" -> Alerts
    "/badges" -> Badges
    "/cards" -> Cards
    "/buttons" -> Buttons
    "/inputs" -> Inputs
    "/forms" -> Forms
    "/dropdown-menus" -> DropdownMenus
    "/tabs" -> Tabs
    "/dialogs" -> Dialogs
    "/tables" -> Tables
    "/toasts" -> Toasts
    "/d3-charts" -> D3Charts
    "/monaco-editor" -> MonacoEditor
    "/example-form" -> ExampleForm
    "/example-site" -> ExampleSite
    "/separators" -> Separators
    "/tooltips" -> Tooltips
    "/switches" -> Switches
    "/sliders" -> Sliders
    "/selects" -> Selects
    "/fields" -> Fields
    "/accordions" -> Accordions
    "/progress" -> Progresses
    "/skeletons" -> Skeletons
    "/avatars" -> Avatars
    "/radio-groups" -> RadioGroups
    "/toggles" -> Toggles
    "/toggle-groups" -> ToggleGroups
    "/breadcrumbs" -> Breadcrumbs
    "/paginations" -> Paginations
    "/scroll-areas" -> ScrollAreas
    "/aspect-ratios" -> AspectRatios
    "/collapsibles" -> Collapsibles
    "/popovers" -> Popovers
    "/alert-dialogs" -> AlertDialogs
    "/hover-cards" -> HoverCards
    "/input-otps" -> InputOtps
    "/sheets" -> Sheets
    "/menubars" -> Menubars
    "/calendars" -> Calendars
    "/date-pickers" -> DatePickers
    "/spinners" -> Spinners
    "/native-selects" -> NativeSelects
    "/button-groups" -> ButtonGroups
    "/input-groups" -> InputGroups
    "/context-menus" -> ContextMenus
    "/drawers" -> Drawers
    "/sidebars" -> Sidebars
    "/commands" -> Commands
    "/resizables" -> Resizables
    "/data-tables" -> DataTables
    "/carousels" -> Carousels
    "/comboboxes" -> Comboboxes
    "/navigation-menus" -> NavigationMenus
    "/empties" -> Empties
    "/items" -> Items
    "/form-validation" -> FormValidation
    "/searches" -> Searches
    "/ratings" -> Ratings
    "/navigation-bars" -> NavigationBars
    "/steppers" -> Steppers
    "/tree-views" -> TreeViews
    "/time-pickers" -> TimePickers
    "/multiselects" -> Multiselects
    "/timelines" -> Timelines
    "/canvas-stress-test" -> CanvasStressTest
    "/widget-dashboard" -> WidgetDashboard
    "/heatmap-comparison" -> HeatmapComparison
    "/threat-intel-network" -> ThreatIntelNetwork
    _ -> Home
  }
  OnRouteChange(route)
}

fn update(model: Model, msg: Message) -> #(Model, Effect(Message)) {
  case msg {
    OnRouteChange(route) -> {
      let eff = case route {
        HeatmapComparison -> effect.from(heatmap_anim_tick_effect)
        ThreatIntelNetwork ->
          effect.from(fn(dispatch) { dispatch(ThreatIntelRouteEntered) })
        _ -> effect.none()
      }
      #(Model(..model, route: route, heatmap_last_ts: 0.0), eff)
    }
    ToggleDropdown(id) -> {
      let new_open = case model.open_dropdown {
        Some(current) if current == id -> None
        _ -> Some(id)
      }
      #(Model(..model, open_dropdown: new_open), effect.none())
    }
    TabChanged(id) -> #(Model(..model, active_tab: id), effect.none())
    OpenDialog -> #(Model(..model, is_dialog_open: True), effect.none())
    CloseDialog -> #(Model(..model, is_dialog_open: False), effect.none())
    AddToast(toast) -> #(
      Model(..model, toasts: list.append(model.toasts, [toast])),
      effect.none(),
    )
    DismissToast(id) -> #(
      Model(..model, toasts: list.filter(model.toasts, fn(t) { t.id != id })),
      effect.none(),
    )
    FormNameChanged(name) -> #(Model(..model, form_name: name), effect.none())
    FormEmailChanged(email) -> #(
      Model(..model, form_email: email),
      effect.none(),
    )
    FormMessageChanged(message) -> #(
      Model(..model, form_message: message),
      effect.none(),
    )
    FormSubmitted(values) -> #(
      Model(..model, form_submitted_values: values),
      effect.none(),
    )
    StartedTrial -> #(model, effect.none())
    SwitchToggled(id, value) ->
      case id {
        "notifications" -> #(
          Model(..model, switch_notifications: value),
          effect.none(),
        )
        "marketing" -> #(Model(..model, switch_marketing: value), effect.none())
        _ -> #(model, effect.none())
      }
    SliderChanged(id, value) -> {
      let n = int.parse(value) |> result_unwrap(0)
      case id {
        "volume" -> #(Model(..model, slider_volume: n), effect.none())
        "brightness" -> #(Model(..model, slider_brightness: n), effect.none())
        _ -> #(model, effect.none())
      }
    }
    SelectChanged(id, value) ->
      case id {
        "fruit" -> #(Model(..model, select_fruit: value), effect.none())
        "timezone" -> #(Model(..model, select_timezone: value), effect.none())
        _ -> #(model, effect.none())
      }
    AccordionToggled(id) -> {
      let open = case list.contains(model.accordion_open, id) {
        True -> list.filter(model.accordion_open, fn(x) { x != id })
        False -> [id, ..model.accordion_open]
      }
      #(Model(..model, accordion_open: open), effect.none())
    }
    ToggleGroupChanged(selected) -> #(
      Model(..model, toggle_group_selected: selected),
      effect.none(),
    )
    PaginationChanged(page) -> #(
      Model(..model, pagination_page: page),
      effect.none(),
    )
    CollapsibleToggled -> #(
      Model(..model, collapsible_open: !model.collapsible_open),
      effect.none(),
    )
    PopoverClosed -> #(Model(..model, popover_open: False), effect.none())
    AlertDialogOpened -> #(
      Model(..model, alert_dialog_open: True),
      effect.none(),
    )
    AlertDialogConfirmed -> #(
      Model(..model, alert_dialog_open: False),
      effect.none(),
    )
    AlertDialogCancelled -> #(
      Model(..model, alert_dialog_open: False),
      effect.none(),
    )
    HoverCardOpened -> #(Model(..model, hover_card_open: True), effect.none())
    HoverCardClosed -> #(Model(..model, hover_card_open: False), effect.none())
    InputOtpChanged(val) -> #(
      Model(..model, input_otp_value: val),
      effect.none(),
    )
    SheetOpened -> #(Model(..model, sheet_open: True), effect.none())
    SheetClosed -> #(Model(..model, sheet_open: False), effect.none())
    MenubarOpened(menu) -> #(Model(..model, menubar_open: menu), effect.none())
    MenubarClosed -> #(Model(..model, menubar_open: ""), effect.none())
    ToggleBoldChanged(val) -> #(Model(..model, toggle_bold: val), effect.none())
    ToggleItalicChanged(val) -> #(
      Model(..model, toggle_italic: val),
      effect.none(),
    )
    CalendarDateSelected(date) -> #(
      Model(..model, calendar_selected: Some(date)),
      effect.none(),
    )
    CalendarMonthChanged(year, month) -> #(
      Model(..model, calendar_view_year: year, calendar_view_month: month),
      effect.none(),
    )
    DatePickerDateSelected(date) -> #(
      Model(..model, date_picker_selected: Some(date), date_picker_open: False),
      effect.none(),
    )
    DatePickerMonthChanged(year, month) -> #(
      Model(..model, date_picker_view_year: year, date_picker_view_month: month),
      effect.none(),
    )
    DatePickerOpenChanged(open) -> #(
      Model(..model, date_picker_open: open),
      effect.none(),
    )
    NativeSelectChanged(val) -> #(
      Model(..model, native_select_value: val),
      effect.none(),
    )
    ContextMenuOpened(x, y) -> #(
      Model(
        ..model,
        context_menu_open: True,
        context_menu_x: x,
        context_menu_y: y,
      ),
      effect.none(),
    )
    ContextMenuClosed -> #(
      Model(..model, context_menu_open: False),
      effect.none(),
    )
    DrawerOpened -> #(Model(..model, drawer_open: True), effect.none())
    DrawerClosed -> #(Model(..model, drawer_open: False), effect.none())
    SidebarToggled -> #(
      Model(..model, sidebar_open: !model.sidebar_open),
      effect.none(),
    )
    SidebarCollapsedToggled -> #(
      Model(..model, sidebar_collapsed: !model.sidebar_collapsed),
      effect.none(),
    )
    CommandQueryChanged(q) -> #(
      Model(..model, command_query: q, command_highlighted: -1),
      effect.none(),
    )
    CommandNavUp -> #(
      Model(..model, command_highlighted: model.command_highlighted - 1),
      effect.none(),
    )
    CommandNavDown -> #(
      Model(..model, command_highlighted: model.command_highlighted + 1),
      effect.none(),
    )
    CommandSelected(_) -> #(
      Model(..model, command_query: "", command_highlighted: -1),
      effect.none(),
    )
    ResizableSizesChanged(sizes) -> #(
      Model(..model, resizable_sizes: sizes),
      effect.none(),
    )
    DataTableSortChanged(key) -> #(
      Model(
        ..model,
        data_table_state: data_table.toggle_sort(model.data_table_state, key),
      ),
      effect.none(),
    )
    DataTableFilterChanged(q) -> #(
      Model(
        ..model,
        data_table_state: data_table.set_filter(model.data_table_state, q),
      ),
      effect.none(),
    )
    DataTablePageChanged(p) -> #(
      Model(
        ..model,
        data_table_state: data_table.set_page(model.data_table_state, p),
      ),
      effect.none(),
    )
    DataTableSelectChanged(ids) -> #(
      Model(
        ..model,
        data_table_state: data_table.DataTableState(
          ..model.data_table_state,
          selected: ids,
        ),
      ),
      effect.none(),
    )
    CarouselChanged(idx, can_prev, can_next) -> #(
      Model(
        ..model,
        carousel_index: idx,
        carousel_can_prev: can_prev,
        carousel_can_next: can_next,
      ),
      effect.none(),
    )
    ComboboxOpenChanged(open) -> #(
      Model(..model, combobox_open: open),
      effect.none(),
    )
    ComboboxQueryChanged(q) -> #(
      Model(..model, combobox_query: q),
      effect.none(),
    )
    ComboboxSelected(val) -> #(
      Model(..model, combobox_value: Some(val), combobox_open: False),
      effect.none(),
    )
    NavMenuOpenChanged(id) -> #(
      Model(..model, nav_menu_open: id),
      effect.none(),
    )
    ThemeToggled(t) -> #(
      Model(..model, theme: t),
      theme.apply_to_html(t, model.system_os_dark),
    )
    SystemOsDarkChanged(is_dark) -> #(
      Model(..model, system_os_dark: is_dark),
      theme.apply_to_html(model.theme, is_dark),
    )
    SignupNameChanged(v) -> #(Model(..model, signup_name: v), effect.none())
    SignupEmailChanged(v) -> #(Model(..model, signup_email: v), effect.none())
    SignupPasswordChanged(v) -> #(
      Model(..model, signup_password: v),
      effect.none(),
    )
    SignupConfirmChanged(v) -> #(
      Model(..model, signup_confirm: v),
      effect.none(),
    )
    SignupReset -> #(
      Model(
        ..model,
        signup_name: "",
        signup_email: "",
        signup_password: "",
        signup_confirm: "",
        signup_errors: dict.new(),
        signup_success: False,
      ),
      effect.none(),
    )
    SearchQueryChanged(q) -> #(Model(..model, search_query: q), effect.none())
    RatingChanged(v) -> #(Model(..model, rating_value: v), effect.none())
    StepperStepClicked(s) -> #(Model(..model, stepper_step: s), effect.none())
    TreeNodeToggled(id) -> {
      let open = case list.contains(model.tree_open_ids, id) {
        True -> list.filter(model.tree_open_ids, fn(x) { x != id })
        False -> [id, ..model.tree_open_ids]
      }
      #(Model(..model, tree_open_ids: open), effect.none())
    }
    TimePickerChanged(tv) -> #(
      Model(..model, time_picker_value: Some(tv)),
      effect.none(),
    )
    MultiselectChanged(vals) -> #(
      Model(..model, multiselect_values: vals),
      effect.none(),
    )
    StressOffsetChanged(n) -> #(
      Model(..model, stress_offset: int.max(0, n)),
      effect.none(),
    )
    StressZoomChanged(n) -> #(
      Model(..model, stress_zoom: int.clamp(n, min: 10, max: 500)),
      effect.none(),
    )
    StressBarClicked(info) -> #(
      Model(..model, stress_selected: case info {
        "" -> None
        s -> Some(s)
      }),
      effect.none(),
    )
    DashSearchChanged(q) -> #(
      Model(..model, dash_search: q, dash_page: 1),
      effect.none(),
    )
    DashPageChanged(p) -> #(Model(..model, dash_page: p), effect.none())
    DashRowClicked(id) -> #(
      Model(..model, dash_selected_id: Some(id), dash_drawer_open: True),
      effect.none(),
    )
    DashDrawerClosed -> #(
      Model(..model, dash_drawer_open: False),
      effect.none(),
    )
    HeatmapSizeChanged(n) -> #(
      Model(
        ..model,
        heatmap_size: int.clamp(n, min: 10, max: 200),
        heatmap_painted: dict.new(),
        heatmap_svg_ripple: None,
        heatmap_canvas_ripple: None,
      ),
      effect.none(),
    )
    HeatmapCellPxChanged(n) -> #(
      Model(..model, heatmap_cell_px: int.clamp(n, min: 2, max: 20)),
      effect.none(),
    )
    HeatmapSchemeChanged(s) -> #(
      Model(..model, heatmap_scheme: s),
      effect.none(),
    )
    HeatmapRandomize -> #(
      Model(
        ..model,
        heatmap_seed: model.heatmap_seed + 1,
        heatmap_painted: dict.new(),
        heatmap_painting: False,
        heatmap_svg_ripple: None,
        heatmap_canvas_ripple: None,
        heatmap_svg_hover: None,
        heatmap_canvas_hover: None,
      ),
      effect.none(),
    )
    HeatmapSvgHovered(mx, my) -> {
      let cell_px = int.to_float(model.heatmap_cell_px)
      let col =
        int.clamp(
          float.truncate(mx /. cell_px),
          min: 0,
          max: model.heatmap_size - 1,
        )
      let row =
        int.clamp(
          float.truncate(my /. cell_px),
          min: 0,
          max: model.heatmap_size - 1,
        )
      let dv = lustre_heatmap.cell_display_value(row, col, model.heatmap_seed)
      let painted = case model.heatmap_painting {
        True -> heatmap_add_painted(model.heatmap_painted, row, col)
        False -> model.heatmap_painted
      }
      #(
        Model(
          ..model,
          heatmap_svg_hover: Some(#(row, col, dv, mx, my)),
          heatmap_painted: painted,
        ),
        effect.none(),
      )
    }
    HeatmapSvgHoverLeft -> #(
      Model(..model, heatmap_svg_hover: None, heatmap_painting: False),
      effect.none(),
    )
    HeatmapCanvasHovered(mx, my) -> {
      let cell_px = int.to_float(model.heatmap_cell_px)
      let col =
        int.clamp(
          float.truncate(mx /. cell_px),
          min: 0,
          max: model.heatmap_size - 1,
        )
      let row =
        int.clamp(
          float.truncate(my /. cell_px),
          min: 0,
          max: model.heatmap_size - 1,
        )
      let dv = lustre_heatmap.cell_display_value(row, col, model.heatmap_seed)
      let painted = case model.heatmap_painting {
        True -> heatmap_add_painted(model.heatmap_painted, row, col)
        False -> model.heatmap_painted
      }
      #(
        Model(
          ..model,
          heatmap_canvas_hover: Some(#(row, col, dv, mx, my)),
          heatmap_painted: painted,
        ),
        effect.none(),
      )
    }
    HeatmapCanvasHoverLeft -> #(
      Model(..model, heatmap_canvas_hover: None, heatmap_painting: False),
      effect.none(),
    )
    HeatmapSvgCellClicked(row, col) -> {
      let count = model.heatmap_ripple_count + 1
      #(
        Model(
          ..model,
          heatmap_painted: heatmap_toggle_painted(
            model.heatmap_painted,
            row,
            col,
          ),
          heatmap_ripple_count: count,
          heatmap_svg_ripple: Some(#(row, col, count)),
          heatmap_canvas_ripple: Some(#(row, col, count)),
        ),
        effect.none(),
      )
    }
    HeatmapCanvasCellClicked(row, col) -> {
      let count = model.heatmap_ripple_count + 1
      #(
        Model(
          ..model,
          heatmap_painted: heatmap_toggle_painted(
            model.heatmap_painted,
            row,
            col,
          ),
          heatmap_ripple_count: count,
          heatmap_svg_ripple: Some(#(row, col, count)),
          heatmap_canvas_ripple: Some(#(row, col, count)),
        ),
        effect.none(),
      )
    }
    HeatmapPaintStarted(row, col) -> #(
      Model(
        ..model,
        heatmap_painting: True,
        heatmap_painted: heatmap_add_painted(model.heatmap_painted, row, col),
      ),
      effect.none(),
    )
    HeatmapPaintEnded -> #(
      Model(..model, heatmap_painting: False),
      effect.none(),
    )
    HeatmapAnimTick(ts) -> {
      let dt = case model.heatmap_last_ts {
        0.0 -> 0.0
        prev -> float.min({ ts -. prev } /. 1000.0, 0.1)
      }
      let new_time = model.heatmap_anim_time +. dt
      let eff = case model.route {
        HeatmapComparison -> effect.from(heatmap_anim_tick_effect)
        _ -> effect.none()
      }
      #(Model(..model, heatmap_anim_time: new_time, heatmap_last_ts: ts), eff)
    }
    ThreatIntelRouteEntered -> {
      let nodes =
        list.map(threat_intel_data.all_actors(), fn(actor) {
          graph_layout.LayoutNode(id: actor.id)
        })
      let edges =
        list.map(threat_intel_data.all_edges(), fn(edge) {
          graph_layout.LayoutEdge(source: edge.source, target: edge.target)
        })
      #(model, graph_layout.request_layout(nodes, edges, ThreatLayoutReceived))
    }
    ThreatLayoutReceived(result) -> #(
      Model(
        ..model,
        threat_graph_positions: result.positions,
        threat_graph_layout_done: True,
      ),
      effect.none(),
    )
    ThreatEntitySelected(id) -> {
      let new_ids = case list.contains(model.threat_selected_ids, id) {
        True -> []
        False -> [id]
      }
      let new_toast = toast.new_toast_simple("Entity selected", id, toast.Info)
      let new_toasts = case new_ids {
        [] -> model.toasts
        _ -> list.append(model.toasts, [new_toast])
      }
      #(
        Model(
          ..model,
          threat_selected_ids: new_ids,
          threat_timeline_entity: case new_ids {
            [] -> None
            _ -> Some(id)
          },
          threat_table_state: data_table.DataTableState(
            ..model.threat_table_state,
            selected: new_ids,
          ),
          toasts: new_toasts,
        ),
        effect.none(),
      )
    }
    ThreatEntityDeselected -> #(
      Model(
        ..model,
        threat_selected_ids: [],
        threat_timeline_entity: None,
        threat_table_state: data_table.DataTableState(
          ..model.threat_table_state,
          selected: [],
        ),
      ),
      effect.none(),
    )
    ThreatNodeHovered(opt_id) -> #(
      Model(..model, threat_graph_hovered: opt_id),
      effect.none(),
    )
    ThreatSeverityFilterChanged(values) -> #(
      Model(..model, threat_severity_filter: values),
      effect.none(),
    )
    ThreatSearchChanged(q) -> #(
      Model(
        ..model,
        threat_search: q,
        threat_table_state: data_table.set_filter(model.threat_table_state, q),
      ),
      effect.none(),
    )
    ThreatSearchCleared -> #(
      Model(
        ..model,
        threat_search: "",
        threat_table_state: data_table.set_filter(model.threat_table_state, ""),
      ),
      effect.none(),
    )
    ThreatGraphPanned(dx, dy) -> {
      let #(px, py) = model.threat_graph_pan
      #(Model(..model, threat_graph_pan: #(px +. dx, py +. dy)), effect.none())
    }
    ThreatGraphZoomed(delta) -> {
      let new_zoom =
        float.clamp(
          model.threat_graph_zoom *. { 1.0 -. delta /. 500.0 },
          0.3,
          3.0,
        )
      #(Model(..model, threat_graph_zoom: new_zoom), effect.none())
    }
    ThreatTableSortChanged(key) -> #(
      Model(
        ..model,
        threat_table_state: data_table.toggle_sort(
          model.threat_table_state,
          key,
        ),
      ),
      effect.none(),
    )
    ThreatTablePageChanged(page) -> #(
      Model(
        ..model,
        threat_table_state: data_table.set_page(model.threat_table_state, page),
      ),
      effect.none(),
    )
    ThreatTableRowSelected(ids) -> {
      let new_entity = case ids {
        [] -> None
        [id, ..] -> Some(id)
      }
      #(
        Model(
          ..model,
          threat_selected_ids: ids,
          threat_timeline_entity: new_entity,
          threat_table_state: data_table.DataTableState(
            ..model.threat_table_state,
            selected: ids,
          ),
        ),
        effect.none(),
      )
    }
    ThreatTimelineEntityChanged(opt) -> #(
      Model(..model, threat_timeline_entity: opt),
      effect.none(),
    )
    ThreatFiltersCleared -> #(
      Model(
        ..model,
        threat_severity_filter: [],
        threat_search: "",
        threat_selected_ids: [],
        threat_timeline_entity: None,
        threat_map_country_filter: None,
        threat_table_state: data_table.DataTableState(
          ..data_table.set_filter(model.threat_table_state, ""),
          selected: [],
        ),
      ),
      effect.none(),
    )
    ThreatMapCountryClicked(country) -> #(
      Model(
        ..model,
        threat_map_country_filter: case model.threat_map_country_filter {
          Some(c) if c == country -> None
          _ -> Some(country)
        },
        threat_selected_ids: [],
        threat_timeline_entity: None,
        threat_table_state: data_table.DataTableState(
          ..model.threat_table_state,
          selected: [],
        ),
      ),
      effect.none(),
    )
    SignupSubmitted -> {
      let values = [
        #("name", model.signup_name),
        #("email", model.signup_email),
        #("password", model.signup_password),
        #("confirm", model.signup_confirm),
      ]
      let schema = {
        use _name <- formlib.field(
          "name",
          formlib.parse_string |> formlib.check_not_empty,
        )
        use _email <- formlib.field("email", formlib.parse_email)
        use password <- formlib.field(
          "password",
          formlib.parse_string |> formlib.check_string_length_more_than(7),
        )
        use _confirm <- formlib.field(
          "confirm",
          formlib.parse_string |> formlib.check_confirms(password),
        )
        formlib.success(Nil)
      }
      case formlib.new(schema) |> formlib.add_values(values) |> formlib.run {
        Ok(_) -> #(
          Model(..model, signup_success: True, signup_errors: dict.new()),
          effect.none(),
        )
        Error(failed_form) -> {
          let errors =
            list.fold(
              ["name", "email", "password", "confirm"],
              dict.new(),
              fn(acc, name) {
                case formlib.field_error_messages(failed_form, name) {
                  [] -> acc
                  [msg, ..] -> dict.insert(acc, name, msg)
                }
              },
            )
          #(
            Model(..model, signup_errors: errors, signup_success: False),
            effect.none(),
          )
        }
      }
    }
  }
}

fn heatmap_anim_tick_effect(dispatch: fn(Message) -> Nil) -> Nil {
  canvas.request_animation_frame(fn(ts) { dispatch(HeatmapAnimTick(ts)) })
}

fn heatmap_add_painted(
  painted: dict.Dict(String, Bool),
  row: Int,
  col: Int,
) -> dict.Dict(String, Bool) {
  dict.insert(painted, lustre_heatmap.paint_key(row, col), True)
}

fn heatmap_toggle_painted(
  painted: dict.Dict(String, Bool),
  row: Int,
  col: Int,
) -> dict.Dict(String, Bool) {
  let key = lustre_heatmap.paint_key(row, col)
  case dict.has_key(painted, key) {
    True -> dict.delete(painted, key)
    False -> dict.insert(painted, key, True)
  }
}

fn result_unwrap(r: Result(a, e), default: a) -> a {
  case r {
    Ok(v) -> v
    Error(_) -> default
  }
}

fn view(model: Model) -> Element(Message) {
  h.div([a.class("app-container")], [
    sidebar(model.route, model.theme),
    main_pane(model),
  ])
}

fn sidebar(
  current_route: model.Route,
  current_theme: theme.Theme,
) -> Element(Message) {
  h.div([a.class("sidebar")], [
    h.h2([a.class("sidebar-title")], [element.text("UI Showcase")]),
    h.div([a.class("theme-toggle")], [
      h.button(
        [
          a.type_("button"),
          a.class(
            "nav-link"
            <> case current_theme {
              theme.Light -> " active"
              _ -> ""
            },
          ),
          e.on_click(ThemeToggled(theme.Light)),
        ],
        [element.text("Light")],
      ),
      h.button(
        [
          a.type_("button"),
          a.class(
            "nav-link"
            <> case current_theme {
              theme.Dark -> " active"
              _ -> ""
            },
          ),
          e.on_click(ThemeToggled(theme.Dark)),
        ],
        [element.text("Dark")],
      ),
      h.button(
        [
          a.type_("button"),
          a.class(
            "nav-link"
            <> case current_theme {
              theme.System -> " active"
              _ -> ""
            },
          ),
          e.on_click(ThemeToggled(theme.System)),
        ],
        [element.text("System")],
      ),
    ]),
    nav_link("/alerts", "Alerts", current_route == Alerts),
    nav_link("/badges", "Badges", current_route == Badges),
    nav_link("/cards", "Cards", current_route == Cards),
    nav_link("/buttons", "Buttons", current_route == Buttons),
    nav_link("/inputs", "Inputs", current_route == Inputs),
    nav_link("/forms", "Forms", current_route == Forms),
    nav_link("/separators", "Separator", current_route == Separators),
    nav_link("/tooltips", "Tooltip", current_route == Tooltips),
    nav_link("/switches", "Switch", current_route == Switches),
    nav_link("/sliders", "Slider", current_route == Sliders),
    nav_link("/selects", "Select", current_route == Selects),
    nav_link("/fields", "Field", current_route == Fields),
    nav_link("/accordions", "Accordion", current_route == Accordions),
    nav_link("/progress", "Progress", current_route == Progresses),
    nav_link("/skeletons", "Skeleton", current_route == Skeletons),
    nav_link("/avatars", "Avatar", current_route == Avatars),
    nav_link("/radio-groups", "Radio Group", current_route == RadioGroups),
    nav_link("/toggles", "Toggle", current_route == Toggles),
    nav_link("/toggle-groups", "Toggle Group", current_route == ToggleGroups),
    nav_link("/breadcrumbs", "Breadcrumb", current_route == Breadcrumbs),
    nav_link("/paginations", "Pagination", current_route == Paginations),
    nav_link("/scroll-areas", "Scroll Area", current_route == ScrollAreas),
    nav_link("/aspect-ratios", "Aspect Ratio", current_route == AspectRatios),
    nav_link("/collapsibles", "Collapsible", current_route == Collapsibles),
    nav_link("/popovers", "Popover", current_route == Popovers),
    nav_link("/alert-dialogs", "Alert Dialog", current_route == AlertDialogs),
    nav_link("/hover-cards", "Hover Card", current_route == HoverCards),
    nav_link("/input-otps", "Input OTP", current_route == InputOtps),
    nav_link("/sheets", "Sheet", current_route == Sheets),
    nav_link("/menubars", "Menubar", current_route == Menubars),
    nav_link("/calendars", "Calendar", current_route == Calendars),
    nav_link("/date-pickers", "Date Picker", current_route == DatePickers),
    nav_link("/spinners", "Spinner", current_route == Spinners),
    nav_link("/native-selects", "Native Select", current_route == NativeSelects),
    nav_link("/button-groups", "Button Group", current_route == ButtonGroups),
    nav_link("/input-groups", "Input Group", current_route == InputGroups),
    nav_link("/context-menus", "Context Menu", current_route == ContextMenus),
    nav_link("/drawers", "Drawer", current_route == Drawers),
    nav_link("/sidebars", "Sidebar", current_route == Sidebars),
    nav_link("/commands", "Command", current_route == Commands),
    nav_link("/resizables", "Resizable", current_route == Resizables),
    nav_link("/data-tables", "Data Table", current_route == DataTables),
    nav_link("/carousels", "Carousel", current_route == Carousels),
    nav_link("/comboboxes", "Combobox", current_route == Comboboxes),
    nav_link(
      "/navigation-menus",
      "Navigation Menu",
      current_route == NavigationMenus,
    ),
    nav_link("/empties", "Empty", current_route == Empties),
    nav_link("/items", "Item", current_route == Items),
    nav_link(
      "/form-validation",
      "Form Validation",
      current_route == FormValidation,
    ),
    nav_link("/searches", "Search", current_route == Searches),
    nav_link("/ratings", "Rating", current_route == Ratings),
    nav_link(
      "/navigation-bars",
      "Navigation Bar",
      current_route == NavigationBars,
    ),
    nav_link("/steppers", "Stepper", current_route == Steppers),
    nav_link("/tree-views", "Tree View", current_route == TreeViews),
    nav_link("/time-pickers", "Time Picker", current_route == TimePickers),
    nav_link("/multiselects", "Multiselect", current_route == Multiselects),
    nav_link("/timelines", "Timeline", current_route == Timelines),
    nav_link(
      "/canvas-stress-test",
      "Canvas Stress Test",
      current_route == CanvasStressTest,
    ),
    nav_link(
      "/widget-dashboard",
      "Widget Dashboard",
      current_route == WidgetDashboard,
    ),
    nav_link(
      "/heatmap-comparison",
      "Heatmap SVG vs Canvas",
      current_route == HeatmapComparison,
    ),
    nav_link(
      "/threat-intel-network",
      "Threat Intel Network",
      current_route == ThreatIntelNetwork,
    ),
    nav_link(
      "/dropdown-menus",
      "Dropdown Menus",
      current_route == DropdownMenus,
    ),
    nav_link("/tabs", "Tabs", current_route == Tabs),
    nav_link("/dialogs", "Dialogs", current_route == Dialogs),
    nav_link("/tables", "Tables", current_route == Tables),
    nav_link("/toasts", "Toasts", current_route == Toasts),
    nav_link("/d3-charts", "D3 Charts", current_route == D3Charts),
    nav_link("/monaco-editor", "Code Editor", current_route == MonacoEditor),
    nav_link("/example-form", "Example Form", current_route == ExampleForm),
    nav_link("/example-site", "Example Site", current_route == ExampleSite),
  ])
}

fn nav_link(path: String, label: String, is_active: Bool) -> Element(Message) {
  let active_class = case is_active {
    True -> " active"
    False -> ""
  }
  h.a([a.href(path), a.class("nav-link" <> active_class)], [element.text(label)])
}

fn main_pane(model: Model) -> Element(Message) {
  h.div([a.class("main-pane")], [
    case model.route {
      Home -> h.div([], [element.text("Select a widget category to preview.")])
      Alerts -> view.view_alerts()
      Badges -> view.view_badges()
      Cards -> view.view_cards()
      Buttons -> view.view_buttons()
      Inputs -> view.view_inputs()
      Forms -> view.view_forms()
      Separators -> view.view_separators()
      Tooltips -> view.view_tooltips()
      Switches -> view.view_switches(model)
      Sliders -> view.view_sliders(model)
      Selects -> view.view_selects(model)
      Fields -> view.view_fields(model)
      DropdownMenus -> view.view_dropdown_menus(model)
      Tabs -> view.view_tabs(model)
      Dialogs -> view.view_dialogs(model)
      Tables -> view.view_tables()
      Toasts -> view.view_toasts(model)
      Accordions -> view.view_accordions(model)
      Progresses -> view.view_progresses()
      Skeletons -> view.view_skeletons()
      Avatars -> view.view_avatars()
      RadioGroups -> view.view_radio_groups(model)
      Toggles -> view.view_toggles(model)
      ToggleGroups -> view.view_toggle_groups(model)
      Breadcrumbs -> view.view_breadcrumbs()
      Paginations -> view.view_paginations(model)
      ScrollAreas -> view.view_scroll_areas()
      AspectRatios -> view.view_aspect_ratios()
      Collapsibles -> view.view_collapsibles(model)
      Popovers -> view.view_popovers(model)
      AlertDialogs -> view.view_alert_dialogs(model)
      HoverCards -> view.view_hover_cards(model)
      InputOtps -> view.view_input_otps(model)
      Sheets -> view.view_sheets(model)
      Menubars -> view.view_menubars(model)
      Calendars -> view.view_calendars(model)
      DatePickers -> view.view_date_pickers(model)
      Spinners -> view.view_spinners()
      NativeSelects -> view.view_native_selects(model)
      ButtonGroups -> view.view_button_groups()
      InputGroups -> view.view_input_groups()
      ContextMenus -> view.view_context_menus(model)
      Drawers -> view.view_drawers(model)
      Sidebars -> view.view_sidebars(model)
      Commands -> view.view_commands(model)
      Resizables -> view.view_resizables(model)
      DataTables -> view.view_data_tables(model)
      Carousels -> view.view_carousels(model)
      Comboboxes -> view.view_comboboxes(model)
      NavigationMenus -> view.view_navigation_menus(model)
      Empties -> view.view_empties()
      Items -> view.view_items()
      FormValidation -> view.view_form_validation(model)
      Searches -> view.view_searches(model)
      Ratings -> view.view_ratings(model)
      NavigationBars -> view.view_navigation_bars()
      Steppers -> view.view_steppers(model)
      TreeViews -> view.view_tree_views(model)
      TimePickers -> view.view_time_pickers(model)
      Multiselects -> view.view_multiselects(model)
      Timelines -> view.view_timelines()
      CanvasStressTest -> view.view_canvas_stress_test(model)
      WidgetDashboard -> view.view_widget_dashboard(model)
      HeatmapComparison -> view.view_heatmap_comparison(model)
      ThreatIntelNetwork -> view.view_threat_intel_network(model)
      D3Charts -> view.view_d3_charts()
      MonacoEditor -> view.view_monaco_editor()
      ExampleForm -> view.view_form_example(model)
      ExampleSite -> view.view_small_site_example(model)
    },
  ])
}
