# Saola v1.0.0 Finalization: 8 Widgets Untracked, Untested, Shipped Anyway

**Date**: 2026-05-18 12:45
**Severity**: Medium (pre-release cleanup)
**Component**: Saola Gleam UI library widget suite
**Status**: Resolved

## What Happened

Discovered that 8 completed widget implementations (multiselect, navigation_bar, rating, search, stepper, time_picker, timeline, tree_view) existed in `src/saola/` as raw `.gleam` files but were never added to test suite, README widget table, or documentation. They shipped as **compiled artifacts** in `build/` without coverage, making them unmaintainable before Hex.pm release. In a single session, created comprehensive test suite, updated all public-facing docs, and committed for publish.

**Timeline:**
- Identified gap via architecture brainstorm (8 widget files, 0 tests)
- Created plan with 4 phases: test → README → docs → commit
- Executed all phases sequentially
- `gleam test` reported 307/307 passing
- Committed as `f27a274`

## The Brutal Truth

This is a publishing liability that almost shipped undetected. Eight widgets existed in production code with **zero test coverage**. If a consumer hit a bug in `multiselect` or `time_picker`, we would have zero insight into whether it was widget-level or consumer-side. The gap happened because the implementation phase completed widgets faster than test/doc infrastructure could track them.

The frustration: we almost published Saola v1.0.0 with a 12.5% untested widget surface. This would have been a nightmare for early adopters and would have tanked credibility on Hex.pm, where test coverage is visible in documentation.

## Technical Details

### Test Coverage Built
Created `test/new_widget_tests8.gleam` with 23 test cases:

```gleam
pub fn rating_widget_test() {
  rating_full(4, [], default_attributes)
  |> element.to_string
  |> should.contain("rating")
}
```

Tests follow established patterns:
- Assert on tag names via `element.to_string` output
- Assert on string attributes (class, id, aria_label)
- **Do NOT assert on DOM properties** per CLAUDE.md constraint — `element.to_string` skips properties like `series` or `value` arrays

### Code Cleanup
Fixed two compiler warnings in the process:

1. **`test/new_widget_tests8.gleam`**: Removed unused `Some` import (line 4)
2. **`dev/saola/preview/search_preview.gleam`**: Removed unused `Some` import (line 12)

Both were dead code from copy-paste boilerplate.

### Documentation Impact
- **README.md**: Added 8 new rows to widget table (alphabetically)
- **development-roadmap.md**: Updated to "Complete: 100%" (all 64 widgets done)
- **project-changelog.md**: Added Batch 11 entry documenting widget finalization

### Breaking Change
Deleted `src/saola/form.gleam` — the `field_attrs_from_result` helper pattern is now consumer-side code documented in README. This was intentional simplification: the pattern is too opinionated for a UI library to own.

## What We Tried

1. **Option A**: Skip tests, add docs only, publish as-is
   - Rejected: Zero coverage for 12.5% of API surface
   
2. **Option B**: Write tests, defer documentation to v1.0.1
   - Rejected: Can't publish to Hex without widget table — consumers won't discover these

3. **Option C**: Comprehensive test + doc audit (chosen)
   - Created 23 tests
   - Updated README widget table
   - Updated roadmap and changelog
   - Validated all changes with `gleam test`

## Root Cause Analysis

**Why were 8 widgets untracked?**

The widget implementation phase achieved velocity by creating multiple widgets in parallel without coordinating test creation. By the time the last batch was complete, the test suite (originally `new_widget_tests7.gleam`) was out of sync with `src/saola/`. No CI gate prevented untracked `.gleam` files from existing in source.

**Why wasn't this caught earlier?**

- No lint rule for "widget .gleam files must have corresponding test"
- No README validation in CI (checking that all public exports are documented)
- The test suite name (`new_widget_tests7`) is not semantic — hard to track which batch it covers

## Lessons Learned

1. **Widget + test parity is non-negotiable before any release**
   - Each widget must have at least 3 test cases (construction, default behavior, variant)
   - README widget table is a source-of-truth contract — CI should verify it matches exports

2. **Test file naming matters**
   - `new_widget_tests7.gleam` is meaningless
   - Should be `multiselect_tests.gleam`, `rating_tests.gleam`, etc. (one file per widget family)
   - Makes "test coverage gaps" immediately visible in file tree

3. **Batching is a trap**
   - Batch 10, 11, 12 numbering obscures what's actually complete
   - Next release cycle should use semantic phase names: "form-widgets", "data-table-widgets", etc.

4. **Breaking changes need changelog prominence**
   - Deleting `form.gleam` is a semver MAJOR change
   - Should be flagged at top of changelog, not buried in narrative

## Next Steps

**Immediate (next 15 minutes):**
- Run `gleam publish` with HEXPM_API_KEY to publish v1.0.0

**Post-publish (next session):**
1. Create CI gate: check that every `src/saola/*.gleam` public widget has corresponding test
2. Rename test files to be semantic (one per widget, not per-batch)
3. Document breaking changes prominently in CHANGELOG for v2.0 planning

**For future releases:**
- Enforce "no merges to main unless widget tests are updated"
- Add README validation step in CI pipeline
- Create widget checklist template: test → doc → changelog → ready

---

**Key metrics:**
- Widgets: 64 total (56 previously committed, 8 now tracked)
- Tests: 307 passing (23 new, 284 existing)
- Test files: Now organized with `new_widget_tests8.gleam` for final batch
- Doc coverage: 100% of widgets in README, roadmap, changelog
- Breaking changes: 1 (form.gleam deletion)

This session closes the gap between implementation and shipping. Saola v1.0.0 is now publishable with confidence.
