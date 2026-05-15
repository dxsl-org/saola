# Plan: Port shadcn-ui Components to Saola (Gleam/Lustre)

**Source:** `./reference/shadcn-ui` (React + Tailwind + Radix UI)
**Target:** `src/saola/` (Gleam + Lustre + Basecoat CSS)
**Date:** 2026-05-15

## Status

| Phase | Description | Status |
|-------|-------------|--------|
| [Phase 01](phase-01-stateless-components.md) | Stateless components: badge, alert, card, kbd | ✅ Done |
| [Phase 02](phase-02-form-inputs.md) | Form inputs: input, textarea, label | ✅ Done |
| [Phase 03](phase-03-stateful-components.md) | Stateful interactive: tabs, dialog | ✅ Done |
| [Phase 04](phase-04-data-components.md) | Data/notification: table, toast | ✅ Done |

## Scope

Port 11 components that have full Basecoat CSS support into idiomatic Gleam/Lustre widgets.
Components without Basecoat CSS (avatar, progress, slider, etc.) are out of scope for this plan.

## Key Decisions (from Challenge phase)

1. **State is always external** — consumer passes state; widget never owns it
2. **Flat functions, not compound components** — `alert_full(title, description, variant)` not `Alert.Root + Alert.Title`
3. **`{widget}_full()` + convenience shortcuts** — same pattern as button/checkbox/dropdown
4. **CSS class composition** — string concatenation, not cn() utility
5. **Accessibility via explicit ARIA** — no Radix primitives needed
6. **Dialog open state** — consumer passes `is_open: Bool` + `on_close: msg`, mirrors dropdown_menu pattern
7. **Tabs active tab** — consumer passes `active_tab: String` + `on_tab_change: msg`

## Component → CSS Mapping

| Component | Basecoat Class(es) | Variants |
|-----------|-------------------|----------|
| badge | `.badge`, `.badge-secondary`, `.badge-destructive`, `.badge-outline` | Default, Secondary, Destructive, Outline |
| alert | `.alert`, `.alert-destructive` | Default, Destructive |
| card | `.card` | None (layout only) |
| kbd | `.kbd` | None |
| input | utility classes (from checkbox.gleam pattern) | Text, Email, Password, Search, Tel, Url, Number |
| textarea | utility classes | None |
| label | utility classes | None |
| tabs | `.tabs` | Default, Line |
| dialog | `.dialog` | None |
| table | `.table` | None |
| toast | `.toast`, `.toast-content`, `.toaster` | Default, Destructive |

## Existing Patterns to Follow

- Types file: `src/saola/button.gleam` — variant ADTs, config types, `pub const default_*`
- State pattern: `src/saola/dropdown_menu.gleam` — `is_open: Bool` external state
- Form pattern: `src/saola/checkbox.gleam` — `InitValue`/`SyncValue` duality, typeid for IDs
- Preview pattern: `dev/saola/preview/` — add a `dev/saola/preview/{widget}.gleam` for each new widget

## Dependencies

All phases are independent and can be implemented in any order.
Phase 02 (input, label) may be referenced by Phase 04 (toast has a description text).

## Completed: 2026-05-15 — All 11 components implemented, compile passes, code review addressed.
