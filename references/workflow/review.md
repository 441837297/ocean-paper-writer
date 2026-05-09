# Review Workflow

## Purpose

The review workflow is a diagnostic and revision-planning stage — not a rewriting stage. It checks manuscript claims against the established evidence chain, assesses whether structure decisions were correctly executed in writing, identifies overclaiming and evidence gaps, evaluates journal-fit issues, converts all problems into actionable revision tasks, and prepares for targeted writing revision or polish.

## When to Use

Run review when: writing has produced confirmed draft units; the user wants to check a section's validity; advisor/coauthor/reviewer comments need mapping to revision actions; the user wants readiness assessment before polish; or the user wants a simulated target-journal reader perspective.

Do **not** run review when: no draft text exists (run writing first); the user only wants language polishing (use polish); or the user only wants structural planning (use structure).

## Core Principle

> Review diagnoses and prioritizes; it does not rewrite by default.

Identify issues first, classify severity (high/medium/low), explain why each matters, propose a specific revision action, and ask the user before rewriting. If the user requests a revision draft, label it `[REVISION DRAFT — NOT FINAL]`.

## Review Scope

Ask the user to choose scope. If unclear, recommend **section-level review**.

- **Unit-level review** — one paragraph, writing unit, or subsection. Checks: claim clarity, evidence use, citation need, overclaiming, wording risk.
- **Section-level review (default)** — one section (Results, Discussion, Introduction, Methods, Conclusion, or Abstract). Checks: narrative job vs. structure, logical flow, figure order, claim hierarchy, journal voice, section function.
- **Manuscript-level review** — full draft or assembled manuscript. Checks: central story, cross-section consistency, repeated claims, evidence completeness, target-journal fit.

**Hard rule:** Do not perform full manuscript review unless explicitly requested.

## Required Inputs

**Core files:** `03_structure/03_manuscript-structure.md`, `04_writing/04_manuscript-draft.md`

**Supporting files:** `01_prepare/01a_project-brief.md`, `01_prepare/01b_evidence-inventory.md`, `02_methods/02a_data.md and 02_methods/02b_methods.md`

**Optional:** target journal profile (`references/journals/{journal}.md`), advisor/coauthor/reviewer comments, specific section to review, user-defined review priority (evidence / logic / journal fit / language).

## Required Output

Review produces exactly one default user-facing file:

```
05_review/05_review-report.md
```

Do **not** create additional files unless the user explicitly asks.

## Interaction Flow

```
 1. Ask user to choose review scope
 2. Intake structure and writing files (core)
 3. Intake supporting files if needed
 4. Confirm target journal and review priority
 5. Identify which review dimensions apply
 6. Diagnose issues — claims, evidence, structure, figure logic, journal fit, uncertainty
 7. Classify each issue — severity (high/medium/low), type (evidence/claim/structure/methods/figure/journal fit/language/advisor feedback)
 8. Propose revision action per issue
 9. Ask user to confirm revision priorities
10. Save review report to 05_review/05_review-report.md
11. Decide handoff — back to writing/structure/methods/prepare or forward to polish
```

### Pacing

Each turn asks **3–5 questions maximum**. If 10+ issues, group by severity and present highest first. Ask if user wants lower-severity items. Do not propose all revision actions at once unless requested. **Do not rewrite manuscript prose by default.**

## Review Dimensions

### Evidence support

Is every claim supported by figures, data, methods, or citations? Are unsupported claims flagged as `[CITATION NEEDED]` or `[EVIDENCE GAP]`? Are visual patterns overinterpreted as mechanisms? Are statistical results correctly reported?

### Claim strength

Are claim verbs matched to evidence strength ("suggests" vs. "demonstrates")? Is mechanism language justified by data/methods? Are causation, attribution, trend, and climate claims bounded? Are secondary claims distinguished from primary?

### Section function

Does each paragraph/section perform the narrative job assigned in structure? Results: descriptive, not mechanistic. Discussion: interpret and compare, not repeat Results. Introduction: gap and motivation, not literature overload. Conclusion: restate central finding, no new evidence. Abstract: compress without overclaiming.

### Figure and data logic

Are figures in the order specified by structure? Does each figure support at least one claim? Are captions self-contained and aligned with text? Are methods sufficient to understand figure generation?

### Target journal narrative fit

- **GRL:** one sharp, well-supported message? Short Discussion? Figure count within limits?
- **JGR-Oceans:** complete evidence chain? Methods depth sufficient?
- **JPO:** mechanism/dynamics argument strong enough? Physical reasoning clear?
- **Nature Communications:** broad significance stated but evidence-bounded?
- **Nature Climate Change:** climate-change relevance supported by a complete connection chain?

### Ocean science overclaiming

Check: visual pattern → mechanism, correlation → causation, regional → global, short record → climate trend, climate relevance → climate-change evidence, model output → observed fact, statistical significance → physical significance.

### Literature and citation needs

Missing citations for data/methods/comparative claims; claims depending on prior work without references; Zotero integration points; citation overuse obscuring specific claims.

### Language risk (diagnose only — do not polish)

Vague claims, AI-like generic transitions, inflated novelty ("for the first time"), excessive hedging, undefined jargon, overused intensifiers ("very", "highly").

## Target Journal Handling

**Hard rule:** Do not decide the target journal for the user. Use the user-specified journal as a review lens; do not substitute, reject, or override. If no journal is specified, perform general evidence/logic review without journal-specific fit checks. Journal-fit concerns are separate from evidence/logic — present as a distinct dimension in the review report.

## Advisor Feedback Handling

When provided: classify each comment by type (evidence/structure/methods/writing/language/journal fit) and determine workflow destination (prepare/methods/structure/writing/polish). Do not automatically implement all comments — ask user which to prioritize. If an advisor comment conflicts with evidence or journal profile, mark `[REVIEW CONFLICT]`, present both sides, and ask user to decide priority.

## Missing and Conflicting Information

**Marking conventions:** `[MISSING]` = not provided, `[UNCERTAIN]` = may change, `[TODO]` = action item, `[REVIEW BLOCKER]` = prevents meaningful review, `[REVIEW CONFLICT]` = advisor/evidence conflict, `[CONFIRM WITH USER]` = needs user input.

**Critical blockers:** no draft text, no structure file for section/manuscript review, user-specified journal profile unavailable, claims untraceable to evidence, unclear advisor comments, inaccessible cited literature.

**Conflict handling:** do not silently resolve conflicts — present both sides and ask user to decide priority. Record resolution in review report.

## Resume and Update Mode

When user returns with existing `05_review-report.md`: read existing report, identify last review pass, preserve resolved items, add new review pass for new content, generate changelog:

```markdown
## Update Summary
- Review pass added: [date / scope / section reviewed]
- Issues resolved: [list], Issues remaining: [list], New issues: [list]
- Recommended next action: [handoff destination]
```

## Handoff to Writing or Polish

- **Back to writing:** paragraph unclear, flow weak, claim placement wrong, missing transition. Action: revision instructions per issue; `[REVISION DRAFT]` if user requests.
- **Back to structure:** section architecture wrong, figure order illogical, central story unclear, journal narrative mismatch. Action: update `03_manuscript-structure.md`, then return to writing.
- **Back to methods:** methods cannot support claim, processing unclear, statistical test missing. Action: update `02a_data.md and 02b_methods.md`, re-draft affected units.
- **Back to prepare:** research question unclear, evidence inventory incomplete, figure-to-claim matrix wrong. Action: update `01a_project-brief.md` and `01b_evidence-inventory.md`.
- **Forward to polish:** issues primarily about language, style, AI-like phrasing, journal voice, advisor wording. Action: review report as diagnostic input for polish.

## Template References

When generating review-stage materials, use: `references/templates/05_review-report.md`. Save user-facing output as `05_review/05_review-report.md`.

## Guardrails

- **Do not rewrite manuscript prose by default** — only when explicitly requested as a `[REVISION DRAFT]`.
- **Do not decide the target journal for the user.**
- **Do not invent evidence, citations, reviewer comments, or advisor comments.**
- **Do not treat journal-profile fit as a rejection decision** — flag fit issues as revision options.
- **Do not hide unsupported claims** — mark explicitly, do not soften or remove silently.
- **Do not turn language polish into evidence correction** — flag evidence gaps separately.
- **Do not overstate climate, mechanism, causation, or global implications.**
- **Do not perform full manuscript review unless explicitly requested.**
- **Do not mark an issue as resolved without user confirmation or revised text.**
- **Do not generate per-section review reports** — a single `05_review-report.md` covers all passes.
