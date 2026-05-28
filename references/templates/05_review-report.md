# 05 Review — Round N

*This file is either: (A) a review prompt ready to send to an external LLM, or (B) a structured
review report classifying external review input and mapping it to revision actions.*
*If material is missing, use `[REVIEW BLOCKER]`. If review sources conflict, use `[REVIEW CONFLICT]`.*

## Project Metadata

- project name:
- working title:
- target journal:
- review round: N
- review source: [author self-review / advisor feedback / external LLM review / combined]
- review scope: [unit-level / section-level / manuscript-level]
- section / unit reviewed:
- last updated:
- source manuscript: `04_writing/04_manuscript-draft.md` (or latest revision)
- source structure: `03_structure/03_manuscript-structure.md`
- supporting files:
  - `01_prepare/01a_project-brief.md`
  - `01_prepare/01b_evidence-inventory.md`
  - `02_methods/02a_data.md and 02_methods/02b_methods.md`

---

## Part A — Review Prompt (for external LLM)

*Populate this section when the user wants to send the manuscript to an external LLM for review.
Delete or skip if review input already exists.*

### Review Mode

[Directed review — user-specified focus] / [Template-guided review — distilled literature template as framework]

### Review Focus (if directed)

[User-provided concerns, advisor feedback, specific questions, or sections to scrutinize.]

### Prompt Text

---

*Copy the prompt below and send it to GPT / Gemini / other LLM. Then bring the response back
for processing in Part B.*

```
[Assembled prompt including manuscript text, review framework, focus areas, and output format expectations.]
```

---

## Part B — Structured Review Report

*Populate this section after external review input has been received.*

### Review Input Summary

[Source of review input, date received, scope of review.]

### Materials Reviewed

- [file path or section] — status: [loaded / available / [MISSING] / [REVIEW BLOCKER]]
- [file path or section] — status: [...]

### Overall Diagnosis

[3–6 sentence summary synthesizing the review input. What is the single biggest issue raised?
Is the manuscript on track or does it need significant revision before moving forward?]

## Issue Log

| Issue ID | Severity | Type | Action label | Workflow destination | Location | Source | Problem | Recommended action | Status |
|----------|----------|------|--------------|----------------------|----------|--------|---------|-------------------|--------|
| R01 | high | evidence | BLOCKED_BY_EVIDENCE | prepare / methods | Results para 2 | [author/advisor/LLM] | [problem description] | [specific action] | [TODO] |
| R02 | medium | claim | SOFTEN_CLAIM | writing / polish | Discussion para 1 | [...] | [...] | [...] | [TODO] |
| R03 | low | language | POLISH_LANGUAGE | polish | Abstract | [...] | [...] | [...] | [TODO] |

**Severity:**
- `high` = blocks manuscript credibility
- `medium` = weakens the argument
- `low` = improves clarity or polish

**Type:**
`evidence` / `claim` / `structure` / `methods` / `figure` / `citation` / `journal fit` / `language` / `advisor feedback`

**Action label:**
`SOFTEN_CLAIM` / `ADD_EVIDENCE` / `ADD_METHOD_DETAIL` / `CHECK_STATISTICS` / `ADD_CITATION` / `REORDER_FIGURE_LOGIC` / `RESTRUCTURE_SECTION` / `REWRITE_UNIT` / `POLISH_LANGUAGE` / `AUTHOR_INPUT_NEEDED` / `BLOCKED_BY_EVIDENCE`

**Workflow destination:**
`prepare` / `methods` / `structure` / `writing` / `review` / `polish` / `user`

**Status:**
`[TODO]` / `in progress` / `resolved` / `[CONFIRM WITH USER]`

## Evidence Support Review

[Per-claim or per-paragraph assessment of whether claims are supported by figures, data, methods, or citations. Note unsupported claims, overinterpreted visual patterns, and missing citations.]

| Claim / paragraph | Evidence cited | Evidence sufficient? | Notes |
|-------------------|---------------|---------------------|-------|
| [claim or paragraph] | [figure / data / citation] | [yes / partial / no] | |

## Claim Strength Review

[Assessment of verb strength, mechanism language, causation/attribution boundaries, and hedging balance. Identify overclaiming, underclaiming, and unjustified mechanism language.]

- Claim strength issues: [list]
- Mechanism language not justified by evidence: [list]
- Hedging concerns: [list]

## Section Function Review

[For each reviewed section, assess whether it performs the narrative job assigned in the structure file.]

| Section | Assigned job (from structure) | Does draft execute it? | Issues |
|---------|------------------------------|----------------------|--------|
| [section] | [narrative job] | [yes / partial / no] | |

## Figure and Data Logic Review

[Assessment of figure order, figure-claim alignment, caption-text consistency, and methods sufficiency.]

- Figure order vs. structure plan: [matches / deviates — note differences]
- Figure-claim alignment: [each figure supports at least one claim?]
- Caption issues: [list]
- Methods sufficiency: [can a reader understand how figures were generated?]

## Target Journal Fit Review

[Only populated when a target journal is specified. Assess claim depth, section emphasis, narrative structure, and voice against the journal profile.]

- Journal profile used: [name]
- Narrative fit: [issues]
- Claim depth fit: [issues]
- Section emphasis fit: [issues]
- Voice consistency: [issues]

## Ocean Science Overclaiming Check

| Risk type | Location | Current wording / claim | Why risky | Recommended boundary |
|-----------|----------|------------------------|-----------|---------------------|
| visual pattern → mechanism | [section] | [quote] | [reason] | [bounding language] |
| correlation → causation | [...] | [...] | [...] | [...] |
| regional → global | [...] | [...] | [...] | [...] |
| short record → climate trend | [...] | [...] | [...] | [...] |
| climate relevance → climate-change evidence | [...] | [...] | [...] | [...] |
| model output → observed fact | [...] | [...] | [...] | [...] |
| statistical → physical significance | [...] | [...] | [...] | [...] |

## Citation and Literature Needs

| Location | What is needed | Context | Priority |
|----------|---------------|---------|----------|
| [section / paragraph] | [citation] | [why it is needed] | [high / medium / low] |

## Advisor Feedback Mapping

*Only populated when advisor comments are provided.*

| Comment | Type | Affected section | Required action | Workflow destination | Priority |
|---------|------|-----------------|----------------|---------------------|----------|
| [advisor comment] | [evidence / structure / methods / writing / language / journal fit] | [section] | [revision action] | [prepare / methods / structure / writing / polish] | [high / medium / low] |

## Revision Priority Plan

### High priority
- [Issue ID] — [Action label] — [recommended action] — destination: [workflow/user]

### Medium priority
- [Issue ID] — [Action label] — [recommended action] — destination: [workflow/user]

### Low priority
- [Issue ID] — [Action label] — [recommended action] — destination: [workflow/user]

## Handoff Recommendation

[One of: back to writing / back to structure / back to methods / back to prepare / forward to polish]

- Destination:
- Rationale:
- What the next stage needs from this report:

## Questions for User Confirmation

1. [Question about revision priorities or unresolved issues]
2. [Question about conflict resolution]
3. [Question about handoff direction]

## Update Summary

*Populated only during resume mode — when a previous review report exists and a new review pass is added.*

- Review pass added: [date — scope — section reviewed — review source]
- Issues resolved: [list]
- Issues remaining: [list]
- New issues: [list]
- Recommended next action: [handoff destination]
