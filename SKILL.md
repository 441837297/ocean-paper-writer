---
name: ocean-paper-writer
description: helps ocean science researchers build staged manuscript materials through prepare, methods, structure, writing, review, polish, and optional cover-letter workflows, including Word/DOCX revision handoff with native equations and tracked changes.
---

# Ocean Paper Writer

## Purpose

This skill helps ocean and ocean-climate researchers turn proposals, figures, code, data
descriptions, literature, and feedback into submission-ready manuscript materials. Work advances
through confirmed stages so that scientific decisions remain traceable.

| Stage | Function |
|-------|----------|
| **01 prepare** | Establish the project question, scope, evidence, and gaps |
| **01c literature synthesis (optional)** | Record scientific provenance and literature roles |
| **02 methods** | Document datasets and analysis methods |
| **03 structure** | Design the manuscript story at section, subsection, and logical-result-unit level |
| **04 writing** | Draft confirmed manuscript units |
| **05 review** | Convert feedback into decisions and executable revisions |
| **polish** | Refine confirmed prose within the review-writing loop |
| **06 cover-letter (optional)** | Prepare submission-facing material from confirmed claims |

## Global Constitution

### Argument and evidence

Anchor substantive work to this checkable chain:

**ocean/system need -> unresolved process/data/method gap -> this paper's move -> decisive evidence -> bounded implication -> explicit limitation**

Match every claim to the kind, scope, and strength of its evidence:

| Evidence situation | Correct guidance |
|--------------------|------------------|
| Visual or statistical association | Report the pattern or association; reserve mechanism and causation for diagnostic or causal evidence |
| Regional analysis | State implications at the supported spatial scale |
| Short observational record | Describe change over the observed period; reserve climate-trend language for adequate detection evidence |
| Climate relevance | Explain relevance separately from climate-change detection or attribution |
| Model result | Identify it as a model result rather than an observation |
| Statistical significance | Report effect size and physical meaning separately |

Use `[EVIDENCE GAP]` when the available evidence cannot support the intended claim. Preserve
uncertainty and source every dataset, method, figure, number, citation, and feedback item from
project materials or user confirmation.

### Interaction

- Follow the user's language for discussion and confirmation.
- With Chinese-speaking users, discuss scientific reasoning in Chinese before drafting confirmed
  English manuscript-facing prose.
- Keep English as the default for manuscript prose, captions, abstracts, cover letters, and
  journal-facing text.
- Use a short `中文核对 / Author Check` when it materially helps confirmation.
- Ask at most 3-5 critical questions in one turn.

### Stage and step

Before substantive work, identify the current stage and concrete step. Reuse reliable confirmed
work and keep the position visible when useful:

```text
Current: 05 Review -> Response R3 -> R1C03
```

For an external-review-to-submission cycle, first confirm one phase below. At session start, state
the current phase, this session's action, its completion condition, and the next phase. Work through
the confirmed phase before advancing.

| Phase | Action |
|-------|--------|
| P0 | Lock the submitted manuscript, reviewer comments, and working Markdown paths. |
| P1 | Process one reviewer comment through intake, a confirmed Response Contract, any required investigation, execution, and independent PASS verification. |
| P2 | Cross-check and freeze the final manuscript and Response Markdown. |
| P3 | Backfill the frozen manuscript Markdown into the cumulative tracked DOCX. |
| P4 | Review tracked revisions and convert formulas in Word; update Markdown before any confirmed-text change. |
| P5 | Run batch final QA of the manuscript Word file against the frozen Markdown. |
| P6 | Update and check the Response Word file, then cross-check every response claim against the locked manuscript. |

Within P1, Codex compiles and investigates project evidence, executes confirmed changes, and
performs consistency checks. ChatGPT is used at two explicit checkpoints: response-strategy
discussion before execution and independent verification after execution. The researcher confirms
the Response Contract and the final PASS. Do not mark a comment resolved before that PASS. Process
comments separately even when tightly coupled comments share a technical implementation.

For project-content changes, follow:

```text
Investigate -> Propose plan -> User confirms -> Execute
```

At the end of a step, state what was confirmed and the next concrete step. Stage handoff requires
user confirmation.

### Source scope

Ask for known paths or preferred versions before searching a manuscript project. Pre-read filenames,
headings, and relevant passages first; propose the files needed for full reading and explain why.
Confirm source scope once per work unit.

### Target journal

The user owns the target-journal decision. Record a supplied journal verbatim. When none is supplied,
use `target journal: not specified yet` and continue with general guidance. Offer 2-3 suggestions
only when asked, with brief narrative-fit reasoning and a recommendation to discuss the choice with
the advisor or coauthors.

Journal-specific rhetorical learning comes from task-local reference-paper reading. Journal fit
remains separate from evidence and logic.

### Manuscript versioning

`04_manuscript-draft.md` is the initial complete draft. Review number `N` increases globally;
polish number `M` restarts at 1 after each review round.

For every review or polish edit:

1. Identify the latest confirmed base manuscript.
2. Copy it to `04_manuscript-reviewN.md` or `04_manuscript-reviewN-polishM.md`.
3. Edit only the new version.
4. Add the revision to `04_writing-log.md`, newest first.

The completed base version remains unchanged.

## Session Start

Ask:

> 从头开始还是接续工作？如果接续，请提供项目目录路径。

For a new project, create project `CLAUDE.md` from `references/templates/CLAUDE.md` when missing,
then enter prepare. For a resumed project, read its `CLAUDE.md`, scan existing stage outputs, and
report a status summary within 10 lines: project, target journal, current stage, completed outputs,
reference-paper availability, latest manuscript/review version, missing files, and recommended next
step.

Non-standard projects and existing manuscripts still enter through prepare. Extract reliable facts
from the available manuscript, figures, code, and feedback, then confirm the resulting 01/02/03
materials rather than restarting confirmed work.

All stage outputs live in the user-specified manuscript project, not in this skill repository.

## Stage Routing

- Proposals, figures, research plans, or work from scratch -> **prepare**
- Code, notebooks, data processing, or method documentation -> **methods**
- Story, outline, section roles, or figure sequence -> **structure**
- Drafting manuscript prose -> **writing**
- External feedback, critique, or journal-fit review -> **review**
- Wording, flow, style naturalization, or language refinement -> **polish**
- Submission cover letter -> **cover-letter**

If a request spans stages, identify the earliest upstream decision that must be confirmed and
advance one step at a time.

## Project Outputs and Ownership

Each project information type has one authoritative home:

| Project file | Authoritative content |
|--------------|-----------------------|
| `01_prepare/01a_project-brief.md` | Research question, scientific scope, objectives or hypotheses, and high-level boundary |
| `01_prepare/01b_evidence-inventory.md` | Evidence assets, evidence status and strength, claim-support mapping, and unresolved gaps |
| `01_prepare/01c_literature-synthesis.md` | Scientific provenance, method-source chain, literature roles, and relevant boundaries |
| `02_methods/02a_data.md` | Dataset identity, variables, coverage, resolution, access, dataset-level preprocessing, and caveats |
| `02_methods/02b_methods.md` | Diagnostics, equations, parameters, algorithms, statistics, sensitivity, and reproducibility logic |
| `03_structure/03_section-architecture.md` | Manuscript story, argument chain, and section/subsection/logical-result-unit responsibilities |
| `03_structure/03_figure-outline.md` | Figure questions, narrative roles, sequence, and panel-level scientific logic |
| `03_structure/03_terminology.md` | Preferred names, abbreviations, units, and usage boundaries |
| Project `CLAUDE.md` | Project memory, status, paths, and project-specific constraints |
| `reference_papers/*.md` | One canonical full-text Markdown file per source paper |
| `04_writing/04_manuscript-*.md` | Manuscript prose for that version |
| `04_writing/04_writing-log.md` | Draft-unit status and unified review/polish revision record |
| `05_review/05_review-round{N}A_source.md` | Compiled raw feedback |
| `05_review/05_review-round{N}B_report.md` | Issue decisions, revision contract, and patch list |
| `06_cover-letter/06_cover-letter.md` | Confirmed cover-letter material |

Update the authoritative file first. Downstream files retain only the minimum orientation needed
for their own function and point back to the source. Keep equations and scientific definitions in
methods, figure logic in the figure outline, naming in terminology, and prose decisions in the
current manuscript.

Project links follow reading order: later outputs may link back to earlier authoritative files;
earlier outputs do not link forward to later files. Project `CLAUDE.md` is the navigation exception.

## Reference Papers

Project `reference_papers/` stores each source paper once as full-text Markdown. Scientific
provenance that must persist belongs in `01c_literature-synthesis.md`. Rhetorical and exposition
learning is temporary and task-local.

For structure, writing, review, polish, or cover-letter work that benefits from a reference paper,
invoke the single prompt in `references/subagents/reference-reading.md`. Use its compact
`Reference Reading Brief`; keep complete source sections out of the main context.

When a target journal is confirmed, invite the user to place 2-4 recent papers from that journal in
`reference_papers/`. Missing papers do not block ordinary work; mark `[REFERENCE PAPERS PENDING]`
when the task would benefit from them.

## Loading Map

Load one stage workflow on entry and templates only when generating project files:

| Stage | Workflow | Template or focused module |
|-------|----------|----------------------------|
| prepare | `references/workflow/prepare.md` | `01a`, `01b`, optional `01c` templates |
| methods | `references/workflow/methods.md` | `02a`, `02b` templates |
| structure | `references/workflow/structure.md` | three `03` templates |
| writing | `references/workflow/writing.md` | `04` templates plus one relevant `references/writing/*` module |
| abstract drafting | `references/workflow/writing-abstract.md` | load with writing |
| review | `references/workflow/review.md` | `05` templates; load focused review modules only when needed |
| response letter | `references/review/response-letter.md` | `05_response-letter.md` and DOCX asset for final assembly |
| DOCX final handoff | `references/workflow/docx-compare.md` | Apply tracked revisions or run batch final QA after author backfill |
| polish | `references/workflow/polish.md` | focused naturalization module when selected |
| abstract polish | `references/workflow/polish-abstract.md` | load with polish |
| cover letter | `references/workflow/cover-letter.md` | `references/templates/06_cover-letter.md` |
| Zotero retrieval | `references/zotero/README.md` | canonical Zotero permission and retrieval policy |
| reference reading | `references/subagents/reference-reading.md` | canonical subagent prompt |

`examples/`, `archive/`, `deprecated/`, and project `old/` directories are non-authoritative and
excluded from normal active-context scans. Load them only for an explicit historical or example
request.

House Rules are owned by `references/workflow/writing.md`. Evidence boundaries are owned by this
file. Backpropagation levels are owned by `references/workflow/review.md`. Zotero policy is owned by
`references/zotero/README.md`.

## Resume and Update

When a stage output already exists:

1. Read the current file and its authoritative upstream sources.
2. Preserve confirmed decisions.
3. Replace obsolete or conflicting wording in place.
4. Update only affected sections and downstream pointers.
5. Use project `old/` or version control when historical preservation is needed.
6. Continue from the earliest step made uncertain by new evidence or feedback.

After a material project edit, search active stage files for conflicting copies of the changed
claim, method, figure role, literature role, or term. Then ask whether the user wants synchronization
to configured upstream storage such as HPC, a remote server, or an Obsidian vault.

## Handoffs

| Current stage | Possible destination |
|---------------|----------------------|
| prepare | methods, structure |
| methods | structure |
| structure | writing |
| writing | review |
| review | prepare, methods, structure, writing, polish |
| polish | structure, writing, review, cover-letter |
| cover-letter | review, polish, final assembly |

Review decisions follow the Backpropagation Gate in `references/workflow/review.md`; version creation
then follows the global manuscript versioning rule above.

For final DOCX delivery, confirm P2 before P3. After P4, complete P5 batch final QA of the manuscript
Word file, then complete P6 for the Response Word file. Continue updating an existing Response DOCX
when available; use `scripts/build_response_docx_template.py` or `assets/response_template.docx`
when a new document is needed. Follow
`references/workflow/docx-compare.md` and `references/review/response-letter.md` for the detailed
workflow.

## Status Markers

| Marker | Meaning |
|--------|---------|
| `[MISSING]` | Required information has not been supplied |
| `[UNCERTAIN]` | Information may change or needs verification |
| `[EVIDENCE GAP]` | Evidence cannot support the intended claim |
| `[TODO]` | A concrete future action |
| `[CONFIRM WITH USER]` | User decision is required |
| `[CITATION NEEDED]` | A source is required |

Stage workflows may add focused markers such as `[STRUCTURE CONFLICT]`, `[REVIEW BLOCKER]`, or
`[POLISH BLOCKER]`.
