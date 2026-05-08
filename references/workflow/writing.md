# Writing Workflow

## Purpose

The writing workflow generates manuscript prose one writing unit at a time — a micro-drafting workflow — following the architecture defined in the structure stage. Its goals are to:

- Draft each manuscript unit in a deliberate order: Methods → Results → Discussion → Introduction → Conclusion → Abstract
- Apply the target journal's voice, claim strength, and rhetorical style during drafting — not as a later rewrite
- Ground every claim in the verified evidence from prepare, methods, and structure stages
- Integrate citations from Zotero where available
- Support bilingual output (English + Chinese comparison) when requested
- Avoid context pollution by limiting each drafting pass to one paragraph or subsection

## When to Use

Run writing when: structure stage is complete with confirmed `03a_manuscript-structure.md`; the user has a target journal confirmed (or "not specified yet"); and the user is ready to draft manuscript prose.

Do **not** run writing when: structure stage is not complete; the user only wants to polish existing text (use polish workflow); or the user wants a full draft in one turn without section-by-section, paragraph-by-paragraph interaction.

## Core Principle

> Writing is a micro-drafting stage, not a whole-section generation stage.

- The default drafting unit is one paragraph. The maximum unit is one subsection.
- A full section is planned, but never drafted in a single pass.
- Methods and Results are written first because they depend on established evidence, not on narrative framing
- Introduction and Discussion are written later because they refer to the results that precede them
- Abstract is written last because it distills everything
- Each writing unit is drafted, confirmed, and revised before moving to the next
- Journal voice is applied during drafting, not as a post-hoc layer
- Context pollution is avoided by loading only the materials needed for the current unit

## Required Inputs

**Structure-stage file:** `03_structure/03a_manuscript-structure.md`

**Supporting files:** `01_prepare/01a_project-brief.md`, `01_prepare/01b_evidence-inventory.md`, `02_methods/02a_data-and-methods.md`

**Journal profile:** already loaded during structure stage; re-referenced during writing for voice guidance.

**User input:** which section to draft first (if deviating from default order); citation details (Zotero export, DOI list, or manual references); bilingual preference.

## Required Output

Writing produces exactly one default user-facing file:

```
04_writing/04a_manuscript-draft.md
```

The file tracks: a Draft Unit Log (each paragraph or subsection as a row), an Active Draft Unit (the unit currently being written), and Section Draft Assembly (where confirmed units are assembled into full sections). The file is updated incrementally — after each writing unit is confirmed. Do **not** create per-section files unless the user explicitly asks.

## Interaction Flow

The writing workflow proceeds through nine phases. Within each section (phases 3–8), drafting proceeds one writing unit at a time — each unit is one paragraph (default) or one subsection (maximum).

```
1. Intake structure materials → read architecture, claim hierarchy, figure sequence
2. Confirm journal voice      → re-reference journal profile for writing guidance
3. Draft Methods unit         → one paragraph/small-subsection at a time
4. Draft Results unit         → one paragraph/small-subsection at a time
5. Draft Discussion unit      → one paragraph/small-subsection at a time
6. Draft Introduction unit    → one paragraph/small-subsection at a time
7. Draft Conclusion unit      → one paragraph/small-subsection at a time
8. Draft Abstract             → single short unit (written last)
9. Confirm readiness          → assess readiness for review stage
```

### Pacing

Each writing unit is drafted in its own turn. After drafting a paragraph or subsection, ask the user for confirmation before continuing to the next unit.

- Do not draft multiple paragraphs in a single turn unless the user explicitly requests batch drafting.
- Prefer drafting one paragraph at a time. A full subsection is allowed only as the maximum unit, with explicit user request and confirmation.
- Do not cross section boundaries in one turn.
- User confirmation on each unit: keep / revise / expand / continue to next unit.

## Drafting Order

Default section sequence: Methods → Results → Discussion → Introduction → Conclusion → Abstract. Rationale: Methods are most factual; Results present evidence; Discussion interprets; Introduction sets up the gap; Conclusion summarizes; Abstract distills everything.

Within each section, drafting proceeds one writing unit at a time — never the entire section in one pass. After completing all units in a section and receiving user confirmation, move to the next section.

## Section-by-Section Planning

These section-level guides are for **planning** the paragraph sequence — not for generating the entire section in one pass. Each section is broken into individual writing units (paragraphs or small subsections) and drafted one unit at a time.

**Methods** — Source: `02a_data-and-methods.md`. Past tense. Break into units: data sources, preprocessing, derived variables, statistics. Follow journal profile for main-text vs. supplement depth.

**Results** — Lead each paragraph with the finding, not the figure reference ("EKE increased by X%" not "Figure 2 shows..."). Follow figure sequence from structure. One paragraph per key finding or figure group. Secondary findings after primary, or in supplement.

**Discussion** — Arc: restate primary finding → interpret physically → compare with prior work → broader implications → bound what cannot be concluded. One paragraph per discussion point. Follow journal profile on length.

**Introduction** — Arc: broad context (para 1) → specific gap (para 2) → what this paper does/finds (para 3). Three paragraphs, drafted one at a time. Essential references only.

**Conclusion** — Restate central finding + broader significance + one forward-looking sentence if warranted. Typically 1–2 paragraphs. No new evidence.

**Abstract** — Written last. Journal-specific structure (problem → approach → finding → implication). Self-contained. Drafted as one unit. Check journal word limit.

## Writing Unit Policy

### Default unit

One paragraph.

### Maximum unit

One subsection. A subsection corresponds to a logical sub-topic within a section — e.g., a data source description, a single preprocessing step, one result finding, one discussion point.

### Not allowed by default

- Full Results section in one turn
- Full Discussion section in one turn
- Full Introduction section in one turn
- Abstract plus any other section in one turn
- Multiple sections in one response
- Multiple paragraphs within one section without per-paragraph confirmation

### Allowed only if user explicitly requests

- Provisional full-section sketch — must be labeled `provisional, not final prose`
- Rough full-section outline for review — must be labeled `outline only, not final`
- Batch drafting of multiple paragraphs — user must say "draft paragraphs 2-3 together" or equivalent

Even when the user requests a full-section sketch, label it clearly as provisional to distinguish from confirmed draft units.

### Prohibited terminology

Do not use phrases that imply whole-section generation:

| Avoid | Use instead |
|-------|-------------|
| "generate full section" | "draft the next paragraph" |
| "write entire chapter" | "write this writing unit" |
| "complete manuscript draft in one pass" | "micro-drafting workflow" |

## Before Drafting Each Unit

Before drafting any paragraph or subsection, verify these six items. If any are missing, ask the user (3–5 questions max):

1. **Which section** is being drafted? (Methods / Results / Discussion / Introduction / Conclusion / Abstract)
2. **Which unit** is being drafted? (which paragraph number, or which subsection heading)
3. **What narrative function or claim** should this unit serve?
4. **What evidence supports it?** (figure, dataset, method, reference)
5. **What target journal voice** should be applied?
6. **What language mode?** (English / Chinese / bilingual)

Do not start drafting if these are unclear — ask first.

## Draft Unit Output Format

When outputting a writing unit, include the following structure. If the user wants only the draft text, the evidence trace can be written into `04a_manuscript-draft.md` notes rather than displayed; but the workflow default includes it.

```markdown
## Draft Unit

[paragraph or subsection text]

## Evidence Used
- Figures: [figure IDs]
- Data/methods: [sources]
- References: [citations or [CITATION NEEDED]]
- Claim supported: [claim ID from structure]

## Boundaries / Cautions
- What this unit does not claim: [explicit boundary statement]
- Uncertainty or citation needed: [if applicable]

## User Confirmation
- [ ] keep as drafted
- [ ] revise
- [ ] expand
- [ ] continue to next unit
```

## Context Pollution Control

Each writing unit must be scoped to its specific narrative function. The following cross-contamination rules apply:

- **Load only what the current unit needs.** Do not load unrelated figures, claims, or literature into the context for a single paragraph.
- **Do not write Discussion mechanism language into Results.** Results present what the data show; Discussion interprets what it means. Keep these separate even when drafting them sequentially.
- **Do not write Introduction framing into Methods.** Methods document what was done; Introduction establishes why it matters. Do not introduce broader significance claims in Methods prose.
- **Do not let Abstract compression style leak into body paragraphs.** Abstract is a dense summary; body paragraphs should be fully developed with evidence, not compressed.
- **Do not insert unsupported broader implications.** Even if the target journal profile values broader significance, do not include claims that the evidence does not support.
- **Each paragraph serves exactly one narrative function.** If a paragraph tries to both present a result and discuss its mechanism, split it into two units.

## Citation Integration

- Ask the user for citations: Zotero export, DOI list, or manual reference list
- If Zotero references are available via `references/zotero/README.md`, follow that workflow
- If no citations are provided, mark as `[CITATION NEEDED]` and continue
- Do not fabricate references or DOI numbers

## Journal Voice Integration

Reference the journal profile during each section for: sentence rhythm (short/direct vs. longer/nuanced); claim strength matching evidence level; domain jargon depth; mechanism language (causality vs. suggestion); broader significance framing.

## Bilingual Output

If requested: follow `references/writing/bilingual-output.md` format — English prose with `> **[Chinese]**` blockquote annotations. Opt-out keywords: `english only`, `no bilingual`, `only english`, `不要中文`. Do not enable unless the user explicitly requests it.

## Resume and Update Mode

When the user returns with existing `04_writing/04a_manuscript-draft.md`:

1. **Read** the existing draft, including the Draft Unit Log
2. **Identify the last confirmed writing unit** — start from the next unconfirmed unit
3. **Preserve** confirmed units. Do not rewrite them unless the user requests revision
4. **If underlying materials changed** (revised methods, new figures), note which units need updating
5. **Generate changelog:**

```markdown
## Update Summary
- Last confirmed unit: [unit ID — section, paragraph/subsection]
- Next unit to draft: [unit ID]
- Units needing revision due to material changes: [list]
- Citations still needed: [list]
- Ready for review: [yes / no / partial — all units confirmed?]
```

## Handoff to Review

Needs: all six sections drafted and confirmed by the user; citations integrated (or `[CITATION NEEDED]` markers); journal voice applied throughout; bilingual format applied if requested.

## Template References

When generating writing-stage materials, use:

- `references/templates/04a_manuscript-draft.md`

The user-facing output file should be saved as:

- `04_writing/04a_manuscript-draft.md`

## Reference Modules

Load on demand when drafting the corresponding section, not all at once:

- `references/writing/methods-and-data.md`, `results-and-discussion.md`, `introduction-and-gap.md`, `conclusions-and-claims.md` — section-specific patterns
- `references/writing/ocean-science-domain.md` — domain expression patterns
- `references/writing/bilingual-output.md` — bilingual format spec
- `references/journals/{journal}.md` — journal profile for voice and structure

## Guardrails

- **Do not draft an entire section in a single turn.** Default unit = one paragraph; maximum unit = one subsection.
- **Do not draft multiple writing units without user confirmation between them.** Each unit is confirmed before the next begins.
- **Do not draft without the structure-stage architecture.** The section architecture guides every unit.
- **Do not fabricate citations or DOI numbers.** Mark as `[CITATION NEEDED]`.
- **Do not inflate claim strength beyond what the evidence supports.**
- **Do not write Abstract before other sections are complete.**
- **Do not ignore the journal profile during drafting.** Apply voice during writing, not as a later fix.
- **Do not overload Introduction with comprehensive literature review.** Only what establishes the gap.
- **Do not introduce new evidence, analysis, or data in the Conclusion.**
- **Do not convert hedging into overconfidence or uncertainty into weakness.**
- **Do not allow context pollution.** Each paragraph serves exactly one narrative function; do not mix Discussion mechanism into Results, or Introduction framing into Methods.
- **Do not label provisional sketches as final prose.** User-requested full-section sketches must be marked `provisional, not final prose`.
