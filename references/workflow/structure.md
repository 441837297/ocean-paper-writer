# Structure Workflow

## Purpose

The structure workflow takes the idea (01) and materials (02) and produces a clear narrative framework — the bridge from scientific intent to journal-aligned prose. It does NOT write manuscript text. Its goals are to:

- Select the central story route from prepare-stage options and user confirmation
- Build a claim hierarchy: primary claims, secondary claims, and claims not ready
- Design section architecture with section roles and P-ID ranges; paragraph-level function (P-ID, paragraph function, evidence pointer, claim boundary) belongs to section-architecture
- Assign figures to claims with explicit scientific questions
- Initialize and maintain the terminology dictionary as the sole authority
- Derive journal-aware narrative guidance from target journal reference papers
- Produce three mutually-referencing 03 files (plus external reference snippet library). Summary or citation overlap is allowed as long as each scientific definition, sign rule or decision has a single authoritative home.

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
- Journal guidance shapes narrative scope, claim depth, and section emphasis (derived from reference papers)
- A well-structured architecture prevents wasted drafting AND prevents terminology abuse
- **Every paragraph in 04 must trace back to a P-ID and paragraph contract in 03_section-architecture.md.**
  **03_section-architecture.md controls section role, claim hierarchy, paragraph-level contracts, and P-ID range.**

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

This chain must be derived from the prepare-stage evidence inventory, methods materials, target journal reference papers, and user-confirmed research direction.

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
| JGR / JPO / GRL | Keep the ladder but compress or expand according to journal conventions |

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

**Journal guidance:** derived from 2–4 reference papers from the target journal in `reference_papers/`. These papers provide narrative identity, section conventions, and evidence standards for structure decisions.

## Required Output

Structure produces three files in the user's project directory. They must NOT duplicate each other:

```
03_structure/03_section-architecture.md  ← 论文撰写纲要（全文架构、主张层级、论证链、段落合同）
03_structure/03_figure-outline.md        ← 图片组织（每图科学问题、panel 逻辑、叙事衔接）
03_structure/03_terminology.md           ← 术语表（唯一术语权威来源）
```

外加项目根目录下的片段库：

```
reference_papers/                        ← 按 section 组织的参考论文写作片段；
                                         完整论文只作为片段提取来源，不进入 unit context
```

### Living document = canonical state

"活文档"指的是**当前有效决策可能改变**，而不是所有历史决策必须保留可见。

修改决策时：
1. 直接重写当前有效条目；
2. 删除文件中冲突的旧表述；
3. 不保留裁决过程、旧替代方案、审稿历史在 active 03 文件中；
4. 如需保留历史版本，移入 `03_structure/old/` 或依靠版本控制。

**禁止 append-only：不要在 active 03 文件末尾追加更新说明来覆盖旧决策。旧决策必须从 active 文件中移除。**

### One fact, one home（信息路由表）

| 信息类型 | 唯一住所 |
|---------|---------|
| 故事主线、主张层级、段落论证任务、叙事边界 | `03_section-architecture.md` |
| 科学定义、符号、正负号约定、因果强度、section exposure | `03_terminology.md` |
| 图件科学问题、面板逻辑、主图/ED 分工、叙事衔接 | `03_figure-outline.md` |
| 数据集、公式、阈值、网格、统计实现 | `02_methods/` |
| 精确数字、置信区间、显著性 | 源数据与当前 `04_writing/` |
| 逐句顺序、过渡措辞、段落引用组合 | 当前 04 手稿和 `04_writing-log.md` |
| 颜色、尺寸、字体、脚本名、运行命令 | 绘图代码 / figlog |
| 经典文献片段及其修辞分析 | reference snippet library |
| 通用风格偏好和 AI 味黑名单 | style-naturalization 模块 |
| 审稿理由和版本历史 | `05_review/`、`04_writing-log.md`、`old/` 或版本控制 |

### 四项准入测试

任何内容进入 03 之前必须同时满足：
1. **控制价值**：它确实改变了叙事顺序、主张范围、术语含义或图件逻辑？
2. **重复使用**：它将在后续至少两次写作/审查决策中被引用？
3. **唯一住所**：该 03 文件是它的唯一正确位置，其他地方无重复？
4. **可压缩性**：它可以写成简短规则，而非句子草稿或历史解释？

任一项不满足，就不能进入 03，应路由到上表对应的住所。

### Active 03 禁止内容

- 逐句槽位（S1, S2 等）和精确句数
- headline 数字、置信区间、相关系数
- 完整段落引用清单
- 方法公式和实现参数（已在 02 中定义）
- 完整 caption
- 配色、列宽比、字体、脚本名
- 长更新记录和裁决历史
- 不影响科学含义的通用风格偏好
- 经典论文的原句或改写句

### 压缩触发器（compaction trigger）

以下任一情况出现时，必须先压缩再继续追加：
- 同一概念在不止一个 03 文件中独立维护（引用或摘要允许，但完整定义须指向唯一来源）
- active 文件同时包含新旧冲突决策
- 段落合同中出现逐句措辞或具体数字
- 图件卡片中出现绘图实现细节而非科学逻辑
- 术语文件中出现通用风格禁令或历史理由
- 更新记录超过五行或存活到下一确认版本后

**压缩 = 重写为当前 canonical state，不是在末尾追加新的清理章节。**

### 软体量预算

这些是维护触发器，不是期刊限制：
- section-architecture：约 1500–2000 词，每个写作单元一行合同
- terminology：约 30 条 active semantic rules
- figure-outline：每张主图一个 compact card，每张 ED 一行

超过预算时，先执行 consolidation/migration，再添加新内容。

### Negative Space Rules — what each file must NOT contain

| File | Must NOT contain |
|------|-----------------|
| `03_figure-outline.md` | Argument chain, paragraph functions (→ section-architecture). Complete variable formulas (→ 02 methods). Terminology rules (→ terminology). |
| `03_terminology.md` | Argument chain, paragraph structure, figure arrangements, statistical details, writing style rules. |
| `03_section-architecture.md` | Data sources, variable formulas, statistical methods (→ 02). Figure panel details (→ figure-outline). Terminology rules (→ terminology). Discussion prose drafts. Sentence-level writing slots (逐句大纲已废弃). |

**Cross-referencing rule:** Each file links to the others, never duplicates. Section-architecture references figure-outline by figure ID. Figure-outline references terminology for term conventions. Section-architecture references 02_methods for operational definitions.

The legacy `03_project-brief.md` (single-file catch-all document) is deprecated and should be archived to `03_structure/old/`. Its content should be split into the three files above plus the external reference snippet library.

## Interaction Flow

The structure workflow proceeds through these phases:

```
 1. Intake materials        → read prepare, methods, evidence inventory
 2. Confirm target journal  → ask if missing, confirm if specified
 3. Load reference papers    → from reference_papers/ (2–4 target journal papers)
 4. Identify central story  → from evidence inventory routes and claims
 5. Build argument chain    → need / gap / move / decisive evidence / bounded implication / limitation
 6. Build claim hierarchy   → primary / secondary / not ready for main story
 7. Lock protagonist        → what IS the protagonist, what is NOT, forbidden narrative moves
 8. Design section architecture → section role + paragraph contracts (P-ID, paragraph function, evidence pointer, claim boundary) within section-architecture
 9. Assign figures          → each figure gets a scientific question and claim it serves
10. Plan supplement         → main text vs. supplementary material
11. Initialize terminology  → create 03_terminology.md with preferred/forbidden terms
12. Cross-reference check   → verify each scientific definition has a single authoritative home across the three 03 files
13. Save materials          → generate 03_section-architecture.md, 03_figure-outline.md, 03_terminology.md
14. Information routing      → 对每个条目分类：SKELETON（架构）/ BOUNDARY（术语）/ JOINT（图件）/ METHOD（02方法）/ PROSE（04写作）/ IMPLEMENTATION（代码figlog）/ HISTORY（old/review/版本控制）/ REFERENCE_SNIPPET（snippet library）。仅 SKELETON、BOUNDARY、JOINT 留在 03
15. Compact active 03 files  → 移除重复表述、历史理由、逐句槽位、具体数字、实现细节
16. Cross-file consistency   → section、terminology、figure 三文件必须只含一套兼容的 canonical decisions
17. Confirm readiness        → Gate 1: 03 completion check before handoff to writing
```

### Pacing

Each turn asks **3–5 questions maximum**. Never ask the user to answer a dozen questions at once.

## Writing Gates (Cross-Stage Hard Rules)

### Gate 1: 03 Completion → 04 Writing

Before any manuscript prose is drafted:

- [ ] `03_section-architecture.md` has section role, claim hierarchy, argument chain, paragraph-level contracts (P-ID, paragraph function, evidence pointer, claim boundary) for every paragraph. Move sequence and adjacent link are optional — use only when the logic or connection is non-obvious.
- [ ] `03_figure-outline.md` has scientific question for every figure
- [ ] `03_terminology.md` has preferred/forbidden terms with location constraints
- [ ] Claim hierarchy locked (primary/secondary/not ready)
- [ ] Every Results paragraph has figure evidence assigned
- [ ] Every main-text figure is consumed by at least one paragraph. Supplementary / Extended Data figures may serve support, validation, sensitivity, or reviewer-defense roles without appearing in the main narrative.
- [ ] No independently maintained duplicate definitions or conflicting decisions across the three 03 files

### Gate 2: High-Severity Review → Backpropagation

If a review issue is high-severity structure / protagonist / figure logic, the manuscript (04) must NOT be patched directly. Instead:

1. Update the affected upstream file (01/02/03) first
2. User confirms upstream change
3. Only then modify 04

See Review Workflow §Backpropagation for the full 3-level rule.

### Gate 3: Paragraph-ID Writing Discipline

When drafting in 04, every paragraph references its P-ID from `03_section-architecture.md`. The writer reads the paragraph's function, evidence pointer, and claim boundary from the section-architecture before writing.

### Gate 4: Terminology Lint

After completing each 04 draft round, scan against `03_terminology.md`:
- Forbidden terms appearing in the manuscript
- Preferred terms used inconsistently (multiple variants for the same concept)
- Terms used outside their allowed section scope (per section exposure rules)
- Stale figure panel references
- Inconsistent time-period phrasing

## Target Journal Handling

**Hard rule: Do not decide the target journal for the user.**

- If the user provides a target journal: record it, confirm it, then ask the user to place 2–4 recent papers from that journal as MD files in `reference_papers/`. Prompt:
  > 请将 2–4 篇 [Journal Name] 近期论文的 MD 全文放入 `reference_papers/`。这些论文将用于对标期刊叙事惯例、论证深度和段落结构。如暂时没有，可以先推进，但后续 writing/review/polish/cover-letter 阶段会需要。
- If the user does not provide one: ask during structure. If still unsure, write `target journal: not specified yet` and proceed without journal-specific guidance
- If the user asks for suggestions: offer 2–3 options with brief reasoning. End with "discuss with your advisor or coauthors."
- Reference papers are used to derive narrative architecture guidance, not to enforce formatting constraints

## Journal Guidance via Reference Papers

When a target journal is confirmed, load 2–4 reference papers from `reference_papers/`.

**03 Structure uses reference papers to understand:**
- What kind of story this journal rewards
- What evidence standard is expected
- How section architecture should be shaped
- What narrative conventions are common in this journal

No built-in journal profiles are used. All journal-specific guidance comes from the reference papers the user provides.

**Do NOT load `## Shared` or section-specific rules during 03.** Those are for 04 Writing.

## Structure Design Logic

The architecture is built in this order:

1. **Central story route** — select one route from the evidence inventory's possible story routes. Confirm with user.
2. **Argument chain** — build the ocean paper argument chain: need → gap → move → decisive evidence → bounded implication → limitation. Mark any missing or weak links.
3. **Claim hierarchy** — classify each claim as primary (must be in main narrative), secondary
   (supports primary but can be compressed), or not ready (insufficient evidence, move to
   supplement or defer).
4. **Section architecture** — design what each section does: Introduction sets up gap, Methods documents approach, Results presents evidence, Discussion interprets. If the target journal includes a separate Conclusion, it states significance.
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

1. **Read** the existing files (`03_section-architecture.md`, `03_figure-outline.md`, `03_terminology.md`)
2. **Identify update source** — new evidence, revised claims, changed journal target, or **review backpropagation** (Revision Contract in latest `05_review-round{N}B_report.md`)
3. **Preserve** confirmed decisions. Consolidate redundant material into the shortest canonical representation. Remove obsolete decisions and contradictory wording — do not keep them as append-only archaeology. Update only changed sections.
4. **Archive** the previous version to `03_structure/old/` with a date suffix before major revisions (optional; user may choose to skip archiving and directly overwrite).
5. **Remove old Update Summary** from the active file. Do not create new append-only history sections.

## Handoff to Writing

Needs: confirmed central story route, claim hierarchy (primary/secondary/not ready), section architecture, figure sequence with main/supplement assignment, journal-aware narrative guidance derived from reference papers.

## Receiving Backpropagation from Review

当 review 阶段的 Revision Contract 需要更新上游文件时，structure 阶段接收回传。

### 触发源

`05_review/05_review-round{N}B_report.md` 中的 Revision Contract。

### 回传分级

回传分三档（详见 `review.md` Backpropagation Gate）。下表仅列 **Hard Backpropagation** 场景（需更新 01/02/03）：

| Review issue type | Backpropagates to | Example |
|------------------|-------------------|---------|
| Protagonist / central question / novelty changed | **01** Prepare + **03** Structure | Central story shift (e.g., from mechanism A to consequence B) |
| Data definition, statistical method, variable formula changed | **02** Methods | Relative reinforcement calculation adjusted |
| Narrative order, figure scientific question changed | **03** Structure | Fig. 1–3 reorder; section function redefined |
| Paragraph function, paragraph contract changed | **03** Section-architecture only | P-ID role change; local caveat move（Soft Update） |
| Sentence, paragraph expression, citation placement changed | **04** Writing | Result-first rewrite; terminology fix |
| Language style, compression, grammar | polish | NCC sentence case; word choice（No Backpropagation） |

Hard Backpropagation → 更新 01/02/03 后确认。Soft Section-Architecture Update → 只改 section-architecture affected P-ID。No Backpropagation → 直接 writing/polish。

### 03 内部更新顺序

当回传目标为 03 时，按从粗到细的顺序更新三个 03 文件：

```
03_section-architecture  （全文方向：主角、论证链、claim hierarchy、section role、paragraph contracts）
  → 03_figure-outline  （图科学问题：是否因段落重排而更新）
    → 03_terminology   （术语边界：新增/修改 forbidden term 或 allowed location）
```

Hard Backpropagation: 先改粗粒度（全文方向），用户确认后再改细粒度（图/术语）。不能跳过 architecture 直接改 figure-outline。

Soft Section-Architecture Update: 只更新 03_section-architecture 中受影响 P-ID 的段落合同；不触动 figure-outline / terminology 的非相关部分。

### 执行流程

1. 读取 `05_review-round{N}B_report.md` 确定回传层级。

2. **If level = Hard Backpropagation:**
   - Archive affected files to `old/`（加日期后缀）。
   - 逐层更新：先改 01（如有），再改 02（如有），再改 03（如有）。
   - 每层更新后用户确认。
   - 全部上游确认后，handoff 回 writing 修改 04。

3. **If level = Soft Section-Architecture Update:**
   - 更新 affected P-ID in `03_section-architecture` only。
   - 不 archive（除非用户要求）。
   - 一次确认后，handoff 回 writing 修改 04。

4. **If level = No Backpropagation:**
   - 不触发 structure 操作。

5. 在 `04_writing-log.md` Revision Notes 追加记录。

### 规则

- **Hard Backpropagation: 高严重度结构问题不能直接 patch manuscript。** 必须先更新 01/02/03，再动 04。必须先 archive 旧版。每层更新后等用户确认。
- **Soft Section-Architecture Update: 只改 section-architecture affected P-ID。** 不 archive。不触动 figure-outline / terminology。
- **只更新 Revision Contract 涉及的字段。** 不要重新设计整个 structure。

## Template References

When generating structure-stage materials, use:

- `references/templates/03_section-architecture.md` — section architecture template (replaces deprecated `03_project-brief.md`)
- `references/templates/03_figure-outline.md` — figure outline template
- `references/templates/03_terminology.md` — terminology dictionary template

The user-facing output files should be saved as:

- `03_structure/03_section-architecture.md`
- `03_structure/03_figure-outline.md`
- `03_structure/03_terminology.md`

The legacy `03_manuscript-structure.md` and `03_writing-blueprint.md` templates have been removed. If encountered in older projects, archive them.

## Guardrails

- **Do not draft the manuscript during structure.** The output is an architecture document, not Introduction, Results, or Discussion text.
- **Do not decide the target journal for the user.** Record or suggest, then confirm.
- **Do not assign claims to sections that the evidence cannot support.** Mark `[STRUCTURE CONFLICT]`.
- **Do not force a narrative route that ignores available evidence.** Select from what the evidence supports.
- **Do not overload the main text with supplementary-level detail.** The supplement plan exists for a reason.
- **Do not skip deriving journal-aware guidance from reference papers when a target journal is specified.** The guidance shapes section architecture.
- **Do not treat the structure as immutable.** The writing stage may reveal necessary adjustments.
- **Do not overcompress the structure to fit journal length limits.** Compression happens in writing and polish.
- **Preserve the evidence-to-claim connection.** Every section assignment must trace back to a verified claim.
