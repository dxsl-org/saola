# Saola Hex.pm Publish Readiness Analysis

**Date**: 2026-05-17 20:00
**Severity**: High
**Component**: Library metadata, dependency management, incomplete widgets
**Status**: Planning phase — blockers identified, phase plan drafted

## What Happened

Conducted a full publishing readiness audit on Saola v1.0.0. The library sits at 47 complete widgets with 284 passing tests, yet has never been published to Hex.pm. Audit revealed 3 hard blockers preventing publication and 8 incomplete widgets (0% completion).

## The Brutal Truth

This is embarrassing. We have a v1.0.0 tag in gleam.toml and 47+ production-quality widgets—but GitHub and Hex.pm both show a blank library because there's no README. The bleaker part: gleam.toml links to a CHANGELOG that doesn't exist at root. And we shipped `formal` as a runtime dependency when 99% of users never use form validation. Every consumer is forced to install formal as a transitive dependency even if they only use buttons and badges. That's bloat disguised as a feature.

## Technical Details

### Publish Blockers

1. **Missing README.md at root** — GitHub repository shows completely blank. Hex.pm displays no description or examples. This kills discoverability entirely.

2. **Missing CHANGELOG.md at root** — gleam.toml contains dead link:
   ```toml
   links = [{ title = "Changelog", href = "https://github.com/tindn/saola/blob/main/CHANGELOG.md" }]
   ```
   File does not exist. Hex.pm link 404s.

3. **`formal` declared as runtime dependency** — In gleam.toml:
   ```toml
   [dependencies]
   formal = ">= 3.0.1 and < 4.0.0"
   ```
   Only used in `src/saola/form.gleam` for `field_attrs_from_result()`. Every consumer pays the cost; option to make truly optional never explored.

### Widget Gaps

8 widgets remain at 0% completion, blocking the "complete library" milestone:
- **Form inputs**: time_picker, multiselect, rating, search
- **Navigation**: navigation_bar, stepper
- **Data display**: tree_view, timeline

Roadmap also lists badge_list (planned), but this is trivially composable from existing badge widget—should be descoped.

### Architecture Discovery

**Theme.System limitation**: System theme is static-only. The one-shot index.html boot script sets the dark class once if OS preference is dark. No listener for preference changes; if OS theme flips at runtime, UI doesn't react. Documented as partial implementation.

## What We Tried

1. **Checked if files exist**: Confirmed README.md and CHANGELOG.md do not exist at `d:\saola\` root.
2. **Analyzed formal dependency usage**: Grepped src/saola—only form.gleam imports formal. Could be deleted entirely if consumers implement their own validation.
3. **Traced formal removal impact**: src/saola/form.gleam currently does `field_attrs_from_result(result, attrs)` using formal's stdlib-based approach. If formal is removed from deps, must decide: delete form.gleam or keep it as a consumer-importable snippet in setup guide.

## Root Cause Analysis

**Why no publish?** Low visibility. The library is feature-rich but invisible to potential users without at least a README explaining the widget catalog and quickstart.

**Why formal is runtime?** Premature optimization. We added form validation support mid-development and added formal to deps without reconsidering if it should be dev-only or optional.

**Why theme is incomplete?** We implemented the happy path (Light/Dark toggle) and stopped. System mode requires a mediaQuery listener and Lustre Sub to react to OS preference changes—worth doing, but initially deferred.

## Lessons Learned

1. **Publish blockers are not technical—they're metadata and messaging.** Without a README, Hex.pm cannot display the library. This kills adoption cold.

2. **Dependencies are surfaced to consumers.** Every transitive dep increases cognitive load and build time. If formal is optional for 80% of users, it shouldn't be in [dependencies].

3. **"Partial implementations" need explicit documentation.** System theme works at boot but doesn't adapt. Document the limitation or complete it; half-done features surprise consumers.

4. **Descope aggressively.** badge_list adds zero value over composing badge widgets. Complete the 8 blockers; descope nice-to-haves.

## Next Steps

**Phase 1: Fix Publish Blockers (2 hours)**
- Write README.md at root—include widget catalog, quickstart, typography guide, dark mode example
- Create CHANGELOG.md documenting v1.0.0 release (47 widgets, 284 tests, Batch 1-10 history)
- Move `formal` to dev_dependencies; if Gleam rejects imports in src/, delete form.gleam and publish the validation pattern as a docs snippet instead

**Phase 2: Complete 8 Widgets (3–4 days)**
- time_picker, multiselect, rating, search (form inputs)
- navigation_bar, stepper (navigation)
- tree_view, timeline (data display)

**Phase 3: Dynamic Theme Listener (3 hours)**
- Implement mediaQuerySub in Lustre to listen for `prefers-color-scheme` changes
- Use FFI to wire `window.matchMedia()` calls; dispatch message on preference change
- Ensures System theme adapts at runtime

**Phase 4: Publish to Hex.pm (2 hours)**
- Verify tests pass: `gleam test`
- Tag release: `git tag v1.0.0`
- Publish: `gleam publish` (Hex.pm)
- Create consumer setup guide (how to add Saola, where to import from)

**Descope**: badge_list—too trivial; document as composition example in README instead.

---

**Related files**:
- Roadmap: `d:\saola\docs\development-roadmap.md`
- Batch 10 journal: `d:\saola\docs\journals\2026-05-17-batch-10-theme-form-validation.md`
- gleam.toml: `d:\saola\gleam.toml`
