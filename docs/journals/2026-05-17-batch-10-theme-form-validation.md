# Batch 10: Theme System & Form Validation Enhancement

**Date**: 2026-05-17 11:00
**Severity**: Medium
**Component**: Theme system, form validation, field widget
**Status**: Resolved

## What Happened

Completed Batch 10 with two architectural improvements: a theme system supporting Light/Dark/System modes, and form validation enhancements via `required` and `hint` fields on `FieldAttrs`. Discovered that Basecoat CSS already contained a complete `.dark {}` scope with all token overrides—zero new CSS required.

## The Brutal Truth

This batch felt like discovering existing infrastructure already in place. The theme implementation was embarrassingly simple once we realized the CSS was already there. Spent more time validating that Dark mode wasn't already working than implementing new code. The form validation was straightforward mechanical work, but the ARIA spec gotcha (aria-required placement) exposed a fundamental limitation: `field.gleam` receives `Element(msg)` opaquely, so we cannot inject attributes into the wrapped form control without breaking the widget API contract.

## Technical Details

### Theme System

Created `src/saola/theme.gleam`:
```gleam
pub type Theme { Light | Dark | System }

pub fn theme_attr(theme: Theme) -> Attribute(msg) {
  case theme {
    Light  -> a.class("")
    Dark   -> a.class("dark")
    System -> a.class("")
  }
}
```

Added 3-line synchronous script to `index.html` (runs before Gleam boots):
```javascript
if (window.matchMedia("(prefers-color-scheme: dark)").matches) {
  document.documentElement.classList.add("dark")
}
```

Wired toggle into preview sidebar via `ThemeToggled(theme.Theme)` message. System variant is partially implemented—sets no class at runtime, relying on the one-shot script. Future improvement needed.

### Form Validation Enhancement

Extended `FieldAttrs` in `src/saola/field.gleam`:
```gleam
pub type FieldAttrs {
  // ...existing fields...
  required: Bool
  hint: String
}
```

- `required: True` renders asterisk `*` span with `aria-hidden="true"` inside the label
- `hint: String` renders `<p class="field-hint">` between input and error message
- Created `src/saola/form.gleam`—lightweight `field_attrs_from_result(Result(String, String), FieldAttrs) -> FieldAttrs` bridge using only stdlib `Result`; `formal` library remains optional

**Code review catch**: Initially placed `aria-required` on the wrapper `<div>`. ARIA spec requires it on the form control itself. Removed from wrapper and documented consumer responsibility in pattern guide.

## What We Tried

1. **Implementing Dark CSS from scratch** → Realized basecoat.css already had complete `.dark` scope; reverted.
2. **Injecting aria-required via wrapper** → Violates ARIA spec; removed and documented the limitation instead.
3. **Test assertion `"We'll never spam you."` failed** → `element.to_string` HTML-encodes apostrophes as `&#39;`; adjusted assertion.

## Root Cause Analysis

The theme win was pure oversight—we shipped widgets without reading the existing CSS file thoroughly. The form validation limitation stems from the widget API contract: widgets receive opaque `Element(msg)` values from consumers, preventing us from introspecting or modifying the wrapped control's attributes.

## Lessons Learned

1. **Read the entire stylesheet before writing new CSS.** Basecoat is comprehensive; we wasted implementation time and code review cycles.
2. **Document architectural constraints honestly.** We cannot inject ARIA attributes into form controls wrapped by consumers. Instead of fighting it, document the consumer's responsibility clearly in the pattern guide.
3. **HTML encoding in tests bites hard.** Element serialization applies HTML entity encoding; update assertions or test at a higher level (integration tests).
4. **Lightweight bridges beat tight coupling.** The `formal` bridge using only stdlib `Result` keeps optional dependencies truly optional.

## Next Steps

1. **System theme variant**: Implement dynamic preference listener to update class on preference change (currently set once at boot).
2. **aria-required consumer education**: Publish example in form validation pattern showing how consumers must apply `aria_required(true)` to wrapped inputs.
3. **Lint check**: Add test to catch aria-required on non-form-control wrappers in future PRs.

**Commit**: `e176fe5` feat: add theme system and form validation enhancement (Batch 10)
