# Review Workflow

## Purpose

Review converts author, advisor, coauthor, or external-review feedback into confirmed revision
decisions and executable patches. Full review keeps decision-making separate from file execution.

## Full Review Pipeline

1. ClaudeCode compiles raw feedback into `05_review-round{N}A_source.md`, preserving source wording.
2. ClaudeCode packages A_source, the current manuscript, and relevant project files for GPT.
3. GPT produces `05_review-round{N}B_report.md` with an Issue Log, Revision Contract, and Patch List.
4. The user confirms or adjusts the report decisions.
5. ClaudeCode applies the Backpropagation Gate below.
6. ClaudeCode creates the next manuscript version using the global version rule in `SKILL.md`.
7. ClaudeCode executes accepted patches and updates `04_writing-log.md`.
8. Each changed unit is checked against evidence, architecture, terminology, and the accepted issue.

ClaudeCode compiles and executes. GPT supplies Accept, Defer, and Reject decisions. The user confirms
scientific judgments and major tradeoffs.

## Inputs

- raw review input
- current manuscript
- relevant `01`, `02`, and `03` authoritative files
- project `CLAUDE.md`
- task-local reference-reading briefs when journal comparison is requested

For journal-specific review, invoke `references/subagents/reference-reading.md` with the exact
review question. Include the compact brief in the review packet rather than full reference-paper
sections.

## Review Dimensions

- argument and evidence support;
- claim strength and scientific scope;
- section and logical-unit function;
- figure and data logic;
- terminology and citation needs;
- target-journal narrative fit, when specified;
- language risk, diagnosed after scientific issues are resolved.

Apply the global evidence boundaries in `SKILL.md` and the House Rules in
`references/workflow/writing.md`; this workflow does not restate them.

## Backpropagation Gate

This is the canonical three-level classification used after the Revision Contract and before any
manuscript edit:

| Level | Use when | Action |
|-------|----------|--------|
| **Hard Backpropagation** | The accepted change alters the research question, main gap, central claim, method definition, evidence chain, figure scientific question, or manuscript-wide story | Update affected `01/02/03` owners from upstream to downstream, confirm the new state, then revise `04` |
| **Soft Architecture Update** | The accepted change adjusts a local section, subsection, or logical-result-unit responsibility without changing the manuscript-wide story | Update the affected part of `03_section-architecture.md`, confirm once, then revise `04` |
| **No Backpropagation** | The accepted change affects prose, citation placement, local claim wording, or grammar without changing upstream decisions | Revise the new `04` version directly |

Record the selected level in B_report as `hard`, `soft-architecture`, or `none`. Archive affected
upstream project files for hard changes when historical preservation is needed. Soft updates keep
unrelated architecture unchanged.

## Lightweight Unit Review

For one paragraph or one writing unit, a local review may diagnose logic, domain usage, advisor-like
concerns, and language without creating 05 files. It returns:

- the main issue and evidence;
- recommended destination;
- a proposed correction direction;
- items requiring user confirmation.

Structural findings still use the Backpropagation Gate before project files change.

## Reference and Advisor Handling

Focused review modules are loaded only for the selected task:

- `references/review/tutor-review-checklist.md` for advisor-perspective interpretation;
- `references/review/style-naturalization.md` and one relevant leaf for language diagnosis;
- `references/review/response-letter.md` for editor or reviewer responses.

Existing advisor comments remain the review source. Focused modules help interpret them and locate
the affected manuscript function.

## Outputs

```text
05_review/05_review-round{N}A_source.md
05_review/05_review-round{N}B_report.md
```

Use `references/templates/05_review-source.md` and `05_review-report.md`. Response letters use one
persistent project-defined draft and the dedicated response-letter workflow.

## Completion

A review round is complete when accepted issues are implemented in the new manuscript version,
deferred and rejected issues retain reasons, upstream changes are confirmed, and the writing log
records the completed patches. Handoff then goes to writing, polish, or another affected upstream
stage.
