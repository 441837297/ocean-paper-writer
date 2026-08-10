# Writing Workflow

## Purpose

Writing turns confirmed architecture and evidence into manuscript prose. It works one locally
coherent unit at a time and lets paragraph boundaries emerge from the scientific logic and adjacent
text.

## Inputs

- current `03_section-architecture.md`, `03_figure-outline.md`, and relevant terminology rows
- authoritative evidence or method material needed for the selected unit
- adjacent confirmed manuscript text
- a task-local `Reference Reading Brief` when reference-paper learning is useful

Follow the global Stage/Step, Source Scope, evidence, confirmation, and version rules in `SKILL.md`.

## Unit Scope

The default unit is one paragraph; the maximum final-prose unit is one subsection. Larger requests
become a provisional section plan followed by unit-by-unit drafting. Stay within one manuscript
section in a turn.

Default drafting order: Methods -> Results -> Introduction -> Discussion -> Conclusion when used ->
Abstract.

## House Rules

These are the canonical prose rules for writing, review, and polish:

1. Open with the unit's scientific or rhetorical job: result-first in Results, claim-first in
   interpretive Discussion, rhetorical-move-first in Introduction, and operation-first in Methods.
2. Give each paragraph one controlling function and each sentence one main scientific judgment.
3. Match verbs to evidence: direct diagnostics can `show` or `find`; association can be
   `associated with` or `consistent with`; bounded inference can `suggest`; tentative physical
   interpretation can `may reflect` or `could help explain`.
4. State the scientific object, direction, domain, and period needed to interpret a result.
5. Present observation first, interpretation second, and implication at the supported scale.
6. Place useful scope and uncertainty where readers can interpret the claim without obscuring the
   main result.
7. Define terminology once in `03_terminology.md` and use it consistently.
8. Prefer direct sentences and content-driven transitions.
9. Keep technical detail where it serves the section: reproducibility detail in Methods and the
   main evidence in Results.

Focused files in `references/writing/` add section-specific guidance. They inherit these House Rules
and the evidence boundaries in `SKILL.md`.

## Steps

1. Select a section, subsection, or logical result unit from `03_section-architecture.md`.
2. Build a compact context packet:
   - the unit's role and claim boundary;
   - relevant figure role or method source;
   - relevant terminology rows;
   - verified facts and numbers;
   - adjacent confirmed prose.
3. When rhetorical learning is useful, invoke `references/subagents/reference-reading.md` and add
   only its compact brief to the packet.
4. Discuss the intended scientific logic with the user and confirm the direction.
5. Draft the English prose using the House Rules.
6. Return the draft, evidence used, claim boundary, and a short Chinese author check when useful.
7. After user confirmation, place the unit in the current manuscript and update
   `04_writing-log.md`.

Drafting pauses when a required fact is missing, an intended claim has an evidence gap, or the
selected unit conflicts with the confirmed architecture. Route the issue to its authoritative
upstream file.

## Outputs

- `04_writing/04_manuscript-draft.md`
- `04_writing/04_writing-log.md`

The writing log records unit status and revisions; it does not reproduce architecture contracts.

## Self-Check and Handoff

Confirm that the unit performs its assigned role, uses verified evidence, follows current
terminology, preserves claim boundaries, and connects naturally to adjacent text. A confirmed draft
may hand off to review. Review-originated revisions follow `references/workflow/review.md` and the
global version rule.

Abstract drafting additionally loads `references/workflow/writing-abstract.md`.
