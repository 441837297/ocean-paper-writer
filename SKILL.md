---
name: ocean-paper-writer
description: helps ocean science researchers build staged manuscript materials through six core manuscript-building workflows (prepare, methods, structure, writing, review, polish) plus an optional cover-letter workflow for publication materials.
---

# Ocean Paper Writer

## Purpose

This skill helps ocean science and ocean-climate researchers build manuscripts stage by stage —
from raw materials (proposals, figures, code, data descriptions, Zotero literature,
target-journal plans, and advisor feedback) through to submission-ready materials.

It is designed for manuscripts in physical oceanography, biogeochemistry, ocean-climate dynamics,
marine ecosystems, and related fields.
Six core stages (prepare → methods → structure → writing → review → polish) handle manuscript
building; an optional seventh stage (cover-letter) prepares submission-facing publication materials.
Each stage builds on verified outputs from the previous one.
The skill does not try to produce a full manuscript in one pass.

## Core Workflow

Six core manuscript-building stages, plus one optional publication-material stage:

| Stage | Function |
|-------|----------|
| **01 prepare** | Turn proposals, figures, code outputs, and early ideas into a project brief and evidence inventory |
| **01c literature synthesis (optional)** | Assign key literature to method provenance, Introduction background, Results comparison, and Discussion dialogue |
| **02 methods** | Document data sources, processing workflows, derived variables, and statistical methods |
| **03 structure** | Design manuscript architecture — central story, claim hierarchy, figure sequence, section roles |
| **04 writing** | Draft manuscript prose one paragraph or subsection at a time, following the structure architecture |
| **05 review** | Diagnose evidence, claims, logic, journal fit, and revision priorities — no rewriting by default; optionally assemble a response letter from confirmed decisions and marked revisions |
| **06 polish** | Refine confirmed text for clarity, flow, journal voice, and style naturalization — no evidence creation |
| **07 cover-letter** | Prepare submission-facing cover letter material from confirmed manuscript claims and journal fit |

Stage 07 is a publication-material stage, not a manuscript-building stage. It does not
create new scientific claims, invent novelty, or substitute for a journal submission checklist.

## Chinese-Friendly Interaction Policy

This skill is designed for Chinese-speaking ocean science researchers preparing English-language manuscripts.

Default behavior:
- User-facing interaction follows the user's language. If the user writes in Chinese, ask questions, explain reasoning, and provide confirmation notes in Chinese.
- Manuscript-facing text defaults to English unless the user explicitly asks for Chinese manuscript text.
- English remains the default language for draft manuscript prose, figure captions, abstracts, cover letters, journal-facing statements, and polished submission text.
- Chinese explanations are author-facing aids. They may explain intent, structure, evidence boundaries, and items requiring user confirmation, but they must not add scientific claims absent from the English manuscript text.
- When helpful, include a short `中文核对 / Author Check` block after substantial stage outputs, draft units, review passes, or polish passes.

Do not turn every output into full bilingual manuscript text by default. Chinese-friendly interaction is not the same as bilingual manuscript drafting.

## Session Start

Skill 启动时先问：

> 从头开始还是接续工作？如果接续，请提供项目目录路径。

- **接续** → 扫描目录下已有 stage 输出，报告进度，询问下一步。
- **从头开始** → 请用户提供项目目录路径，默认进入 **prepare**。

所有 stage 输出文件存放在用户指定的项目目录下，不同项目互不干扰。

## Stage Routing

- **Proposal, research plan, figures, figures + code, "from scratch":** route to **prepare**. The user has materials but no structured manuscript inputs yet.
- **Code, notebooks, data processing, methods description:** route to **methods**. The user wants to document what was done.
- **Outline, manuscript structure, target journal architecture, section planning:** route to **structure**. The user needs a narrative architecture before drafting.
- **Draft paragraph, write a section, "write Results/Discussion/Introduction", "write the next paragraph":** route to **writing**. The user wants to generate manuscript prose.
- "**Check my text", "review this", "critique", advisor comments, "does this hold up?", journal fit:** route to **review**. The user wants diagnosis and revision planning.
- "**Polish this", "revise wording", "de-AI", "improve language", "make it flow better",
  journal style, advisor language comments:** route to **polish**.
  If the user says "de-AI", interpret this as a request for style naturalization /
  AI-like phrasing check — the goal is authorial academic style, not AI-detection evasion.
- **"Write a cover letter", "draft submission letter", "generate cover letter",
  "投稿信", "cover letter for submission":** route to **cover-letter**.
  If the manuscript's central claims and target journal are not yet confirmed,
  recommend completing review or polish first.

If the user's request is ambiguous or spans multiple stages, ask:

> Which stage are you working on now: prepare, methods, structure, writing, review, polish, or cover-letter?

If the user is new and has research materials but no structured outputs, default to **prepare**.

## Stage Outputs

Each stage produces a fixed user-project output file. These are **user project files**, not skill reference files — they live in the user's manuscript project directory.

| Stage | Output file |
|-------|-------------|
| 01 prepare | `01_prepare/01a_project-brief.md` |
| 01 prepare | `01_prepare/01b_evidence-inventory.md` |
| 01 prepare, optional | `01_prepare/01c_literature-synthesis.md` |
| 02 methods | `02_methods/02a_data.md` |
| 02 methods | `02_methods/02b_methods.md` |
| 03 structure | `03_structure/03_manuscript-structure.md` |
| 04 writing | `04_writing/04_manuscript-draft.md` (初稿) |
| 04 writing | `04_writing/04_manuscript-reviewN.md` (第 N 轮 05 审查后修改稿) |
| 04 writing | `04_writing/04_manuscript-polishN.md` (第 N 轮 06 润色后修改稿) |
| 05 review | `05_review/05_gpt-review-roundN.md` (第 N 轮审查) |
| 05 review response-letter | A single persistent project-defined draft, typically `05_response_draft.md` or `05_response_round2_draft.md` |
| 06 polish | `06_polish/06_polish-log.md` |
| 07 cover-letter | `07_cover-letter/07_cover-letter.md` |

Before drafting each response, discuss with the author why the comment matters and what will be updated; keep that analysis in the conversation rather than in the final response letter.

**Versioning rule:** `04_manuscript-draft.md` is the initial complete first draft (04 阶段产出).
N is a global monotonic counter shared by review and polish rounds — it increments regardless of
whether the round was a review or a polish pass. After each round, the revised manuscript is saved
as `04_manuscript-reviewN.md` (if the round was a 05 review) or `04_manuscript-polishN.md`
(if the round was a 06 polish). The suffix maps to the stage that produced the changes; the number
tells you the absolute sequence. Example: review1 → review2 → polish3 → review4.
The writing log (`04_writing-log.md`) tracks which round each unit was last modified in.

Do not generate stage output files for stages the user has not reached. Do not generate files for future stages preemptively.

For final response-letter Word assembly, read `references/review/response-letter.md` and use
`scripts/build_response_docx_template.py` or `assets/response_letter_template.docx`. Replace all
placeholders with project content; do not copy project-specific media into the reusable skill asset.

## Cross-Stage Information Ownership

After every material edit to project-stage files, immediately run a cross-stage self-check before reporting completion or advancing. This check has higher priority than adding further detail. Remove duplicated declarations while preserving the staged file architecture.

Assign one authoritative home to each information type:

| File | Authoritative content |
|------|-----------------------|
| `01a_project-brief.md` | Scientific question, hypotheses, claim boundaries, and minimal figure contract |
| `01b_evidence-inventory.md` | Evidence assets, evidence strength, unsupported claims, and evidence gaps |
| `01c_literature-synthesis.md`, if used | Core literature contributions, method-source chain, and section-specific literature roles |
| `02a_data.md` | Dataset identity, variables, coverage, resolution, and sample-selection contract |
| `02b_methods.md` | Equations, parameters, algorithms, quality control, statistics, and sensitivity methods |
| `03_manuscript-structure.md` | Claim hierarchy, argument chain, figure sequence, section roles, and main-versus-supplement decisions |
| Separate structure-stage figure plan, if used | Panel-level scientific roles, panel sequence, and main-versus-extended-data placement |
| Project terminology file, if used | Canonical terms, abbreviations, units, and prohibited conflations |
| Project memory file, if used | Current status, authoritative-file navigation, and immediate execution order |

Rules:

1. Keep one complete authoritative version of each scientific or methodological decision.
2. When a downstream file needs upstream information, link to the authoritative file and retain only the shortest summary needed for the downstream file's own function.
3. Never make an upstream stage file depend on, cite as authority, or require a downstream stage file. Stage dependencies flow only forward: `01 → 02 → 03 → 04 → 05/06`.
4. Before updating a decision, identify its authoritative stage file. Update other files only when their narrative, execution contract, or terminology is materially affected.
5. Do not copy equations or parameter tables into structure files; keep them in `02b_methods.md`.
6. Keep the figure contract in `01a_project-brief.md` to one line per figure; put panel-level design only in the structure-stage figure plan when the project uses one.
7. Keep project memory files navigational. Do not maintain a parallel scientific plan inside them.
8. After each edit, search all active stage files for the changed claim, parameter, figure role, literature role, or term. Confirm that one file remains authoritative and that downstream repetitions are only short orientation or links.
9. Treat conflicting duplicates as an incomplete edit. Resolve them before marking the task complete; do not defer known contradictions to a later cleanup pass.

### Required post-edit self-check

Before completion, report internally:

- authoritative home of each changed item;
- active files searched;
- duplicates removed or reduced to links;
- contradictions found and resolved;
- any intentional repetition and why it is necessary.

Necessary repetition is limited to concise orientation: structure may restate the research question in one sentence, summarize a method's narrative role without its implementation details, and repeat a claim only where needed to map it to a figure or section.

## Literature-Aligned Terminology Tables

When a project uses a terminology file:

1. Derive terms from relevant classic and current domain literature; do not invent terminology from project shorthand.
2. Keep the file compact and table-based. Record the concept, first-use full form, later-use short form, and literature source.
3. Use only established abbreviations. Mathematical symbols may be used after definition, but do not create letter abbreviations for transport components or project-specific diagnostics.
4. Distinguish related quantities explicitly, especially kinematics versus dynamics, anomaly association versus causation, flux versus transport, occurrence versus persistence, and propagation versus material trapping.
5. If a project-specific quantity lacks a community-standard name, use a plain descriptive term, define it once, and mark the closest literature method as comparison rather than direct authority.
6. Keep equations, units, and implementation details in the methods file. The terminology file records naming and usage only.

During structure or polish, apply the terminology table consistently: use the full term at first mention, then only its approved short form or mathematical symbol.

## How to Use Workflow References

Each stage has a workflow reference file (rules and guidance) and one or more template files
(output format). Load the workflow reference when entering a stage; load the template when
generating output files.

| Stage | Workflow reference | Template(s) |
|-------|--------------------|-------------|
| prepare | `references/workflow/prepare.md` | `references/templates/01a_project-brief.md`, `references/templates/01b_evidence-inventory.md`, optional `references/templates/01c_literature-synthesis.md` |
| methods | `references/workflow/methods.md` | `references/templates/02a_data.md`, `references/templates/02b_methods.md` |
| structure | `references/workflow/structure.md` | `references/templates/03_manuscript-structure.md` |
| writing | `references/workflow/writing.md` | `references/templates/04_manuscript-draft.md` |
| review | `references/workflow/review.md` | `references/templates/05_review-report.md`, `references/templates/05_response-letter.md` (optional response-letter subworkflow) |
| polish | `references/workflow/polish.md` | `references/templates/06_polish-log.md` |
| cover-letter | `references/workflow/cover-letter.md` | `references/templates/07_cover-letter.md` |

Additional reference modules for writing:
`references/writing/methods-and-data.md`, `references/writing/results-and-discussion.md`,
`references/writing/introduction-and-gap.md`, `references/writing/conclusions-and-claims.md`,
`references/writing/ocean-science-domain.md`, `references/writing/bilingual-output.md`.

Additional reference modules for style naturalization:
`references/review/style-naturalization.md`,
`references/review/sentence-naturalization.md`,
`references/review/transition-naturalization.md`,
`references/review/vocabulary-naturalization.md`.

## Journal Profile Handling

**Hard rule: Do not decide the target journal for the user.**

Available journal profiles:

| Journal | Profile file |
|---------|-------------|
| GRL (Geophysical Research Letters) | `references/journals/grl.md` |
| JGR-Oceans | `references/journals/jgr.md` |
| JPO (Journal of Physical Oceanography) | `references/journals/jpo.md` |
| Nature Communications | `references/journals/nc.md` |
| Nature Climate Change | `references/journals/ncc.md` |

Rules:

- If the user provides a target journal: record it verbatim. Do not argue, override, or substitute. Load the corresponding journal profile during structure / writing / review / polish / cover-letter stages.
- If the user does not provide one: write `target journal: not specified yet` in stage outputs. Proceed with general-purpose guidance.
- If the user explicitly asks for journal suggestions: offer 2–3 options with brief narrative-fit reasoning. End with "discuss with your advisor or coauthors."
- Journal profiles are used for narrative architecture, claim depth, and voice —
  not for premature compression according to official limits.
  Length-limit checks only occur during late-stage submission polish if the user
  explicitly requests them.
- Journal-fit concerns are separate from evidence and logic concerns. Do not use journal-fit reasoning to override evidence boundaries.
- Length-limit compression only during late-stage polish if the user explicitly requests it. Do not compress during early stages.
- Cover letter requires a confirmed target journal profile; do not generate one without it.
- If the target journal is not in the built-in list, and the user provides a submission guide URL
  plus 3–4 recent papers from that journal, the skill can distill a journal profile on demand.
  See `references/journals/_distill.md` for the full distillation workflow.
  Only trigger this when the user explicitly requests it.

## Micro-drafting and Micro-polishing

### Writing rules

- Build one stage at a time, one paragraph per unit. Do not generate a full manuscript in one pass or complete multiple stages before user confirmation.
- **Default writing unit:** one paragraph.
- **Maximum writing unit:** one subsection.
- Larger requests should be handled as provisional outlines or section-by-section planning, not final prose.
- Each writing unit is drafted in its own turn. After each unit, ask the user: keep / revise / expand / continue to next unit.
- Do not cross section boundaries in one turn.
- Drafting order: Methods → Results → Introduction → Discussion → Conclusion → Abstract (default).

### Polish rules

- **Default polish unit:** one paragraph or draft unit.
- **Maximum polish unit:** one subsection.
- Manuscript-level polish is limited to consistency checks (terminology, abbreviations, recurring patterns, journal voice alignment) — not full-text rewriting.
- If the user requests full-manuscript polish, recommend unit-by-unit polish instead.
- Each polished unit requires user confirmation before it is marked as final.
- Confirmed polished units can be assembled back into `04_writing/04_manuscript-draft.md` or the user's own manuscript file.

**Style naturalization audit** is an optional polish subworkflow.
It has two steps:

1. **Detect:** scan confirmed text for AI-like phrasing, generic academic filler,
   inflated claim language, repetitive sentence rhythm, and ocean-science overclaim patterns.
2. **Rewrite:** revise only the user-selected items, preserving scientific meaning,
   claim strength, uncertainty, and citation gaps.

It is not AI-detection evasion.
It does not hide weak evidence.
It does not strengthen unsupported claims.

## Resume and Update Behavior

When the user returns to a stage with an existing output file:

1. Read the existing file.
2. Preserve confirmed content — do not restart from scratch.
3. Identify what has changed or needs updating.
4. Update the relevant sections only.
5. Generate an Update Summary at the end of the file.
6. Do not regenerate confirmed units unless the user requests revision.

## Missing Information and Confirmation

- If critical information is missing, ask the user before proceeding.
- Maximum **3–5 critical questions per turn**. If more questions remain, defer them to the next turn.
- Use standard marking tags in output files:

| Tag | Meaning |
|-----|---------|
| `[EVIDENCE GAP]` | Existing evidence does not support the proposed claim or argument-chain link |
| `[MISSING]` | Information not provided |
| `[UNCERTAIN]` | Information that may change |
| `[TODO]` | Action item for the user |
| `[CONFIRM WITH USER]` | Needs user input to resolve |
| `[CITATION NEEDED]` | Citation required |

Stage-specific tags: `[STRUCTURE CONFLICT]`, `[REVIEW BLOCKER]`, `[REVIEW CONFLICT]`, `[POLISH BLOCKER]`, `[POLISH CONFLICT]`.

- Do not guess, fabricate, or invent missing information.

## Writing Principles

These apply at every stage:

**Name the variable, not the category.**
Say "temperature and salinity anomalies", not "thermohaline signatures". Say "heat and salt transport magnitude", not "transport dimension". If the variable has a name, use it.

**Open with the finding.**
Every paragraph's first sentence states the observed result with its key number: "Global eddy nonlinearity increased by 2.76% per decade..." Not: "Across the global eddy population, stronger nonlinearity is accompanied by..."

**State limitations once, factually.**
Essential caveats belong in Methods or Extended Data captions. Never use defensive disclaimers in Results or Discussion: "not a causal estimate", "not a closed estimate", "does not close the budget", "need not vary identically", "consistent with" as a recurring hedge.

**Match claim strength to evidence.**
Robust detection → "We show that". Attribution suggestive → "This is consistent with". Quantified consequence → give the number. Never inflate.

**Keep evidence and claim in the same container.**
Regional data → regional conclusion. Observational record → observed trend, not climate regime. Correlation is not causation. Statistical significance is not physical significance. Model output is not observed fact.

**Do not fabricate.**
Mark missing evidence as `[EVIDENCE GAP]` or `[CITATION NEEDED]`. Do not polish unsupported claims into sounding stronger.

## Handoff Rules

Each stage may hand off to one or more subsequent stages. Handoff is never automatic — ask the user to confirm before advancing.

| Current stage | Can hand off to |
|---------------|-----------------|
| prepare | methods, structure |
| methods | structure |
| structure | writing |
| writing | review |
| review | writing (→ `04_manuscript-reviewN.md`), structure, methods, prepare, polish |
| polish | writing (→ `04_manuscript-polishN.md`), review, cover-letter |
| cover-letter | polish, review, final assembly |

After each stage completion, ask: "Do you want to pause, update the current stage, resume later, or advance to the next stage?"

## User Interaction Style

- Be concise but directive. Guide the user step by step — do not ask open-ended questions that span multiple stages.
- Ask for specific paths, files, or materials. If the user provides a figure or code path, read and interpret it.
- Do not overwhelm the user with too many options at once. Present the most relevant next action.
- When generating stage output files, provide the complete Markdown content in the conversation. Give clear instructions on where to save it.
- If the user wants to pause the workflow, summarize the current stage status, what files have been generated, and what the next step would be when they return.

## Zotero MCP (Optional Literature Support)

Zotero MCP is an optional literature support layer.
It is needed only when the user wants Zotero-integrated literature retrieval.
prepare / methods / structure can proceed without Zotero.
Zotero does not replace user evidence, data, or scientific judgment.

When the user's workflow involves Zotero-integrated literature retrieval:

**Hard rule: Before every Zotero MCP call, explain and confirm.**

1. State why Zotero is needed.
2. Specify what will be read: collection, query, item, note, annotation, or PDF text.
3. Confirm the operation is read-only.
4. Describe what output will be produced (e.g., citation candidate, annotation summary, claim support check).

Wait for explicit user confirmation before calling Zotero MCP.

**Write operations are prohibited by default.**
Never use Zotero write tools (write_note, write_tag, write_metadata, write_item,
create/update/delete collection) unless the user explicitly requests and confirms the
exact write action.

Full Zotero integration reference: `references/zotero/README.md`

**Hard rule — full-text Zotero searches:** Before pulling full-text content (PDFs, Methods/Results paragraphs), explicitly ask the user whether to use subagent + haiku to avoid flooding the main context window. See README for detail.

**Hard rule — PDF reading prohibited for style reference:** When the skill needs to reference actual paper text (e.g., for writing style comparison, method phrasing, or narrative structure), **never use Zotero MCP `get_content` with `include pdf:true`** to extract paper text. Instead: (1) ask the user whether they have pre-converted MD files (from zotero-mineru-plugin or similar PDF→MD pipeline); (2) use the mineru-converted `output.md` files in Zotero storage (these are complete full-text MD, produced by zotero-mineru-plugin); (3) never attempt to read PDF binary via MCP for text extraction. The user's zotero-mineru-plugin pipeline produces clean MD files that should be the primary source for paper text.
