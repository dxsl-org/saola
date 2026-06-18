import formal/form as formlib
import gleam/dict
import gleam/float
import gleam/int
import gleam/list
import gleam/option.{None, Some}
import gleam/result
import gleam/uri.{type Uri}

import lustre
import lustre/attribute as a
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/element/html as h
import modem
import plinth/browser/window
import saola/component/canvas as canvas_component
import saola/component/carousel
import saola/component/combobox as cb
import saola/component/d3_bar_chart
import saola/component/entity_graph_3d
import saola/component/multi_select as ms
import saola/component/resizable_split
import saola/component/world_map
import saola/graph_layout
import saola/lustre_heatmap
import saola/preview/threat_intel_data
import saola/preview/update
import saola/theme
import saola/toast

import gleam/time/calendar
import saola/data_table
import saola/preview/model.{
  type Message, type Model, AccordionToggled, Accordions, AddToast,
  AlertDialogCancelled, AlertDialogConfirmed, AlertDialogOpened, AlertDialogs,
  Alerts, AspectRatios, Avatars, Badges, Breadcrumbs, ButtonGroups, Buttons,
  CalendarDateSelected, CalendarMonthChanged, Calendars, CanvasStressTest, Cards,
  CarouselHorizontalMessage, CarouselVerticalMessage, Carousels, CloseDialog,
  CollapsibleToggled, Collapsibles, ComboboxQueryChanged, ComboboxSelected,
  Comboboxes, CommandNavDown, CommandNavUp, CommandQueryChanged, CommandSelected,
  Commands, ContextMenuClosed, ContextMenuOpened, ContextMenus, D3Charts,
  DashDrawerClosed, DashPageChanged, DashRowClicked, DashSearchChanged,
  DataTableFilterChanged, DataTablePageChanged, DataTableSelectChanged,
  DataTableSortChanged, DataTables, DatePicker1Changed, DatePicker2Changed,
  DatePickers, Dialogs, DismissToast, DrawerClosed, DrawerOpened, Drawers,
  DropdownMenus, Empties, ExampleForm, ExampleSite, Fields, FormEmailChanged,
  FormMessageChanged, FormNameChanged, FormSubmitted, FormValidation, Forms,
  HeatmapAnimTick, HeatmapCanvasCellClicked, HeatmapCanvasHoverLeft,
  HeatmapCanvasHovered, HeatmapCellPxChanged, HeatmapComparison, HeatmapHover,
  HeatmapPaintEnded, HeatmapPaintStarted, HeatmapRandomize, HeatmapRipple,
  HeatmapSchemeChanged, HeatmapSizeChanged, HeatmapSvgCellClicked,
  HeatmapSvgHoverLeft, HeatmapSvgHovered, Home, HoverCardClosed, HoverCardOpened,
  HoverCards, InputGroups, InputOtpChanged, InputOtps, Inputs, Items,
  MenubarClosed, MenubarOpened, Menubars, Model, MonacoEditor,
  MultiselectChanged, Multiselects, NativeSelectChanged, NativeSelects,
  NavMenuOpenChanged, NavigationBars, NavigationMenus, OnRouteChange, OpenDialog,
  PaginationChanged, Paginations, PopoverClosed, PopoverOpened, Popovers,
  Progresses, RadioGroups, RatingChanged, Ratings, ResizableSplitSizesChanged,
  Resizables, ScrollAreas, SearchQueryChanged, Searches, SelectChanged, Selects,
  Separators, SheetClosed, SheetOpened, Sheets, SidebarCollapsedToggled,
  SidebarToggled, Sidebars, SignupConfirmChanged, SignupEmailChanged,
  SignupNameChanged, SignupPasswordChanged, SignupReset, SignupSubmitted,
  Skeletons, SliderChanged, Sliders, Spinners, StartedTrial, StepperStepClicked,
  Steppers, StressBarClicked, StressOffsetChanged, StressZoomChanged,
  SwitchToggled, Switches, SystemOsDarkChanged, TabChanged, Tables, Tabs,
  ThemeSelected, ThreatEntityDeselected, ThreatEntitySelected,
  ThreatFiltersCleared, ThreatGraphPanned, ThreatGraphZoomed, ThreatIntelNetwork,
  ThreatIntelRouteEntered, ThreatLayoutReceived, ThreatMapCountryClicked,
  ThreatNodeHovered, ThreatSearchChanged, ThreatSearchCleared,
  ThreatSeverityFilterChanged, ThreatTablePageChanged, ThreatTableRowSelected,
  ThreatTableSortChanged, ThreatTimelineEntityChanged, TimePickerChanged,
  TimePickers, Timelines, Toasts, ToggleBoldChanged, ToggleDropdown,
  ToggleGroupChanged, ToggleGroups, ToggleItalicChanged, Toggles, Tooltips,
  TreeNodeToggled, TreeViews, UserClickedOutside, WidgetDashboard,
}
import saola/preview/view
import saola/preview/view/sidebar

pub fn main() {
  let assert Ok(_) = carousel.register()
  let assert Ok(_) = cb.register()
  let assert Ok(_) = d3_bar_chart.register()
  let assert Ok(_) = entity_graph_3d.register()
  let assert Ok(_) = ms.register()
  let assert Ok(_) = resizable_split.register()
  let assert Ok(_) = canvas_component.register()
  let assert Ok(_) = world_map.register()
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
      date_picker_1_state: model.DatePickerState(
        selected_date: calendar.Date(2026, calendar.May, 1),
        open: False,
        viewed_year: 2026,
        viewed_month: calendar.May,
      ),
      date_picker_2_state: model.DatePickerState(
        selected_date: calendar.Date(2026, calendar.May, 1),
        open: False,
        viewed_year: 2026,
        viewed_month: calendar.May,
      ),
      native_select_value: "apple",
      context_menu_open: False,
      context_menu_x: 0,
      context_menu_y: 0,
      drawer_open: False,
      sidebar_open: True,
      sidebar_collapsed: False,
      command_query: "",
      command_highlighted: -1,
      resizable_split_sizes: [30.0, 70.0],
      data_table_state: data_table.default_state,
      carousel_horizontal: model.CarouselState(
        index: 0,
        has_prev: False,
        has_next: True,
      ),
      carousel_vertical: model.CarouselState(
        index: 0,
        has_prev: False,
        has_next: True,
      ),
      combobox_value: None,
      combobox_query: "",
      nav_menu_open: None,
      theme: theme.Light,
      os_color_scheme: theme.is_system_dark(),
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
      theme.watch_system_dark(SystemOsDarkChanged),
      theme.apply_to_html(theme.Light, theme.is_system_dark()),
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
    UserClickedOutside -> #(
      Model(
        ..model,
        open_dropdown: None,
        date_picker_1_state: model.DatePickerState(
          ..model.date_picker_1_state,
          open: False,
        ),
        date_picker_2_state: model.DatePickerState(
          ..model.date_picker_2_state,
          open: False,
        ),
      ),
      effect.none(),
    )
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
      let n = int.parse(value) |> result.unwrap(0)
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
    PopoverOpened -> #(Model(..model, popover_open: True), effect.none())
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
    DatePicker1Changed(inner_msg) ->
      update.handle_date_picker_1(model, inner_msg)
    DatePicker2Changed(inner_msg) ->
      update.handle_date_picker_2(model, inner_msg)
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
    ResizableSplitSizesChanged(sizes) -> #(
      Model(..model, resizable_split_sizes: sizes),
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
    CarouselHorizontalMessage(carousel_msg) ->
      update.handle_carousel_horizontal(model, carousel_msg)
    CarouselVerticalMessage(carousel_msg) ->
      update.handle_carousel_vertical(model, carousel_msg)
    ComboboxQueryChanged(q) -> #(
      Model(..model, combobox_query: q),
      effect.none(),
    )
    ComboboxSelected(val) -> #(
      Model(..model, combobox_value: Some(val)),
      effect.none(),
    )
    NavMenuOpenChanged(id) -> #(
      Model(..model, nav_menu_open: id),
      effect.none(),
    )
    ThemeSelected(t) -> #(
      Model(..model, theme: t),
      theme.apply_to_html(t, model.os_color_scheme),
    )
    SystemOsDarkChanged(scheme) -> #(
      Model(..model, os_color_scheme: scheme),
      theme.apply_to_html(model.theme, scheme),
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
          heatmap_svg_hover: Some(HeatmapHover(row, col, dv, mx, my)),
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
          heatmap_canvas_hover: Some(HeatmapHover(row, col, dv, mx, my)),
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
          heatmap_svg_ripple: Some(HeatmapRipple(row, col, count)),
          heatmap_canvas_ripple: Some(HeatmapRipple(row, col, count)),
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
          heatmap_svg_ripple: Some(HeatmapRipple(row, col, count)),
          heatmap_canvas_ripple: Some(HeatmapRipple(row, col, count)),
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
  let _ =
    window.request_animation_frame(fn(ts) { dispatch(HeatmapAnimTick(ts)) })
  Nil
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

fn view(model: Model) -> Element(Message) {
  h.div([a.class("app-container")], [
    sidebar.view(model.route, model.theme),
    main_pane(model),
  ])
}

fn main_pane(model: Model) -> Element(Message) {
  h.div([a.class("main-pane")], [
    case model.route {
      Home -> h.div([], [element.text("Select a widget category to preview.")])
      Alerts -> view.alerts()
      Badges -> view.badges()
      Cards -> view.cards()
      Buttons -> view.buttons()
      Inputs -> view.inputs()
      Forms -> view.forms()
      Separators -> view.separators()
      Tooltips -> view.tooltips()
      Switches -> view.switches(model)
      Sliders -> view.sliders(model)
      Selects -> view.selects(model)
      Fields -> view.fields(model)
      DropdownMenus -> view.dropdown_menus(model)
      Tabs -> view.tabs(model)
      Dialogs -> view.dialogs(model)
      Tables -> view.tables()
      Toasts -> view.toasts(model)
      Accordions -> view.accordions(model)
      Progresses -> view.progresses()
      Skeletons -> view.skeletons()
      Avatars -> view.avatars()
      RadioGroups -> view.radio_groups(model)
      Toggles -> view.toggles(model)
      ToggleGroups -> view.toggle_groups(model)
      Breadcrumbs -> view.breadcrumbs()
      Paginations -> view.paginations(model)
      ScrollAreas -> view.scroll_areas()
      AspectRatios -> view.aspect_ratios()
      Collapsibles -> view.collapsibles(model)
      Popovers -> view.popovers(model)
      AlertDialogs -> view.alert_dialogs(model)
      HoverCards -> view.hover_cards(model)
      InputOtps -> view.input_otps(model)
      Sheets -> view.sheets(model)
      Menubars -> view.menubars(model)
      Calendars -> view.calendars(model)
      DatePickers -> view.date_pickers(model)
      Spinners -> view.spinners()
      NativeSelects -> view.native_selects(model)
      ButtonGroups -> view.button_groups()
      InputGroups -> view.input_groups()
      ContextMenus -> view.context_menus(model)
      Drawers -> view.drawers(model)
      Sidebars -> view.sidebars(model)
      Commands -> view.commands(model)
      Resizables -> view.resizables(model)
      DataTables -> view.data_tables(model)
      Carousels -> view.carousels(model)
      Comboboxes -> view.comboboxes(model)
      NavigationMenus -> view.navigation_menus(model)
      Empties -> view.empties()
      Items -> view.items()
      FormValidation -> view.form_validation(model)
      Searches -> view.searches(model)
      Ratings -> view.ratings(model)
      NavigationBars -> view.navigation_bars()
      Steppers -> view.steppers(model)
      TreeViews -> view.tree_views(model)
      TimePickers -> view.time_pickers(model)
      Multiselects -> view.multiselects(model)
      Timelines -> view.timelines()
      CanvasStressTest -> view.canvas_stress_test(model)
      WidgetDashboard -> view.widget_dashboard(model)
      HeatmapComparison -> view.heatmap_comparison(model)
      ThreatIntelNetwork -> view.threat_intel_network(model)
      D3Charts -> view.d3_charts()
      MonacoEditor -> view.monaco_editor()
      ExampleForm -> view.form_example(model)
      ExampleSite -> view.small_site_example(model)
    },
  ])
}
