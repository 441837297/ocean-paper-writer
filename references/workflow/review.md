# Review Workflow

## Purpose

The review workflow turns external review input — from the author, advisor, coauthors, or an
external LLM — into structured, actionable revision tasks. It does **not** produce a review by
itself. The order is:

> **External reviewer reads manuscript → produces review comments → Skills reads the review → classifies, maps, prioritizes → hands off to writing.**

Skills can optionally generate a review prompt for the user to send to an external LLM
(GPT, Gemini, etc.). But the core job of Stage 05 is processing review input, not creating it.

## When to Use

Run review when: a draft exists; the user has read the manuscript and has notes; advisor or
coauthor feedback has arrived; the user wants to send the manuscript to an external LLM for
review; or the user has review comments from any source and wants them turned into a revision plan.

Do **not** run review when: no draft text exists (run writing first); no external review input
exists yet and the user does not want LLM review; the user only wants language polishing
(use polish); the user wants structural planning without a draft (use structure).

## Core Principle

> Review processes external input; it does not originate review judgments.

The skill does not read the manuscript and form its own opinion. Instead, it:
1. Reads review comments from any source (author, advisor, LLM).
2. Classifies each comment by type, severity, and workflow destination.
3. Maps each comment to a specific action label.
4. Prioritizes revision tasks.
5. Hands off to writing for actual manuscript changes.

If the user wants an external LLM to review the manuscript, the skill generates a prompt —
but the LLM's response is external input that the skill then processes like any other review.

## Prompt Generation for External LLM Review (Optional)

Before processing review input, the user may want an external LLM (GPT, Gemini, etc.) to
read the manuscript and produce review comments. The skill can generate a review prompt for
this purpose.

### Two review modes

| Mode | What happens |
|------|-------------|
| **Directed review** | User specifies review focus: own concerns, advisor feedback, specific questions, or particular sections to scrutinize. The prompt incorporates these directions. |
| **Template-guided review** | User provides no specific direction. The skill builds the prompt around the distilled literature template (`_distill.md`) as the review framework — checking evidence chain, claim strength, section function, figure logic, and ocean-science overclaiming patterns. |

### Prompt generation flow

1. User confirms: want to send manuscript to external LLM for review.
2. User chooses directed or template-guided mode.
3. If directed: user provides review focus (own notes, advisor comments, specific concerns).
4. Skill gathers required materials:
   - Current manuscript (`04_manuscript-draft.md` or latest `04_manuscript-reviewN.md` / `04_manuscript-polishN.md`)
   - Structure file (`03_manuscript-structure.md`)
   - Methods files (`02a_data.md`, `02b_methods.md`)
   - Evidence inventory (`01b_evidence-inventory.md`)
   - Target journal profile (if specified)
   - Distilled literature template (if template-guided mode)
5. Skill assembles a complete review prompt including:
   - Manuscript text (or relevant sections)
   - Review framework and dimensions to check
   - Specific questions or focus areas (if directed)
   - Output format expectations (structured review comments)
6. Prompt is saved to `05_review/05_review-roundN.md`.
7. User copies the prompt to GPT / Gemini / other LLM.
8. User brings the LLM's response back.
9. Skill reads the LLM response and processes it as review input (see "Processing Review Input" below).

**Hard rule:** The skill never sends prompts to external LLMs directly. The user controls
which LLM to use and does the sending. The skill only generates the prompt text.

## Processing Review Input

Once review comments exist (from author, advisor, or external LLM), the skill processes them.

### Interaction Flow

```
 1. Confirm review source: author self-review / advisor feedback / external LLM review
 2. Load the review comments
 3. Load manuscript and supporting files
 4. Classify each comment — type, severity, action label, workflow destination
 5. Identify conflicts between comments (e.g., advisor vs. evidence, or multiple reviewers)
 6. Present classified issues to user, grouped by priority
 7. Ask user to confirm which issues to act on
 8. Save structured review report to 05_review/05_review-roundN.md
 9. Hand off to writing for manuscript revision
```

### Pacing

Each turn asks **3–5 questions maximum**. If 10+ issues, group by severity and present highest
first. Do not dump all issues at once unless the user requests it. **Do not rewrite manuscript
prose during this stage.**

## Review Action Labels

Each review comment must receive one action label. The label makes the next revision step unambiguous.

| Action label | Meaning | Typical handoff |
|-------------|---------|-----------------|
| `SOFTEN_CLAIM` | Claim is directionally valid but wording is too strong for the evidence | writing / polish |
| `ADD_EVIDENCE` | Claim may be important but needs additional figure, analysis, validation, or result support | prepare / methods / writing |
| `ADD_METHOD_DETAIL` | Reader cannot evaluate the result because method/data processing details are missing | methods |
| `CHECK_STATISTICS` | Statistical test, uncertainty, significance, autocorrelation, sample size, or robustness check is unclear | methods / review |
| `ADD_CITATION` | Claim depends on prior literature, data source, or method reference not yet cited | writing / review |
| `REORDER_FIGURE_LOGIC` | Figure order does not support the manuscript argument chain | structure / writing |
| `RESTRUCTURE_SECTION` | Section performs the wrong narrative job or mixes Results/Discussion/Introduction functions | structure / writing |
| `REWRITE_UNIT` | The unit is conceptually valid but needs redrafting, not just polishing | writing |
| `POLISH_LANGUAGE` | The issue is language, flow, tone, or journal voice after evidence is already sound | polish |
| `AUTHOR_INPUT_NEEDED` | The AI cannot resolve the issue without user expertise, data confirmation, advisor preference, or coauthor decision | user |
| `BLOCKED_BY_EVIDENCE` | The current evidence does not support the claim; do not rewrite around the gap | prepare / methods / structure |

### Rules

- Do not use `POLISH_LANGUAGE` for unsupported claims.
- Do not use `REWRITE_UNIT` when the issue is missing data or method detail.
- Use `AUTHOR_INPUT_NEEDED` when the next step requires scientific judgment from the user.
- Use `BLOCKED_BY_EVIDENCE` when the manuscript should not make the claim unless new evidence is added.

## Review Scope

Ask the user to choose scope. If unclear, recommend **section-level review**.

- **Unit-level review** — one paragraph, writing unit, or subsection. Checks: claim clarity,
  evidence use, citation need, overclaiming, wording risk.
- **Section-level review (default)** — one section (Results, Discussion, Introduction, Methods,
  Conclusion, or Abstract). Checks: narrative job vs. structure, logical flow, figure order,
  claim hierarchy, journal voice, section function.
- **Manuscript-level review** — full draft or assembled manuscript. Checks: central story,
  cross-section consistency, repeated claims, evidence completeness, target-journal fit.

**Hard rule:** Do not process manuscript-level review unless explicitly requested.

## Required Inputs

**Core files:** `03_structure/03_manuscript-structure.md`,
current manuscript (`04_writing/04_manuscript-draft.md` or latest `04_manuscript-reviewN.md`
/ `04_manuscript-polishN.md`)

**Supporting files:** `01_prepare/01a_project-brief.md`, `01_prepare/01b_evidence-inventory.md`,
`02_methods/02a_data.md and 02_methods/02b_methods.md`

**External review input (required):** review comments from author, advisor, coauthors, or
external LLM response. Without this, the skill has nothing to process.

**Optional:** target journal profile (`references/journals/{journal}.md`),
distilled literature template (for template-guided LLM review prompt generation).

## Required Output

Review produces exactly one default user-facing file per round:

```
05_review/05_review-roundN.md
```

This file contains either:
- A **review prompt** ready to send to an external LLM (if prompt generation was requested), OR
- A **structured review report** classifying external review input and mapping it to revision actions.

N is the global monotonic counter shared with polish rounds.

Do **not** create additional files unless the user explicitly asks.

## Review Dimensions (for processing and prompt generation)

### Evidence support

Is every claim supported by figures, data, methods, or citations? Are unsupported claims flagged
as `[CITATION NEEDED]` or `[EVIDENCE GAP]`? Are visual patterns overinterpreted as mechanisms?
Are statistical results correctly reported?

### Claim strength

Are claim verbs matched to evidence strength ("suggests" vs. "demonstrates")? Is mechanism language
justified by data/methods? Are causation, attribution, trend, and climate claims bounded? Are
secondary claims distinguished from primary?

### Section function

Does each paragraph/section perform the narrative job assigned in structure?
Results: descriptive, not mechanistic.
Discussion: interpret and compare, not repeat Results.
Introduction: gap and motivation, not literature overload.
Conclusion: restate central finding, no new evidence.
Abstract: compress without overclaiming.

### Figure and data logic

Are figures in the order specified by structure? Does each figure support at least one claim?
Are captions self-contained and aligned with text? Are methods sufficient to understand figure
generation?

### Target journal narrative fit

- **GRL:** one sharp, well-supported message? Short Discussion? Figure count within limits?
- **JGR-Oceans:** complete evidence chain? Methods depth sufficient?
- **JPO:** mechanism/dynamics argument strong enough? Physical reasoning clear?
- **Nature Communications:** broad significance stated but evidence-bounded?
- **Nature Climate Change:** climate-change relevance supported by a complete connection chain?

### Ocean science overclaiming

Check: visual pattern → mechanism, correlation → causation, regional → global,
short record → climate trend, climate relevance → climate-change evidence,
model output → observed fact, statistical significance → physical significance.

### Literature and citation needs

Missing citations for data/methods/comparative claims; claims depending on prior work without
references; Zotero integration points; citation overuse obscuring specific claims.

### Language risk (diagnose only — do not polish)

Vague claims, over-smoothed generic transitions, inflated novelty ("for the first time"),
excessive hedging, undefined jargon, overused intensifiers ("very", "highly").

## Target Journal Handling

**Hard rule:** Do not decide the target journal for the user.
Use the user-specified journal as a review lens; do not substitute, reject, or override.
If no journal is specified, skip journal-specific fit checks.
Journal-fit concerns are separate from evidence/logic — present as a distinct dimension in the
review report.

## Advisor Feedback Handling

When provided: classify each comment by type (evidence/structure/methods/writing/language/journal fit)
and determine workflow destination (prepare/methods/structure/writing/polish).
Do not automatically implement all comments — ask user which to prioritize.
If an advisor comment conflicts with evidence or journal profile, mark `[REVIEW CONFLICT]`,
present both sides, and ask user to decide priority.

## Missing and Conflicting Information

**Marking conventions:** `[MISSING]` = not provided, `[UNCERTAIN]` = may change, `[TODO]` = action
item, `[REVIEW BLOCKER]` = prevents meaningful processing, `[REVIEW CONFLICT]` = conflicting
review input, `[CONFIRM WITH USER]` = needs user input.

**Critical blockers:** no draft text, no structure file, no review input to process,
user-specified journal profile unavailable, claims untraceable to evidence, unclear advisor
comments, inaccessible cited literature.

**Conflict handling:** do not silently resolve conflicts between review inputs — present both
sides and ask user to decide priority. Record resolution in review report.

## Resume and Update Mode

When user returns with existing `05_review-roundN.md`: read existing report, identify last review
pass, preserve resolved items, add new review pass for new content, generate changelog:

```markdown
## Update Summary
- Review pass added: [date / scope / section reviewed / review source]
- Issues resolved: [list], Issues remaining: [list], New issues: [list]
- Recommended next action: [handoff destination]
```

## Handoff to Writing or Polish

### Before You Touch Any File — Mandatory Checklist

When the user asks to apply review feedback to the manuscript, complete these steps
**in order** before any Edit or Write call:

```
[ ] 1. Identify the base manuscript file.
       For round N: if N=1, base = 04_manuscript-draft.md.
       If N>1, base = the most recent 04_manuscript-review{N-1}.md
       (or 04_manuscript-polish{N-1}.md if the previous round was polish).

[ ] 2. Copy the base to the new round file.
       cp base_file 04_manuscript-reviewN.md
       Do NOT skip this step. Even a one-word change requires a new file.
       The base manuscript is immutable once its round is complete.

[ ] 3. Edit ONLY the new file (04_manuscript-reviewN.md).
       Never open an Edit targeting the base file.

[ ] 4. When updating 04_writing-log.md:
       a. Read the current last 5-10 lines of the Revision Notes table first.
       b. Add new entries at the TOP of the table (newest first).
       c. Never use an old_string that spans multiple existing entries.
       d. Match only the table header or the current top entry as your anchor.
```

### Handoff Destinations

- **Back to writing:** paragraph unclear, flow weak, claim placement wrong, missing transition.
  Action: revision instructions per issue; `[REVISION DRAFT]` if user requests.
- **Back to structure:** section architecture wrong, figure order illogical, central story unclear,
  journal narrative mismatch. Action: update `03_manuscript-structure.md`, then return to writing.
- **Back to methods:** methods cannot support claim, processing unclear, statistical test missing.
  Action: update `02a_data.md and 02b_methods.md`, re-draft affected units.
- **Back to prepare:** research question unclear, evidence inventory incomplete, figure-to-claim
  matrix wrong. Action: update `01a_project-brief.md` and `01b_evidence-inventory.md`.
- **Forward to polish:** issues primarily about language, style, journal voice,
  advisor wording. Action: review report as diagnostic input for polish.

## Template References

When generating review-stage materials, use: `references/templates/05_review-report.md`.
Save user-facing output as `05_review/05_review-roundN.md`.

## Guardrails

- **Do not form independent review judgments.** The skill classifies and maps external review
  input; it does not originate critiques of the manuscript.
- **Do not rewrite manuscript prose** — revision happens in the writing stage.
- **Do not decide the target journal for the user.**
- **Do not invent evidence, citations, reviewer comments, or advisor comments.**
- **Do not treat journal-profile fit as a rejection decision** — flag fit issues as
  revision options.
- **Do not hide unsupported claims** — mark explicitly, do not soften or remove silently.
- **Do not turn language polish into evidence correction** — flag evidence gaps separately.
- **Do not overstate climate, mechanism, causation, or global implications.**
- **Do not process manuscript-level review unless explicitly requested.**
- **Do not mark an issue as resolved without user confirmation or revised text.**
- **Do not send prompts to external LLMs directly.**
- **Do not generate per-section review reports** — a single `05_review-roundN.md` covers
  all passes.
