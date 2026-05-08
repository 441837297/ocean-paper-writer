# Prepare Workflow

## Purpose

The prepare workflow turns proposals, research plans, figures, code descriptions, and early-stage ideas into structured manuscript preparation materials. Its goals are to:

- Extract and organize the available evidence before any drafting begins
- Help the user "look at figures and speak from evidence" — articulate what each result shows, what it supports, and where it falls short
- Create reusable Markdown source files that downstream stages consume
- Identify missing information early so the user knows what gaps remain
- Avoid drafting before evidence is organized

## When to Use

Run prepare when:
- The user provides a proposal, research plan, thesis chapter plan, or grant text
- The user has figures, code outputs, or data descriptions but no manuscript structure yet
- The user wants to revise or complete existing prepare-stage files (resume mode)
- The user wants to prepare structured inputs for the methods or structure stage (handoff mode)

Do **not** run prepare when:
- The user already has a complete draft and wants polishing or review
- The user only needs figure captions or abstract writing — use a specific skill instead

## Core Principle

> Prepare is a material-building stage, not a drafting stage.

The development philosophy follows the **少 → 多 → 少** (less → more → less) arc: the user starts with scattered inputs; prepare expands them into a structured evidence inventory; later stages compress them into a focused journal-ready narrative.

## Required Outputs

Prepare produces exactly two default user-facing files:

1. `01_prepare/01a_project-brief.md`
2. `01_prepare/01b_evidence-inventory.md`

Do **not** create additional files unless the user explicitly asks. If information is insufficient for a complete file, produce a draft version with `[MISSING]` and `[TODO]` markers.

## Interaction Flow

The prepare workflow proceeds through seven phases. Each phase can span multiple conversation turns.

```
1. Intake — ask what materials the user has. Start with: "Do you have a research plan, proposal, or chapter outline to start from?"
2. Clarify — resolve ambiguities. Ask 3–5 questions maximum per turn.
3. Extract — capture structured information for each figure, dataset, and code output.
4. Organize — build claim inventory, figure-to-claim matrix, and possible story routes.
5. Identify missing information — compare against templates, categorize gaps by priority.
6. Save — generate project brief and evidence inventory as Markdown in the conversation.
7. Confirm readiness — assess whether the material is ready for methods or structure stage.
```

### Clarify phase pacing

Each turn should ask **3–5 questions maximum**. If more questions remain, defer them to the next turn. Never ask the user to answer a dozen questions at once.

### Confirm readiness

- **Ready for methods:** data sources, code descriptions, processing workflow, key variables, and output figures are all documented. Missing details are non-critical.
- **Ready for structure:** core research question, target journal (or explicit "not specified yet"), figure-to-claim matrix, and at least one possible story route are in place.

## Missing Information Handling

Missing information is organized into three categories. The AI should use these to prioritize questions and mark gaps in output files.

### Critical Missing Information

Blocks progress to the next stage. Examples: research question unclear, study area not specified, data sources unknown, no figure or data description, target process undefined.

**Action:** Ask about critical gaps first. No more than 3–5 questions per turn.

### Useful but Not Blocking Information

Valuable but does not prevent prepare from completing its outputs. Examples: exact dataset version, complete figure captions, preliminary literature list, code path.

**Action:** Record as `[MISSING]` in the output files. Mention after critical gaps are resolved.

### Optional Refinement Information

Nice to have at any stage. Examples: preferred writing tone, submission timeline, coauthor preferences.

**Action:** Record as `[TODO]`. Only raise if the user brings them up.

### Marking Conventions

| Tag | Meaning |
|-----|---------|
| `[MISSING]` | Information the user has not provided and needs to provide |
| `[UNCERTAIN]` | Information that may change or needs verification |
| `[TODO]` | Action item for the user to complete later |

## Target Journal Handling

**Hard rule: Do not decide the target journal for the user.**

- If the user provides a target journal: record it verbatim. Do not argue, override, or substitute.
- If the user does not provide one: write `target journal: not specified yet`.
- If the user explicitly asks for suggestions: offer 2–3 options with brief reasoning. End with "discuss with your advisor or coauthors."
- Formal journal-profile loading happens in the structure stage, not prepare.
- Do not compress or reshape materials to fit a journal during prepare.

## Resume and Update Mode

When the user returns with existing files:

1. **Read** existing `01a_project-brief.md` and `01b_evidence-inventory.md`.
2. **Identify update points** — compare files against the current state of the project.
3. **Preserve** existing content. Update only changed sections.
4. **Apply updates** — modify sections, add rows, resolve `[MISSING]` items.
5. **Generate changelog:**

```markdown
## Update Summary

- Updated sections: [list]
- New information added: [brief description]
- Resolved missing items: [list]
- Remaining missing information: [list]
- Ready for next stage: [yes / no / partial]
```

## Handoff to Next Stages

### To methods stage

Needs: data sources identified, code/notebook descriptions, processing workflow documented, key variables listed, output figures listed.

### To structure stage

Needs: core research question stated, target journal recorded, evidence inventory with figure-to-claim matrix, at least one possible story route, unsafe claims identified.

### To writing stage

Normally follows structure, not prepare. Direct prepare-to-writing handoff only when the user explicitly requests a provisional draft and understands it will be restructured later.

## Template References

When generating prepare-stage materials, use these template files from the skill repository:

- `references/templates/01a_project-brief.md`
- `references/templates/01b_evidence-inventory.md`

The user-facing output files should be saved to the project directory as:

- `01_prepare/01a_project-brief.md`
- `01_prepare/01b_evidence-inventory.md`

## Guardrails

- **Do not draft the full manuscript in prepare.** The output is structured Markdown, not Introduction, Results, Discussion, or Abstract text.
- **Do not decide the target journal for the user.** Record the user's choice. Offer suggestions only when explicitly asked.
- **Do not invent datasets, figures, methods, or references.** Mark missing information as `[MISSING]`.
- **Do not convert visual patterns into mechanisms without supporting evidence.** Label evidence strength accurately.
- **Do not turn correlation into causation.** Capture uncertainty in the evidence inventory.
- **Do not turn regional findings into global claims without evidence.** A regional study supports regional claims.
- **Do not treat climate relevance as climate-change evidence.** Distinguish "important for climate" from "showing a climate-change signal."
- **Do not overcompress materials according to journal rules during prepare.** Compression happens in structure and writing stages.
- **Preserve uncertainty and missing information.** `[MISSING]`, `[UNCERTAIN]`, and `[TODO]` flags are features, not bugs.
