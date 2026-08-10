# Prepare Workflow

## Purpose

Prepare turns available research materials into a concise project brief and an evidence inventory.
It establishes what the project asks, what evidence exists, and what remains unresolved.

## Inputs

- proposal, research plan, manuscript, or notes;
- figures and result descriptions;
- available code and data descriptions;
- user-confirmed scientific scope and target-journal status.

Follow the global Stage/Step, Source Scope, interaction, evidence, and target-journal guidance in
`SKILL.md`.

## Outputs

| File | Responsibility |
|------|----------------|
| `01a_project-brief.md` | Research question, scope, objective or hypotheses, and high-level claim boundary |
| `01b_evidence-inventory.md` | Evidence assets, evidence strength, claim-support mapping, and unresolved gaps |
| `01c_literature-synthesis.md` (optional) | Scientific provenance, method-source chain, and section-specific literature roles |

## Steps

1. Inventory the supplied materials and identify their reliability.
2. State the central research question and scientific scope.
3. Record objectives, hypotheses, or expectations supplied by the user.
4. Build an evidence inventory from figures, outputs, tables, and verified descriptions.
5. Map candidate claims to supporting evidence and supported scope.
6. Mark evidence gaps and the few missing items that block methods or structure.
7. Create optional `01c` only when persistent literature roles are useful.
8. Present the outputs for user confirmation and recommend the next stage.

For each evidence asset, record what it directly supports, its current strength, and what additional
evidence would be needed for a broader claim. Apply the global evidence boundaries in `SKILL.md`.

## Literature Synthesis

`01c` records scientific knowledge that should persist across stages: what each paper contributes,
which method or claim it supports, and relevant limitations. Rhetorical learning from a paper is a
temporary JIT task handled by `references/subagents/reference-reading.md` and does not enter `01c`.

## Completion

Prepare is complete when the research question is usable, available evidence is traceable, major
claim-support gaps are visible, and the next stage has the inputs it needs. Use `[MISSING]`,
`[UNCERTAIN]`, and `[EVIDENCE GAP]` for unresolved items.

On resume, update only affected facts and replace stale wording. Templates:
`references/templates/01a_project-brief.md`, `01b_evidence-inventory.md`, and optional
`01c_literature-synthesis.md`.
