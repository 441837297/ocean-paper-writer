# Polish Workflow

## Purpose

Polish refines confirmed manuscript prose for clarity, flow, precision, and a natural academic
voice. Scientific and structural problems return to their authoritative upstream stage.

## Inputs

- latest confirmed manuscript version
- relevant architecture and terminology entries
- `references/workflow/writing.md#House Rules`
- a focused naturalization module when selected
- a task-local reference-reading brief when journal-specific rhetorical comparison is useful

Follow the global Stage/Step, Source Scope, evidence, confirmation, and version rules in `SKILL.md`.

## Scope

The default unit is one paragraph or active draft unit; the maximum rewriting unit is one
subsection. Manuscript-level work checks consistency, recurring patterns, abbreviations, and voice,
then routes selected units for local revision.

## Triage

Classify the selected text before rewriting:

| State | Action |
|-------|--------|
| Scientifically and structurally sound | Polish the unit |
| Evidence or citation gap | Mark `[POLISH BLOCKER]` and return to the evidence owner or review |
| Architecture conflict | Return to review and apply its Backpropagation Gate |
| Terminology conflict | Confirm the canonical term in `03_terminology.md` first |

## Steps

1. Confirm the unit and intended meaning.
2. Detect concrete language issues: vague subject/action, unnecessary abstraction, repetitive
   rhythm, generic transition, inflated wording, or scattered qualification.
3. If reference comparison would help, invoke `references/subagents/reference-reading.md` for the
   exact unit and use only its compact brief.
4. Propose the revision direction and confirm it with the user.
5. Create the next polish version according to `SKILL.md`.
6. Rewrite the selected unit while preserving evidence, claim strength, terminology, numbers,
   citations, and uncertainty.
7. Record the change in `04_writing-log.md` and obtain user confirmation.

Style naturalization uses `references/review/style-naturalization.md` plus at most one relevant leaf
module. Abstract polish additionally loads `references/workflow/polish-abstract.md`.

## Journal-Specific Learning

Use JIT reference reading for the current section or rhetorical question. The brief can inform
opening, transition, caveat, and closing choices as temporary task context.

## Output and Handoff

Polish writes `04_manuscript-reviewN-polishM.md` and records changes in the existing writing log.
Confirmed prose may proceed to review, another polish unit, or cover-letter preparation. Scientific
or structural blockers return to their authoritative owner.
