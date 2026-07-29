# Polish Workflow

## Purpose

The polish workflow is a controlled revision and language-refinement stage — not a whole-manuscript
rewriting stage. It refines confirmed manuscript text for clarity, flow, style, and target-journal
voice, integrates language-level advisor feedback, reduces AI-like phrasing, aligns terminology and
claim strength, and prepares polished text after evidence and structure have been reviewed.
Polish must never fix evidence gaps with language — if a claim is unsupported, the appropriate
response is to return to review, writing, methods, or prepare.

## When to Use

Run polish when: writing has produced confirmed draft units; review is complete and revision
priorities are available; the user has confirmed specific paragraphs/sections are ready for language
refinement; advisor language or style comments are available; the manuscript needs journal voice
alignment before submission; the user needs AI-like phrasing reduction; or the user needs bilingual
expression adjustment or English naturalization.

Do **not** run polish when: no confirmed draft text exists (run writing first); review has not been
completed for the relevant section (run review first); the user wants evidence or structure diagnosis
(use review); or the user wants to draft new content (use writing).

## Core Principle

> Polish refines supported prose; it does not create evidence.

- Improve wording only when the underlying claim is supported.
- If a claim is unsupported, do not polish it into sounding stronger — return to review, writing,
  methods, or prepare.
- Polish must preserve uncertainty and evidence boundaries.
- Do not use polished language to hide missing evidence or inflate weak claims.

## Failure-Mode-First Diagnosis

Before polishing any unit, diagnose what kind of problem the user is actually asking to solve. Do not assume every "polish", "revise", "make it smoother", or "de-AI" request is a language-only problem.

Classify the issue first:

| Failure mode | Meaning | Action |
|-------------|---------|--------|
| `STRUCTURE_PROBLEM` | The paragraph is in the wrong section, performs the wrong section job, or disrupts the argument chain | Return to writing or structure; do not polish as-is |
| `EVIDENCE_PROBLEM` | The claim is unsupported, overstates mechanism/causation/trend/climate implication, or lacks required citation | Mark `[POLISH BLOCKER]`; return to review, methods, prepare, or writing |
| `PARAGRAPH_LOGIC_PROBLEM` | The paragraph has unclear topic sentence, mixed functions, weak internal sequence, or poor connection to adjacent units | If fixable within the unit, revise; if it requires new evidence or reordering, return to writing/review |
| `LANGUAGE_PROBLEM` | The claim is supported but wording is unclear, verbose, repetitive, awkward, or overly generic | Polish the unit |
| `JOURNAL_VOICE_PROBLEM` | The prose is supported but does not match the target journal's voice or level of accessibility | Polish with journal profile guidance |
| `CHINESE_INTENT_TRANSFER_PROBLEM` | The user's Chinese expression contains valid scientific intent but the English phrasing needs restructuring | Translate intent, not syntax; preserve claim/evidence/boundary |

### Polish Decision Rule

Proceed to rewriting only if:
- the target unit's claim is supported;
- the section role is correct or fixable within the unit;
- the requested change can be solved at language, paragraph, or journal-voice level;
- evidence boundaries will remain visible.

If not, stop and explain why polishing would be misleading.

## Polish Scope

Ask the user to choose scope. If unclear, recommend **unit-level polish**.

- **Unit-level polish (default)** — one paragraph, one active draft unit, or one
  advisor-comment-targeted passage. For longer work, proceed unit by unit; a full subsection is
  the maximum scope.
- **Section-level polish** — one completed section, but polish must still proceed unit by unit.
  Do not rewrite the whole section in one pass.
- **Manuscript-level polish** — consistency checks across the full draft: terminology,
  abbreviations, recurring AI-like patterns, journal voice consistency, title/abstract/section
  heading alignment. Do not rewrite the entire manuscript in one pass.

**Hard rule:** Full manuscript rewrite is never the default. If the user requests it, recommend
section-by-section or unit-by-unit polish instead.

## Required Inputs

**Core files:** `04_writing/04_manuscript-draft.md`, `05_review/05_review-report.md`

**Supporting file:** `03_structure/03_manuscript-structure.md`

**Optional files:** `01_prepare/01a_project-brief.md`, `01_prepare/01b_evidence-inventory.md`,
`02_methods/02a_data.md and 02_methods/02b_methods.md`

**User-provided materials:** target journal, section or unit to polish, advisor comments, coauthor
comments, desired tone, language mode (English / Chinese / bilingual), polish priority (clarity /
concision / journal voice / style naturalization / advisor feedback), output assertiveness (conservative or more
assertive).

## Required Output

Polish produces exactly one default user-facing file:

```
06_polish/06_polish-log.md
```

Do **not** create additional files unless the user explicitly asks. The polish log records original
text, polished version, change rationale, evidence boundary, and user confirmation status for each
unit. Confirmed polished units can be assembled back into `04_writing/04_manuscript-draft.md` or
the user's own manuscript file.

## Interaction Flow

```
 1. Ask user to choose polish scope — unit / section / manuscript consistency check
 2. Intake draft unit or section and review report (core materials)
 3. Confirm target journal and language mode
 4. Confirm polish priority — clarity, concision, journal voice, style naturalization, advisor feedback
 5. Run failure-mode-first diagnosis — structure / evidence / paragraph logic / language / journal voice / Chinese intent transfer
 6. If blocked, mark `[POLISH BLOCKER]` or `[POLISH CONFLICT]` and recommend the correct handoff
 7. If polishable, identify style, clarity, voice, and AI-like issues in the current unit
 8. Produce polished version for the current unit only
 9. Explain key changes and evidence boundaries preserved
10. Ask user to confirm — keep / revise / compare alternatives / continue
11. Save polish log entry
12. Decide next action — continue polishing next unit, return to writing/review, or prepare final assembly
```

### Pacing

Each turn asks **3–5 questions maximum**. Polish one unit at a time — do not polish multiple
paragraphs or subsections in a single turn unless the user explicitly requests batch polishing.
Do not polish without confirming the previous unit first.

## Polish Dimensions

### Clarity

Sentence clarity, paragraph focus, removal of vague phrases ("related to", "associated with" used
generically), clear subject-verb structure, and clear claim boundaries.
Each sentence should tell the reader who did what to what.

### Flow

Logical transitions between sentences and paragraphs, paragraph openings that connect to the
previous unit, paragraph closings that set up the next unit, and avoidance of generic transition
words ("Moreover", "Furthermore", "Nevertheless") when a content-specific link is available.

### Claim strength

Align verbs with evidence strength ("suggests" vs. "indicates" vs. "demonstrates").
Preserve hedging where the evidence requires it.
Avoid overstating mechanisms, causation, trends, climate implications, or global significance.

### Journal voice

- **GRL:** concise, single sharp message, short paragraphs, direct claims.
- **JGR-Oceans:** rigorous, complete, transparent, methods depth visible in language.
- **JPO:** technical, diagnostic, mechanism-forward, physically precise.
- **Nature Communications:** accessible, broad-significance, evidence-bounded, readable by
  non-specialist.
- **Nature Climate Change:** climate-change-centered, Earth-system-relevant, consequence-focused.

### Ocean science terminology

Consistent units (m, s, Sv, W/m²), consistent variable names (SST, SSH, EKE, MLD, Chl-a, pCO₂),
correct acronyms, defined technical terms at first use, consistent use of key oceanographic
terminology (stratification, mixed layer, mesoscale, submesoscale, eddy kinetic energy).

### Citation and literature phrasing

Keep citation placeholders (`[CITATION NEEDED]`). Do not invent citations. Avoid literature claims
without support. If the draft mentions prior work without a reference, mark it.

### Bilingual refinement

If bilingual output is requested, follow `references/writing/bilingual-output.md`.
Preserve scientific meaning across Chinese and English.
Avoid literal translation when academic English requires restructuring.

### Style naturalization

Reduce generic openings, remove formulaic transitions, avoid inflated novelty claims, avoid
repetitive sentence rhythm, replace vague meta-language with specific scientific content, and keep
the author's intended meaning. The goal is natural, accurate, authorial academic expression — not
AI-detection evasion.

If the user uses terms like "de-AI", interpret this as a request for style naturalization /
AI-like phrasing check, not AI-detection evasion.

## Target Journal Voice

**Hard rule:** Do not decide the target journal for the user. Use the user-specified journal as a
voice reference for sentence rhythm, claim assertiveness, and terminology depth. If no journal is
specified, polish for general ocean science clarity. Do not use journal voice to inflate claims. Do
not compress according to journal length limits unless the user explicitly requests late-stage
submission polish.

## Advisor Feedback Handling

When provided: classify each comment by type — language / style / structure / evidence / methods /
journal voice. Handle language and style comments in polish. Route structure comments back to
structure or writing. Route evidence and methods comments back to review / methods / prepare.
Ask user which comments to prioritize. Record which comments were addressed.
If an advisor request would overstate evidence, mark `[POLISH CONFLICT]`, present both sides,
and ask the user to decide.

## AI-like Style Reduction

The goal is natural, accurate, authorial academic expression — not AI-detection evasion.
Target these patterns:

- **Generic transitions:** replace "It is worth noting that", "It is important to mention that",
  "Notably" with content-specific links between ideas.
- **Repetitive sentence templates:** avoid starting every sentence with the same structure
  (e.g., "The results show...", "Figure X presents...", "We find that...").
- **Empty signposting:** remove "It should be noted that", "It is interesting to note that"
  unless the emphasis is justified.
- **Inflated words:** use "novel", "robust", "comprehensive", "significant", "crucial",
  "unprecedented" only when the evidence supports them.
- **Sentence rhythm:** vary sentence length naturally — short impactful sentences followed by
  longer explanatory ones.
- **Generic academic filler:** use specific ocean-science nouns and verbs instead of
  "plays a key role in", "is closely related to", "has important implications for".
- **Hedging balance:** keep uncertainty precise. Do not over-hedge to the point of vagueness,
  but do not remove necessary hedging.
- **Author voice:** retain the author's intended claim and scientific caution.
  Do not paraphrase into a generic academic style.

## Style Naturalization Audit

An optional detect-then-rewrite subworkflow within polish.
It does not replace normal paragraph-level polish; it is used when the user explicitly requests
style naturalization review, AI-like phrasing check, or pre-submission quality/style scanning.

### When to use

Use this optional audit when:

- the user asks for style naturalization, AI-like phrasing check, authorial academic style review,
  or uses the phrase "de-AI";
- the user uploads a section or full manuscript for pre-submission quality/style review;
- the polish stage detects repeated generic transitions, inflated novelty words,
  repetitive sentence rhythm, or vague claim verbs.

### Two-step process

#### Step 1. Detect

Produce a detection report before rewriting.
Scan against these categories:

- Vocabulary inflation
- Generic academic filler
- Formulaic transitions
- Repetitive sentence patterns
- Defensive framing and repeated caveats
- Vague or inflated claim verbs
- Ocean-science overclaim patterns
- Citation / evidence boundary risks

Risk levels: High / Medium / Optional.

**Detection output format:**

| ID | Text span | Category | Risk | Why it matters | Suggested action |
|----|-----------|----------|------|----------------|------------------|

After detection, ask the user to choose one of:

- fix High only
- fix High + Medium
- fix selected IDs
- review report only, no rewriting
- continue normal polish instead

#### Step 2. Rewrite

Rewrite only the selected items.

**Rules:**

- Preserve scientific meaning.
- Preserve claim strength.
- Preserve uncertainty.
- Preserve citation gaps.
- Do not remove `[CITATION NEEDED]`.
- Do not turn correlation into causation.
- Do not turn regional findings into global conclusions.
- Do not turn model output into observed fact.
- Do not treat negative scientific findings as defensive language. Preserve statements reporting
  non-significant trends, unclosed budgets, unexplained residuals, or unsupported causal pathways.
- Do not rewrite domain terms just because they look technical.

**Rewrite output format:**

| ID | Original | Revised | Rationale | Boundary preserved |
|----|----------|---------|-----------|--------------------|

### Batch scope

- For one paragraph or one subsection: detect and rewrite can happen in one turn after user selection.
- For full section or manuscript: first produce detection report; rewrite only after user chooses scope.
- Manuscript-level audit may scan the full text, but rewriting should proceed
  by selected items or units.

### Optional LaTeX tracking

Default tracking is the Markdown polish log.

If the user is working in LaTeX and explicitly asks for source-level tracking, use:

```
% [Style Naturalization] Original:
% ...
```

Older label conventions such as `[De-AI]` should not be used.

## Missing and Conflicting Information

**Marking conventions:** `[MISSING]` = not provided, `[UNCERTAIN]` = may change, `[TODO]` = action
item, `[POLISH BLOCKER]` = prevents meaningful polish, `[POLISH CONFLICT]` = advisor request
conflicts with evidence boundary, `[CITATION NEEDED]` = citation required,
`[CONFIRM WITH USER]` = needs user input.

**Critical blockers:** no draft text provided; claim support unclear; review report missing when
user asks for post-review polish; target journal specified by user but journal profile unavailable;
advisor comment unclear; citation needed for a claim that cannot be polished safely; unsupported
claim that polish cannot strengthen.

**Conflict handling:** do not silently resolve conflicts — present both sides and ask user to
decide priority. Record resolution in polish log.

## Resume and Update Mode

When user returns with existing `06_polish-log.md`: read existing polish log, identify the last
polished unit, preserve previously confirmed units, add new polish pass for new units,
generate changelog:

```markdown
## Update Summary
- Polish pass added: [date / scope / unit polished]
- Units polished: [list], Advisor comments addressed: [list]
- Remaining polish items: [list]
- Handoff recommendation: [destination]
```

## Handoff to Earlier Stages

- **Back to writing:** paragraph needs substantive rewrite, claim placement wrong, transition
  requires new content, unit needs expansion rather than polish.
- **Back to review:** claim support uncertain, reviewer/advisor issue not classified, language
  issue may actually be evidence issue.
- **Back to structure:** section order or narrative role wrong, polished language cannot fix
  architecture problem.
- **Back to methods:** method details unclear, statistical or processing wording cannot be
  safely polished.
- **Back to prepare:** core research question or evidence inventory incomplete.
- **Forward to final assembly:** issues limited to language consistency, confirmed polished units
  ready, title/abstract refinement needed, journal voice aligned, final submission polish requested.

## Template References

When generating polish-stage materials, use: `references/templates/06_polish-log.md`.
Save user-facing output as `06_polish/06_polish-log.md`.

## Guardrails

- **Do not rewrite the full manuscript by default** — polish one unit at a time.
- **Do not decide the target journal for the user.**
- **Do not invent evidence, citations, reviewer comments, or advisor comments.**
- **Do not use polished language to hide unsupported claims.**
- **Do not strengthen claim language beyond the evidence.**
- **Do not remove necessary uncertainty** — hedging is a feature, not a bug.
- **Do not perform style naturalization rewriting as generic paraphrasing** — the goal is authorial accuracy,
  not evasion.
- **Do not erase the author's intended meaning or scientific caution.**
- **Do not mark a polished unit as final without user confirmation.**
- **Do not compress according to journal submission limits unless explicitly requested.**
