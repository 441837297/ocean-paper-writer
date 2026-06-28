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
| `STRUCTURE_PROBLEM` | The paragraph is in the wrong section, performs the wrong section job, or disrupts the argument chain | **STOP. Do not polish.** Return to review (→ Backpropagation Gate → update 03 files) or structure. 结构性问题是上游问题，润色无法修复。 |
| `EVIDENCE_PROBLEM` | The claim is unsupported, overstates mechanism/causation/trend/climate implication, or lacks required citation | Mark `[POLISH BLOCKER]`; return to review, methods, prepare, or writing |
| `PARAGRAPH_LOGIC_PROBLEM` | The paragraph has unclear topic sentence, mixed functions, weak internal sequence, or poor connection to adjacent units | If fixable within the unit, revise; if it requires new evidence or reordering, return to writing/review |
| `LANGUAGE_PROBLEM` | The claim is supported but wording is unclear, verbose, repetitive, awkward, or overly generic | Polish the unit |
| `JOURNAL_VOICE_PROBLEM` | The prose is supported but does not match the target journal's voice or level of accessibility | Polish with journal profile guidance |
| `CHINESE_INTENT_TRANSFER_PROBLEM` | The user's Chinese expression contains valid scientific intent but the English phrasing needs restructuring | Translate intent, not syntax; preserve claim/evidence/boundary |

## Universal Style Rules

*以下 4 条规则适用于所有目标期刊。润色时若发现违反，必须修正。若违反涉及 structure，标记 `STRUCTURE_PROBLEM` 并返回 review。*

### 1. Result-first rule

Results 段落第一句必须报告一个发现，最好包含方向、变量、区域或数字。

| Bad | Good |
|-----|------|
| "Figure 3 shows the temporal evolution of EKE in the Kuroshio Extension." | "EKE in the Kuroshio Extension increased by 12% per decade over 1993–2020 (Figure 3)." |

### 2. Physical-link rule

不要用文献引用代替物理论证。

| Bad | Good |
|-----|------|
| "Previous studies showed NL is important for transport (Smith 2020, Jones 2021)." | "When rotation exceeds translation, an eddy is more likely to retain core property anomalies during propagation." |

### 3. Defensive-language quarantine

Caveats 是必要的，但必须集中放置在 Methods、Extended Data captions 或 Discussion 的一个边界段落中。不要在 Results 中反复散布相同的 caveat。若发现散布式 caveat，标记并建议集中。

### 4. Abstract-noun replacement

用具体的变量和动作替换模糊的名词链。

| Vague | Concrete |
|-------|----------|
| thermohaline signatures | heat and salt anomalies |
| transport dimension | heat and salt transport response |
| boundary-crossing redistribution | boundary-crossing heat and salt transport |
| directional recombination | after combining eddy polarity and crossing direction |
| linked eddy-level properties | eddy kinematics, anomalies and transports |

### Polish Decision Rule

Proceed to rewriting only if:
- the target unit's claim is supported;
- the section role is correct or fixable within the unit;
- the requested change can be solved at language, paragraph, or journal-voice level;
- evidence boundaries will remain visible.

If `STRUCTURE_PROBLEM`: **stop immediately.** Do not attempt to polish. Mark `[POLISH BLOCKER]` and hand off to review (→ Backpropagation Gate → update 03 files → then writing). 结构性问题是架构问题，不是语言问题。

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

**Core files:** `04_writing/04_manuscript-draft.md` (or latest `04_manuscript-reviewN.md`),
`05_review/05_review-round{N}B_report.md` (or latest review)

**Supporting file:** `03_structure/03_section-architecture.md`, `03_structure/03_terminology.md`

**Optional files:** `01_prepare/01a_project-brief.md`, `01_prepare/01b_evidence-inventory.md`,
`02_methods/02a_data.md and 02_methods/02b_methods.md`

**User-provided materials:** target journal, section or unit to polish, advisor comments, coauthor
comments, desired tone, language mode (English / Chinese / bilingual), polish priority (clarity /
concision / journal voice / style naturalization / advisor feedback), output assertiveness (conservative or more
assertive).

## Required Output

Polish does **not** produce a separate output file. Instead:

- **Modified manuscript:** Polish edits are applied to `04_writing/04_manuscript-reviewN-polishM.md`
  (copied from the latest review or polish base following the mandatory version copy rule).
- **Change record:** All polish modifications are recorded in `04_writing/04_writing-log.md`
  Revision Notes (same format as review revisions; each polish entry notes the M counter).

Do **not** create any standalone polish log. The unified writing-log is the single
source of truth for all manuscript change history.

## Interaction Flow

```
 1. Ask user to choose polish scope — unit / section / manuscript consistency check
 2. Intake draft unit or section and review report (core materials)
 3. Confirm target journal and language mode
 4. **(Optional) If user has 2–3 mineru-converted MD full-text papers from the target journal,
    offer to run journal prose benchmark first.** See `references/polish/journal-prose-benchmark.md`.
    Produces a one-page style card; skip if card already exists for this journal.
 5. Confirm polish priority — clarity, concision, journal voice, style naturalization, advisor feedback
 6. Run failure-mode-first diagnosis — structure / evidence / paragraph logic / language / journal voice / Chinese intent transfer
 7. If blocked, mark `[POLISH BLOCKER]` or `[POLISH CONFLICT]` and recommend the correct handoff
 8. If polishable, identify style, clarity, voice, and AI-like issues in the current unit
 9. Produce polished version for the current unit only
10. Explain key changes and evidence boundaries preserved
11. Ask user to confirm — keep / revise / compare alternatives / continue
12. After confirmation, record changes in `04_writing-log.md` Revision Notes
13. Decide next action — continue polishing next unit, return to writing/review, or prepare final assembly
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

Loading a journal profile for polish: load `## Shared` + `## {current section}` + `## Late-stage Polish` from the journal profile.

- **GRL:** concise, single sharp message, short paragraphs, direct claims.
- **JGR-Oceans:** rigorous, complete, transparent, methods depth visible in language.
- **JPO:** technical, diagnostic, mechanism-forward, physically precise.
- **Nature Communications:** accessible, broad-significance, evidence-bounded, readable by
  non-specialist.
- **Nature Climate Change:** climate-change-centered, Earth-system-relevant, consequence-focused.

For sentence-level journal style alignment beyond general voice, use the optional
**journal prose benchmark**: `references/polish/journal-prose-benchmark.md`.
This extracts a one-page style card from 2–3 published papers (mineru-converted MD)
before unit-level polish begins.

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

## Sentence and Paragraph Hard Checks

Apply these checks after failure-mode diagnosis and before producing the polished version.

### Sentence control

- Aim for 10–30 words per sentence in polished English prose.
- Keep every sentence at or below 30 words unless a technical definition or journal-required wording makes this impossible.
- If a sentence exceeds 20 words, check whether it contains more than one main proposition.
- Split overloaded sentences rather than polishing them cosmetically.
- Prefer one core subject–verb proposition per sentence.
- Check the final sentence of each paragraph explicitly; it often becomes the longest, weakest, or most overclaimed sentence.

### Paragraph control

- Each paragraph should have one controlling idea.
- If a paragraph mixes result reporting, mechanism interpretation, literature comparison, and implication, split it or return to writing.
- Use content-specific transitions rather than generic transitions such as "Moreover", "Furthermore", "Notably", or "Importantly".
- Do not polish a paragraph into smoothness if its section role is wrong.

### Results vs Discussion language check

- Results sentences should mainly report what was observed, measured, detected, compared, or quantified.
- Discussion sentences should interpret what the result may mean, how it relates to mechanisms or prior work, and where the interpretation may fail.
- If a Results paragraph uses unsupported mechanism language such as "driven by", "caused by", or "attributable to" without diagnostic evidence, mark `[POLISH BLOCKER]` or revise to bounded language.
- If a Discussion paragraph only repeats figure descriptions, return to writing or review.

### Chinese-to-English intent transfer

When polishing Chinese or Chinese-influenced English:

- Extract the core scientific propositions first.
- Do not translate clause-by-clause.
- Rebuild explicit logical links: contrast, cause, implication, limitation.
- Preserve terminology, causality level, hedging, and disciplinary nuance.
- Do not replace precise ocean-science terms with generic academic wording.

Hard rule:
These checks improve clarity; they must not strengthen claims beyond the evidence.

### Semantic Repetition Scan

润色时检查同一段落或摘要中是否用不同表述讲了同一事实：

- `near cancellation` ≈ `trend weak / insignificant / indistinguishable from zero`
- `strengthened` ≈ `increased` 指向同一变量
- 同一时间范围在摘要中重复出现
- 同一关键数值在相邻句中多次出现

出现语义重复时，保留更强或更精确的表述，删除冗余版本。

### Rhetorical Detour Triggers

以下结构不自动判错，但触发审查。审查标准：删除该结构后，前后句的逻辑关系是否仍然成立？如果不成立，说明这个结构在假装推进而实际没有。

- `not only ... but also`
- `rather than`
- `whether ... depends on`
- `while / although / despite` 开句（当让步从句推迟了主句主张时）
- `however / therefore / furthermore / moreover`（检查是否承载真实因果或对比）
- `This suggests ... Whether ... is a question for ...` 连续 hedging 链

以上为 trigger，不是禁用词表。顶刊论文也使用这些词，关键在于它们是否真实推进了论点。

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

Default tracking is `04_writing-log.md` Revision Notes.

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
decide priority. Record resolution in `04_writing-log.md`.

## Resume and Update Mode

When user returns with an existing polish session: read the current manuscript and writing-log, identify the last
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
  architecture problem. **必须先经过 review 的 Backpropagation Gate 更新 03 文件，不能直接从 polish 改 structure 而不留记录。**
- **Back to methods:** method details unclear, statistical or processing wording cannot be
  safely polished.
- **Back to prepare:** core research question or evidence inventory incomplete.
- **Forward to final assembly:** issues limited to language consistency, confirmed polished units
  ready, title/abstract refinement needed, journal voice aligned, final submission polish requested.

## Template References

Polish does not use a standalone template. Change records follow the same Revision Notes format
as `04_writing-log.md`.

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
- **Do not create a separate polish log file.** All polish records go into `04_writing-log.md`.
- **Do not let GPT or external LLM perform full-manuscript polish.** GPT is a decision-support tool, not the version controller. GPT outputs review + patch instructions; ClaudeCode executes. Candidate rewrites from GPT allowed only for Abstract, Introduction P1, Results lead sentences, title, or conclusion sentences. All formal incorporation by ClaudeCode, recorded in writing-log. 若 GPT 指出结构问题，返回 review → Backpropagation Gate。决策（GPT）和执行（CC）分离。
