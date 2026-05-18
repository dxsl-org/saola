# Saola Development Roadmap

**Last updated:** 2026-05-18 (Canvas Architecture Complete: Display List rendering + D3 graph layout; Batch 11 Complete: 8 widgets)

## Phase 0: Visualization Architecture (Complete)

Canvas-based rendering with D3 force layout for scalable, performant data visualization.

| Component | Status | Completion |
|-----------|--------|-----------|
| CanvasCommand ADT | Complete | 100% |
| Hit-testing system | Complete | 100% |
| `<saola-canvas>` custom element | Complete | 100% |
| D3 Force Layout Worker | Complete | 100% |
| Entity Graph Canvas | Complete | 100% |
| Bar Chart Canvas Renderer | Complete | 100% |

## Phase 1: Core Widgets (In Progress)

Core foundational widgets for UI construction.

| Widget | Status | Completion |
|--------|--------|-----------|
| Button | Complete | 100% |
| Input | Complete | 100% |
| Textarea | Complete | 100% |
| Label | Complete | 100% |
| Badge | Complete | 100% |
| Alert | Complete | 100% |
| Card | Complete | 100% |
| Checkbox | Complete | 100% |
| Radio | Complete | 100% |
| Switch | Complete | 100% |

## Phase 2: Advanced Widgets (In Progress)

Compound widgets with complex interactions.

| Widget | Status | Completion |
|--------|--------|-----------|
| Dropdown Menu | Complete | 100% |
| Select | Complete | 100% |
| Combobox | Complete | 100% |
| Dialog | Complete | 100% |
| Popover | Complete | 100% |
| Tooltip | Complete | 100% |
| Tabs | Complete | 100% |
| Accordion | Complete | 100% |
| Carousel | Complete | 100% |
| Toast/Notification | Complete | 100% |
| Modal/Alert Dialog | Complete | 100% |
| Hover Card | Complete | 100% |

## Phase 3: Form & Input Widgets (In Progress)

Specialized input and form control widgets.

| Widget | Status | Completion |
|--------|--------|-----------|
| Form Field | Complete | 100% |
| Slider | Complete | 100% |
| Range Slider | Complete | 100% |
| Toggle Group | Complete | 100% |
| Segmented Control | Complete | 100% |
| Date Picker | Complete | 100% |
| Calendar | Complete | 100% |
| Command Palette | Complete | 100% |
| Time Picker | Complete | 100% |
| Multiselect | Complete | 100% |
| Rating | Complete | 100% |
| Search | Complete | 100% |

## Phase 4: Specialized Widgets (In Progress)

New in this batch (May 16-17, 2026):

| Widget | Status | Completion |
|--------|--------|-----------|
| Spinner | Complete | 100% |
| Native Select | Complete | 100% |
| Button Group | Complete | 100% |
| Input Group | Complete | 100% |
| Context Menu | Complete | 100% |
| Drawer | Complete | 100% |

## Phase 5: Layout & Navigation (In Progress)

Structural widgets for page layout.

| Widget | Status | Completion |
|--------|--------|-----------|
| Breadcrumb | Complete | 100% |
| Pagination | Complete | 100% |
| Tabs | Complete | 100% |
| Sidebar | Complete | 100% |
| Resizable | Complete | 100% |
| Empty | Complete | 100% |
| Item | Complete | 100% |
| Navigation Bar | Complete | 100% |
| Stepper | Complete | 100% |

## Phase 6: Data Display (In Progress)

Complex data widgets.

| Widget | Status | Completion |
|--------|--------|-----------|
| Data Table | Complete | 100% |
| Tree View | Complete | 100% |
| Timeline | Complete | 100% |
| Badge List | Planned | 0% |

## Project Metrics

- **Total Widgets:** 64+
- **Completed:** 63
- **In Progress:** 0
- **Planned:** 1 (badge_list)
- **Total Tests:** 307 passing
- **Publishing Status:** All widgets complete — awaiting manual `gleam publish` (HEXPM_API_KEY required)

## Key Milestones

- 2026-05-18: **Canvas Architecture complete** (Display List rendering: CanvasCommand ADT, `<saola-canvas>` custom element, hit-testing system; D3 Force Layout Worker for graph visualization; entity_graph_canvas and bar_chart_canvas implementations; replaced Cytoscape with pure Gleam + Canvas 2D)
- 2026-05-18: **Batch 11 complete** (8 additional widgets: rating, search, time_picker, multiselect, navigation_bar, stepper, tree_view, timeline — all with tests; `saola/form` removed; 307 tests passing)
- 2026-05-17: **Phase 4 complete** (publish and DX: consumer setup guide, asset implementation, pre-publish verification; awaiting manual `gleam publish` with HEXPM_API_KEY)
- 2026-05-17: Phase 3 complete (dynamic theme listener: OS dark mode changes now update UI in real-time)
- 2026-05-17: Phase 2 complete (remaining 8 widgets: empty, item, carousel, combobox, navigation_menu, spinner, command, sidebars)
- 2026-05-17: Phase 1 complete (fix publish blockers: formal moved to dev deps, README.md + CHANGELOG.md created)
- 2026-05-17: Batch 10 complete (theme system, form validation enhancement)
- 2026-05-17: Batch 9 complete (empty, item)
- 2026-05-17: Batch 8 complete (carousel, combobox, navigation_menu, toast enhancement)
- 2026-05-17: Batch 7 complete (command, sidebar, resizable, data_table)
- 2026-05-17: Batch 6 complete (spinner, native_select, button_group, input_group, context_menu, drawer)
- 2026-05-16: Batch 5 complete (calendar, date_picker)
- Previous: 29 widgets across phases 1-3

## Next Steps (Post-Phase 4)

1. **Publish to Hex.pm:** Set `HEXPM_API_KEY` and run `gleam publish`
2. **Monitor Package:** Verify rendering on Hex.pm, check community feedback
3. **Complete remaining Form & Input widgets:** time_picker, multiselect, rating, search
4. **Implement Layout & Navigation widgets:** navigation_bar, stepper
5. **Build remaining Data Display widgets:** tree_view, timeline, badge_list
6. **Performance optimization pass**

## Publishing Instructions

To complete the live publish step:

1. Obtain API key from https://hex.pm/settings (requires Hex.pm account)
2. Set environment variable:
   ```powershell
   $env:HEXPM_API_KEY = "<your-api-key>"
   ```
3. Run from project root:
   ```bash
   gleam publish
   ```
4. Verify package on https://hex.pm/packages/saola
