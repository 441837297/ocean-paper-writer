# Structure Workflow

## Purpose

The structure workflow takes the idea (01) and materials (02) and produces a clear narrative framework — the bridge from scientific intent to journal-aligned prose. It does NOT write manuscript text. Its goals are to:

- Select the central story route from prepare-stage options and user confirmation
- Build a claim hierarchy: primary claims, secondary claims, and claims not ready
- Design section architecture with section roles and P-ID ranges; paragraph-level function belongs to writing-blueprint
- Assign figures to claims with explicit scientific questions
- Initialize and maintain the terminology dictionary as the sole authority
- Load the target journal profile so narrative decisions are journal-aware
- Produce four mutually-referencing files that do NOT duplicate each other

## When to Use

Run structure when: prepare and methods stages are complete; the user has a target journal
(or is ready to choose one); the user has an outline or section preference to discuss; or the user
needs architectural guidance before drafting begins.

Do **not** run structure when: prepare or methods are still in progress; the user only wants to
draft text without architectural planning; or the user already has a final structure and only
needs writing support.

## Core Principle

> Structure is a narrative contract, not a reference document. It prohibits ad-hoc writing decisions.

- The section architecture is a scaffold — writing may reveal adjustments, but deviations must be deliberate and recorded
- The claim hierarchy determines what belongs in the main narrative vs. supplementary
- The figure sequence determines the narrative flow, not the other way around
- Journal profile shapes narrative scope, claim depth, and section emphasis
- A well-structured architecture prevents wasted drafting AND prevents terminology abuse
- **Every paragraph in 04 must trace back to a P-ID and paragraph contract in 03_writing-blueprint.md.**
  **03_section-architecture.md controls section role, claim hierarchy, and P-ID range.**

## Ocean Paper Argument Chain

During the structure stage, compress the manuscript into one explicit, checkable argument chain:

```text
ocean/system need
→ unresolved process/data/method gap
→ this paper's move
→ decisive evidence
→ bounded implication
→ explicit limitation
```

This chain must be derived from the prepare-stage evidence inventory, methods materials, target journal profile, and user-confirmed research direction.

### What Each Link Means

| Link                               | Meaning                                                                                                                | Common failure                                        |
| ---------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------- |
| Ocean/system need                  | Why the topic matters in ocean science, ocean-climate dynamics, biogeochemistry, marine ecosystems, or related domains | Background is too broad or generic                    |
| Unresolved process/data/method gap | What is still unknown, unresolved, poorly quantified, or methodologically limited                                      | Gap is a literature slogan, not tied to this study    |
| This paper's move                  | What this manuscript does: observation, analysis, diagnosis, comparison, synthesis, or method application              | The move is vague or disconnected from evidence       |
| Decisive evidence                  | The figure/data/result chain that most directly supports the primary claim                                             | Evidence is only suggestive but written as conclusive |
| Bounded implication                | What the result means, within the domain and scale supported by the data                                               | Regional or short-record result is overstated         |
| Explicit limitation                | What the manuscript cannot claim without additional evidence                                                           | Limitations are hidden or postponed too late          |

### Rules

* Do not introduce a separate paper-type or story-archetype classification.
* Do not force the manuscript into a Nature-style narrative if the evidence or target journal does not support it.
* If the user-provided outline conflicts with the argument chain, mark `[STRUCTURE CONFLICT]`.
* If the evidence inventory does not support a link in the chain, mark `[EVIDENCE GAP]` or `[MISSING]`.
* The argument chain should guide claim hierarchy, section architecture, figure sequence, and later writing units.

## Results Evidence Ladder

Results should be planned as an evidence ladder, not as a figure-by-figure report.
The ladder is a planning tool for ordering the Results section so that evidence
builds toward the primary claim, with each figure earning the reader's trust for the next.

### Default Ladder

| Step | Name | What it covers |
|------|------|----------------|
| 1 | System / data / workflow setup | What system, dataset, region, or diagnostic framework is being examined |
| 2 | Validation / credibility | Why the data, method, or diagnostic is trustworthy enough for the main claim |
| 3 | Main result | The primary observation, trend, pattern, or diagnostic result |
| 4 | Comparison / robustness | Comparison with baseline, independent dataset, sensitivity test, null hypothesis, or confounding factor |
| 5 | Mechanism / diagnostic evidence | Physical, statistical, or process-based analysis that explains or constrains the result |
| 6 | Consequence / generalization | What the result implies within the evidence boundary |

### Ocean-Specific Journal Adaptation

| Journal | Map the ladder to |
|---------|-------------------|
| Nature Climate Change | detection → robustness/confounders → attribution → consequence |
| Nature Communications | core finding → supporting evidence → mechanism/pathway → broader context |
| JGR / JPO / GRL | Keep the ladder but compress or expand according to journal profile |

### Rules

* The ladder is a planning tool, not a requirement that every paper must have all six steps.
* Missing steps must be marked as missing rather than written around.
* If mechanism or consequence evidence is absent, the structure should not promise mechanism or consequence in Results.
* Figure order should follow the evidence ladder, not the order in which analyses were performed.
* The ladder must not contradict the ocean paper argument chain; it is a subordinate planning tool
  that helps populate the "decisive evidence" link with a well-sequenced figure set.

## Required Inputs

**Prepare-stage files:** `01_prepare/01a_project-brief.md`, `01_prepare/01b_evidence-inventory.md`

**Methods-stage files:** `02_methods/02a_data.md`, `02_methods/02b_methods.md`

**User input:** target journal (or willingness to choose); existing outline or section preference; central story direction preference.

**Journal profile:** loaded from `references/journals/{journal}.md` based on confirmed target. For NCC, paragraph craft rules are in `## Shared` + section-specific headings.

## Required Output

Structure produces four files in the user's project directory. They must NOT duplicate each other:

```
03_structure/03_section-architecture.md  ← 论文撰写纲要（全文架构、主张层级、论证链）
03_structure/03_writing-blueprint.md     ← 段落蓝图（逐段功能、逐句推进顺序）
03_structure/03_figure-outline.md        ← 图片组织（每图科学问题、panel 内容、caption skeleton）
03_structure/03_terminology.md           ← 术语表（唯一术语权威来源）
03_structure/reference_papers/           ← 参考论文全文（风格参照与术语对齐）
```

**Living document convention:** All four files are updated throughout the project lifecycle.
When a major revision occurs, the previous version is moved to `03_structure/old/`
with a date suffix.

**Negative Space Rules — what each file must NOT contain:**

| File | Must NOT contain |
|------|-----------------|
| `03_writing-blueprint.md` | Data sources, variable formulas (→ 02). Figure panel details (→ figure-outline). Terminology rules (→ terminology). Argument chain, claim hierarchy (→ section-architecture). |
| `03_figure-outline.md` | Argument chain, paragraph functions (→ writing-blueprint). Sentence sequences (→ writing-blueprint). Complete variable formulas (→ 02 methods). Terminology rules (→ terminology). |
| `03_terminology.md` | Argument chain, paragraph structure, figure arrangements, statistical details, writing style rules. |
| `03_section-architecture.md` | Data sources, variable formulas, statistical methods (→ 02). Figure panel details (→ figure-outline). Terminology rules (→ terminology). Sentence sequences (→ writing-blueprint). Discussion prose drafts. |

**Cross-referencing rule:** Each file links to the others, never duplicates. Section-architecture references figure-outline by figure ID. Figure-outline references terminology for term conventions. Section-architecture references 02_methods for operational definitions.

The legacy `03_project-brief.md` (single-file catch-all document) is deprecated and should be archived to `03_structure/old/`. Its content should be split into the four files above.

## Interaction Flow

The structure workflow proceeds through these phases:

```
 1. Intake materials        → read prepare, methods, evidence inventory
 2. Confirm target journal  → ask if missing, confirm if specified
 3. Load journal profile    → from references/journals/{journal}.md
 4. Identify central story  → from evidence inventory routes and claims
 5. Build argument chain    → need / gap / move / decisive evidence / bounded implication / limitation
 6. Build claim hierarchy   → primary / secondary / not ready for main story
 7. Lock protagonist        → what IS the protagonist, what is NOT, forbidden narrative moves
 8. Design section architecture → section role, claim hierarchy, P-ID range
 9. Build writing blueprint  → paragraph map + paragraph contracts + sentence slots
10. Assign figures          → each figure gets a scientific question and claim it serves
11. Plan supplement         → main text vs. supplementary material
12. Initialize terminology  → create 03_terminology.md with preferred/forbidden terms
13. Cross-reference check   → verify no duplication across the four 03 files
14. Save materials          → generate 03_section-architecture.md, 03_writing-blueprint.md, 03_figure-outline.md, 03_terminology.md
15. Confirm readiness       → Gate 1: 03 completion check before handoff to writing
```

### Pacing

Each turn asks **3–5 questions maximum**. Never ask the user to answer a dozen questions at once.

## Writing Gates (Cross-Stage Hard Rules)

### Gate 1: 03 Completion → 04 Writing

Before any manuscript prose is drafted:

- [ ] `03_section-architecture.md` has section role, claim hierarchy, argument chain, and P-ID range for every section
- [ ] `03_writing-blueprint.md` has P-ID and paragraph function for every planned paragraph; sentence sequence for Results/Intro/Discussion/Abstract paragraphs
- [ ] `03_figure-outline.md` has scientific question for every figure
- [ ] `03_terminology.md` has preferred/forbidden terms with location constraints
- [ ] Claim hierarchy locked (primary/secondary/not ready)
- [ ] Every Results paragraph has figure evidence assigned
- [ ] Every main-text figure is consumed by at least one paragraph. Supplementary / Extended Data figures may serve support, validation, sensitivity, or reviewer-defense roles without appearing in the main narrative.
- [ ] No duplication across the four 03 files

### Gate 2: High-Severity Review → Backpropagation

If a review issue is high-severity structure / protagonist / figure logic, the manuscript (04) must NOT be patched directly. Instead:

1. Update the affected upstream file (01/02/03) first
2. User confirms upstream change
3. Only then modify 04

See Review Workflow §Backpropagation for the full 3-level rule.

### Gate 3: Paragraph-ID Writing Discipline

When drafting in 04, every paragraph references its P-ID from `03_writing-blueprint.md`. The writer reads the paragraph's function and sentence sequence from the blueprint before writing. If a P-ID lacks sentence sequence (and needs one), the writing stage produces the sentence sequence first and asks for user confirmation before drafting.

### Gate 4: Terminology Lint

After completing each 04 draft round, scan for:
- Forbidden terms from `03_terminology.md`
- NL in Introduction or Abstract
- `signals` → should be `anomalies`
- `flux` used for this paper's transport metrics
- Stale figure panel references
- Inconsistent time-period phrasing

## Target Journal Handling

**Hard rule: Do not decide the target journal for the user.**

- If the user provides a target journal: record it, confirm it, then load the corresponding journal profile from `references/journals/`
- If the user does not provide one: ask during structure. If still unsure, write `target journal: not specified yet` and proceed without profile loading
- If the user asks for suggestions: offer 2–3 options with brief reasoning, referencing available journal profiles. End with "discuss with your advisor or coauthors."
- The profile is used to shape narrative architecture, not to enforce formatting constraints

## Journal Profile Use

When a target journal is confirmed, load the matching profile.

**03 Structure loads only `## Journal Identity`** — to understand what kind of story this journal rewards, what evidence standard is expected, and how that shapes manuscript architecture.

**Do NOT load `## Shared` or section-specific rules during 03.** Those are for 04 Writing.

| Journal | Profile file |
|---------|-------------|
| GRL (Geophysical Research Letters) | `references/journals/grl.md` |
| JGR-Oceans | `references/journals/jgr.md` |
| JPO (Journal of Physical Oceanography) | `references/journals/jpo.md` |
| Nature Communications | `references/journals/nc.md` |
| Nature Climate Change | `references/journals/ncc.md` |

The profile shapes: narrative architecture (sharp message vs. complete chain vs. dynamics-first
vs. broad significance vs. climate-change-centered); section emphasis (whether Methods is main
text or supplement, whether Discussion should be short or comprehensive); and claim depth (single
central claim vs. multi-line evidence).

## Structure Design Logic

The architecture is built in this order:

1. **Central story route** — select one route from the evidence inventory's possible story routes. Confirm with user.
2. **Argument chain** — build the ocean paper argument chain: need → gap → move → decisive evidence → bounded implication → limitation. Mark any missing or weak links.
3. **Claim hierarchy** — classify each claim as primary (must be in main narrative), secondary
   (supports primary but can be compressed), or not ready (insufficient evidence, move to
   supplement or defer).
4. **Section architecture** — design what each section does: Introduction sets up gap, Methods documents approach, Results presents evidence, Discussion interprets, Conclusion states significance.
5. **Figure sequence** — assign each figure to a section and narrative position. Order figures according to the Results Evidence Ladder (not the chronological order of analysis). Ensure figures build the story in logical order. **每张图必须在 `03_figure-outline.md` 中写明其回答的 scientific question，而不只是 panel 内容描述。**
6. **Main text vs. supplement** — decide which figures, methods details, and secondary analyses belong in supplement.

## Missing and Conflicting Information

| Tag | Meaning |
|-----|---------|
| `[STRUCTURE CONFLICT]` | User's outline or section preference conflicts with available evidence |
| `[MISSING]` | Information the user has not provided |
| `[UNCERTAIN]` | Information that may change or needs verification |

**Conflict handling:** If the user's outline claims something the evidence does not support, mark
`[STRUCTURE CONFLICT]`, present both the outline claim and the evidence limitation, and ask the
user to revise.

## Resume and Update Mode

When the user returns with existing `03_structure/` files:

1. **Read** the existing files (`03_section-architecture.md`, `03_writing-blueprint.md`, `03_figure-outline.md`, `03_terminology.md`)
2. **Identify update source** — new evidence, revised claims, changed journal target, or **review backpropagation** (Revision Contract in latest `05_review-round{N}B_report.md`)
3. **Preserve** confirmed architecture. Update only changed sections
4. **Archive** the previous version to `03_structure/old/` with a date suffix before major revisions
5. **Generate changelog:**

```markdown
## Update Summary
- Updated files: [list]
- New evidence or claims: [list]
- Changed journal or profile: [if applicable]
- Remaining structural issues: [list]
- Ready for writing: [yes / no / partial]
```

## Handoff to Writing

Needs: confirmed central story route, claim hierarchy (primary/secondary/not ready), section architecture, figure sequence with main/supplement assignment, journal profile loaded.

## Receiving Backpropagation from Review

当 review 阶段的 Revision Contract 需要更新上游文件时，structure 阶段接收回传。

### 触发源

`05_review/05_review-round{N}B_report.md` 中的 Revision Contract。

### 回传分级

回传分三档（详见 `review.md` Backpropagation Gate）。下表仅列 **Hard Backpropagation** 场景（需更新 01/02/03）：

| Review issue type | Backpropagates to | Example |
|------------------|-------------------|---------|
| Protagonist / central question / novelty changed | **01** Prepare + **03** Structure | Protagonist from NL → heat/salt transport |
| Data definition, statistical method, variable formula changed | **02** Methods | Relative reinforcement calculation adjusted |
| Narrative order, figure scientific question changed | **03** Structure | Fig. 1–3 reorder; section function redefined |
| Paragraph function, sentence sequence | **03** Writing Blueprint only | P-ID role change; local caveat move（Soft Update） |
| Sentence, paragraph expression, citation placement changed | **04** Writing | Result-first rewrite; terminology fix |
| Language style, compression, grammar | polish | NCC sentence case; word choice（No Backpropagation） |

Hard Backpropagation → 更新 01/02/03 后确认。Soft Blueprint Update → 只改 blueprint affected P-ID。No Backpropagation → 直接 writing/polish。

### 03 内部更新顺序

当回传目标为 03 时，按从粗到细的顺序更新四个 03 文件：

```
03_section-architecture  （全文方向：主角、论证链、claim hierarchy、section role）
  → 03_writing-blueprint （逐段功能：受影响 P-ID 的段落角色、句子推进是否需调整）
    → 03_figure-outline  （图科学问题：是否因段落重排而更新）
      → 03_terminology   （术语边界：新增/修改 forbidden term 或 allowed location）
```

Hard Backpropagation: 先改粗粒度（全文方向），用户确认后再改细粒度（段落/句子/术语）。不能跳过 architecture 直接改 blueprint。

Soft Blueprint Update: 只更新 03_writing-blueprint 中受影响 P-ID；不触动 architecture / figure-outline / terminology 的非相关部分。

### 执行流程

1. 读取 `05_review-round{N}B_report.md` 确定回传层级。

2. **If level = Hard Backpropagation:**
   - Archive affected files to `old/`（加日期后缀）。
   - 逐层更新：先改 01（如有），再改 02（如有），再改 03（如有）。
   - 每层更新后用户确认。
   - 全部上游确认后，handoff 回 writing 修改 04。

3. **If level = Soft Blueprint Update:**
   - 更新 affected P-ID in `03_writing-blueprint` only。
   - 不 archive（除非用户要求）。
   - 一次确认后，handoff 回 writing 修改 04。

4. **If level = No Backpropagation:**
   - 不触发 structure 操作。

5. 在 `04_writing-log.md` Revision Notes 追加记录。

### 规则

- **Hard Backpropagation: 高严重度结构问题不能直接 patch manuscript。** 必须先更新 01/02/03，再动 04。必须先 archive 旧版。每层更新后等用户确认。
- **Soft Blueprint Update: 只改 blueprint affected P-ID。** 不 archive。不触动 architecture / figure-outline / terminology。
- **只更新 Revision Contract 涉及的字段。** 不要重新设计整个 structure。

## Template References

When generating structure-stage materials, use:

- `references/templates/03_section-architecture.md` — section architecture template (replaces deprecated `03_project-brief.md`)
- `references/templates/03_writing-blueprint.md` — paragraph and sentence blueprint template
- `references/templates/03_figure-outline.md` — figure outline template
- `references/templates/03_terminology.md` — terminology dictionary template

The user-facing output files should be saved as:

- `03_structure/03_section-architecture.md`
- `03_structure/03_writing-blueprint.md`
- `03_structure/03_figure-outline.md`
- `03_structure/03_terminology.md`

The legacy `03_manuscript-structure.md` template has been removed. If encountered in older projects, archive it and migrate content into the four 03 files.

## Guardrails

- **Do not draft the manuscript during structure.** The output is an architecture document, not Introduction, Results, or Discussion text.
- **Do not decide the target journal for the user.** Record or suggest, then confirm.
- **Do not assign claims to sections that the evidence cannot support.** Mark `[STRUCTURE CONFLICT]`.
- **Do not force a narrative route that ignores available evidence.** Select from what the evidence supports.
- **Do not overload the main text with supplementary-level detail.** The supplement plan exists for a reason.
- **Do not skip journal profile loading when a target journal is specified.** The profile shapes section architecture.
- **Do not treat the structure as immutable.** The writing stage may reveal necessary adjustments.
- **Do not overcompress the structure to fit journal length limits.** Compression happens in writing and polish.
- **Preserve the evidence-to-claim connection.** Every section assignment must trace back to a verified claim.
