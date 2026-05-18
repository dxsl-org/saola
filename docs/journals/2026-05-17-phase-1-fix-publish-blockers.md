# Phase 1 Complete: Publish Blockers Eliminated

**Date**: 2026-05-17 14:30
**Severity**: High
**Component**: Build system, dependency graph, documentation
**Status**: Resolved

## What Happened

Completed Phase 1 of the Saola upgrade. Three blocking issues that would have broken consumer builds got fixed:

1. **Moved `formal` to dev_dependencies** in gleam.toml — was forcing an unmaintained bridge library on every consumer of Saola.
2. **Deleted `src/saola/form.gleam`** — the bridge module lived in src/ (published to consumers), which meant their builds would fail if formal wasn't installed. The 2 helper functions are now documented as an inlineable snippet in README.
3. **Fixed preview and test files** that imported the deleted module.
4. **Created CHANGELOG.md** from scratch (was missing entirely, causing `gleam publish` warnings).
5. **Updated README.md** with all 50+ widgets and new sections for theming and form validation patterns.

## The Brutal Truth

We were one `gleam publish` away from shipping a broken library. The form bridge was a landmine: it lived in `src/` but depended on an external library consumers didn't need. Any consumer trying to use Saola without formal would hit a compile error in `saola/form`. That's catastrophic.

The real frustration here is that this should have been caught in Phase 0. We added the dependency, published it, and nobody noticed the transitive chain until now.

## Technical Details

- `gleam build` output: clean, no errors
- `gleam test` output: 281 tests pass (was 284; removed 3 form-bridge tests testing deleted code)
- File deletions: `src/saola/form.gleam` (29 lines)
- File modifications: gleam.toml (1 section move), README.md (+200 lines), preview/field.gleam, test/new_widget_tests7.gleam

Publish check would have caught this: the form module wouldn't compile in consumer projects.

## What We Tried

- **Initial approach**: Keep form.gleam and move formal to dev_dependencies. Rejected: consumers can't use a module that depends on unmaintained code they don't have installed.
- **Alternative**: Keep formal in dependencies, lean into it. Rejected: formal is no longer maintained; forcing it on everyone is vendor lock-in we don't want.
- **Final decision**: Delete the bridge, document the pattern inline. Consumers who want it get a 10-line snippet to copy; no forced dependency.

## Root Cause Analysis

We added the form bridge as a convenience layer without asking the hard question: *Does this deserve to be published?* The answer is no. It's a two-function helper that couples to an external library. That's preview code, not library code. It got included because it was in `src/` and we didn't enforce what should and shouldn't live there.

## Lessons Learned

1. **Publish mindset matters**: When adding code to `src/`, ask "would I want this shipped to a consumer?" If the answer is "only if they also adopt formal," it doesn't belong.
2. **Dependency hygiene is critical**: A transitive dependency on unmaintained code is debt we accumulate every time someone installs Saola.
3. **Documentation + inlining beats publishing**: Two helper functions don't justify coupling. The README snippet is better; consumers who need it own it.

## Next Steps

- Phase 2: Profile and perf (no blockers for publish now)
- Phase 3: Run full test suite on actual Gleam stdlib build
- Phase 4: Ready for publish once Phase 2–3 are clear

Blockers resolved. Library is publishable.
