# Review Workflow

## Purpose

Review converts author, advisor, coauthor, or external-review feedback into confirmed revision
decisions and executable patches. Codex manages project evidence and execution; ChatGPT supports
strategy discussion before execution and independent verification afterward; the researcher makes
the final decision.

## Full Review Pipeline

### A. Intake

1. Codex compiles feedback into `05_review-round{N}A_source.md` without changing its meaning.
2. Identify the reviewed manuscript version and locate only the relevant decision records,
   terminology, figures, tables, code, analyses, and previous responses.
3. Record dependencies between comments without merging their responses.
4. Prepare a compact ChatGPT strategy packet and tell the user exactly which files to upload. Include
   the original comment, the relevant original manuscript text and context, and only the supporting
   files needed to understand the issue. Include the full manuscript only for manuscript-wide issues.

### B. ChatGPT Strategy Discussion

The user discusses one comment at a time with ChatGPT and brings back a confirmed Response Contract.
Record it in `05_review-round{N}B_report.md` with: Issue ID, what the reviewer actually asks, direct
answer, confirmed facts, required code/analysis/manuscript actions, prohibited claims or additions,
expected response length, and verification criteria. Internal scientific reasoning may remain
detailed, but it is not final response prose. Wait for researcher confirmation before execution.

### C. Investigation

When facts remain unresolved, Codex checks the relevant code, formulas, units, implementation, or
results before editing prose. Report factual findings without inventing an explanation. If findings
materially change the Response Contract, stop and ask the user to take them back to ChatGPT, then
confirm the revised contract.

### D. Execution

Apply the Backpropagation Gate below, create the next manuscript version under the global version
rule, and execute one comment or tightly coupled technical unit at a time. Shared calculations or
code changes may serve multiple comments, but each comment retains its own direct response. Update
code, analyses, figures, tables, manuscript, terminology, and `04_writing-log.md` only as required by
the contract. Draft the concise response from the confirmed facts and completed revision.

### E. Independent ChatGPT Verification

Do not mark execution as resolution. For each completed comment, prepare a compact verification
packet containing the original comment, confirmed Response Contract, relevant result, Chinese
response logic, English response, relevant original manuscript text, revised text or concise diff,
and the verification criteria. Ask ChatGPT to check the chain sentence by sentence:
`original comment -> Chinese logic -> English response -> original text -> revised text`.
ChatGPT returns `PASS` or `REVISE` with specific reasons. Codex applies required corrections and
repeats verification. Mark the issue resolved only after the researcher confirms PASS.

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

A review round is complete when every accepted issue has a researcher-confirmed PASS, deferred and
rejected issues retain reasons, upstream changes are confirmed, and the writing log records the
completed patches. Codex then checks that all comments are covered and that manuscript and response
agree on equations, symbols, figures, tables, units, terminology, values, locations, and cross-section
claims. Finally, the user or external ChatGPT cold-reads the complete response letter and revised
manuscript without relying on the internal rationale, checking sentence-level language, directness,
terminology, logic, overclaiming, and defensive repetition. Handoff then goes to writing, polish, or
another affected upstream stage.
