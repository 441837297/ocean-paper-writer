# Structure Workflow

## Purpose

Structure turns confirmed prepare and methods materials into a manuscript architecture. It works at
section, subsection, and logical-result-unit level. Writing later decides paragraph boundaries from
this architecture and the local prose context.

## Inputs

- `01_prepare/01a_project-brief.md`
- `01_prepare/01b_evidence-inventory.md`
- optional `01_prepare/01c_literature-synthesis.md`
- `02_methods/02a_data.md`
- `02_methods/02b_methods.md`
- user-confirmed story direction and target journal status
- canonical full-text papers in `reference_papers/`, when available

Follow the global Stage/Step, Source Scope, confirmation, evidence, and target-journal guidance in
`SKILL.md`.

## Outputs

| File | Local responsibility |
|------|----------------------|
| `03_section-architecture.md` | Story, argument chain, section/subsection/result-unit roles, claim placement, and narrative boundaries |
| `03_figure-outline.md` | Figure questions, narrative roles, sequence, and panel-level scientific logic |
| `03_terminology.md` | Naming, abbreviations, units, and usage boundaries |

These files point to authoritative prepare and methods facts rather than copying their inventories,
equations, or implementation details.

## Steps

1. Confirm the central research question and current target-journal status.
2. Select one story route supported by the evidence inventory.
3. Build the argument chain: need -> gap -> move -> decisive evidence -> implication -> limitation.
4. Define the primary manuscript claim and the supporting claims used in each section.
5. Assign a clear responsibility to each section and useful subsection or logical result unit.
6. Map each result unit to supporting evidence and figure IDs.
7. Define each figure's scientific question, narrative role, and main/supplement status.
8. Initialize the terminology table from established domain literature and confirmed project usage.
9. Check that each project fact has the single owner defined in `SKILL.md`.
10. Present the three files for user confirmation before handoff to writing.

## Reference-Paper Guidance

When reference papers can inform a specific architecture decision, invoke
`references/subagents/reference-reading.md` with that bounded question. Use the resulting
`Reference Reading Brief` as temporary context. Store persistent scientific provenance in `01c`,
not in the 03 files.

Reference-paper observations may guide section emphasis or evidence progression. The project
evidence and user-confirmed scientific direction remain authoritative.

## Readiness Check

Structure is ready for writing when:

- the argument chain is coherent or its gaps are marked;
- every section and planned logical result unit has a clear responsibility;
- claim placement matches available evidence;
- main figures form a usable evidence sequence;
- terminology needed for drafting is stable;
- the three 03 files contain compatible, non-duplicated decisions.

Mark conflicts between a proposed narrative and available evidence as `[STRUCTURE CONFLICT]` and
resolve them with the user before drafting the affected unit.

## Resume and Review Handoff

On resume, preserve confirmed architecture and update only the decisions affected by new evidence,
new feedback, or a changed journal target. Replace obsolete wording in place.

Review-originated structural changes follow the Backpropagation Gate in
`references/workflow/review.md`. This workflow receives the affected upstream fields, updates them
from coarse to fine, and returns the confirmed architecture to writing.

## Templates

- `references/templates/03_section-architecture.md`
- `references/templates/03_figure-outline.md`
- `references/templates/03_terminology.md`
