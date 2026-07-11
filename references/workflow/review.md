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

The skill does not read the manuscript and form its own opinion. Instead, the
unified review workflow is:

> **提交稿件 → 外部审阅（导师 / GPT / 自审）→ 反馈写入 `05_review-round{N}A_source.md` → GPT 输出 `05_review-round{N}B_report.md` → ClaudeCode 依据 B_report 执行修改 → 记录到 writing-log**

The review source (advisor, external LLM, or self-review) does not change this workflow.
All feedback goes through the same pipeline: record, discuss, confirm, revise.

**Exception — Lightweight Unit Review:** For single-paragraph or single-unit review
without external input, the skill may originate a local diagnostic judgment
(Logic → Domain → Tutor → Language). This exception does NOT create 05 files and does
NOT replace the full review pipeline for section-level or manuscript-level review.
See [Lightweight Unit Review](#lightweight-unit-review).

## Prompt Generation for External LLM Review (Optional)

Before processing review input, the user may want an external LLM (GPT, Gemini, etc.) to
read the manuscript and produce review comments. The skill can generate a review prompt for
this purpose.

### Prompt generation flow

1. User confirms: want to send manuscript to external LLM for review.
2. User specifies review focus (own notes, specific concerns, specific sections) or chooses
   a review mode:
   - **通用审查**：使用 Review Dimensions（evidence, claim strength, section function, figure logic, overclaiming）
   - **导师视角审查**：加载 `tutor-review-checklist.md` 对应 section 规则，侧重论证层级、主张边界、文献定位和结果叙事
   - **期刊对标审查**：使用 `reference_papers/` 中的目标期刊范文进行结构和深度对标
3. Skill gathers required materials:
   - Current manuscript
   - Structure files (`03_section-architecture.md`, `03_figure-outline.md`)
   - Methods files (`02a_data.md`, `02b_methods.md`)
   - Evidence inventory (`01b_evidence-inventory.md`)
   - Target journal reference papers (if specified, from `reference_papers/`)
   - Reference papers in `reference_papers/` (if available, for style/structure benchmarking)
     **How to obtain:** Always read MinerU-converted `output.md` from Zotero storage first (clean full text, readable via Read tool). Do NOT use `get_content` (severe truncation, garbled PDF extraction). If no `output.md` exists for the target paper, remind the user to run MinerU conversion before extraction.  
4. Skill assembles a complete review prompt and saves it to `05_review/05_review-round{N}A_source.md`.
5. User copies the prompt to GPT / Gemini / other LLM.
6. User brings the LLM's response back.
7. The response is discussed with the user to determine revision actions, then the standard
   review→writing handoff applies.

**Hard rule:** The skill never sends prompts to external LLMs directly. The user controls
which LLM to use and does the sending. The skill only generates the prompt text.

## Processing Review Input

**分工原则：GPT 做决策，ClaudeCode 做执行。**

导师/用户/合作者的原始意见 → ClaudeCode 编译为 `A_source` → 发给 GPT → GPT 输出 `B_report`（Issue Log + Revision Contract + Patch List）→ ClaudeCode 按 B_report 执行修改。

ClaudeCode 不替代 GPT 做判断。ClaudeCode 的职责是：编译原始材料、打包发送、执行 Patch List、管理版本、记录日志、自检。

**Tutor checklist 在完整 review 中的角色：** 当已有的导师/合作者意见不够精确时，可用 checklist 帮助解释"导师可能在这条意见背后关心什么"，辅助定位问题的论证层级。**不得**借 checklist 在导师意见之外额外生成一批新问题。

### Interaction Flow

```
 1. ClaudeCode collects raw review input → compiles 05_review/05_review-round{N}A_source.md
    (advisor feedback / user self-review notes / coauthor comments)
    → ClaudeCode 组织整理，保留原始语气，不做分类、不做决策

 2. ClaudeCode packages materials for GPT:
    - A_source file
    - Current manuscript (04_manuscript-*.md)
    - 03_section-architecture.md, 03_figure-outline.md, 03_terminology.md
    - CLAUDE.md (project memory: protagonist lock, terminology rules, journal constraints, prohibitions)
    - 2–4 reference papers (from reference_papers/)
    → ClaudeCode 打包为 GPT Journal Audit Packet（见模板），user 发送给 GPT

 3. GPT analyzes and outputs 05_review/05_review-round{N}B_report.md:
    a. Issue Log — classify each issue, assign Accept / Defer / Reject
    b. Revision Contract — fill all fields
    c. 03 Update Requirements — derived from Revision Contract
    d. Patch List — concrete edit instructions, grouped by section
    e. Optional candidate rewrites — only for Abstract, Introduction P1,
       Results lead sentences, title, conclusion sentences
    f. GPT does NOT produce full rewritten manuscript

 4. User reviews GPT's B_report, confirms or adjusts decisions with ClaudeCode

 5. **REVIEW BACKPROPAGATION GATE — classify before editing**

    a. Classify each accepted issue as Hard / Soft / None per `## Review Backpropagation Gate` below.

    b. Hard Backpropagation: update 01/02/03 → user confirms → then modify 04.
       Soft Section-Architecture Update: update only affected P-ID(s) in `03_section-architecture.md`.
       No Backpropagation: proceed directly to writing / polish.

    c. User confirms the selected level before any file edit.

    d. Archive rules: only archive old 03 files for Hard Backpropagation.
       Soft updates do not require archival unless the user requests it.

 6. **CREATE VERSION COPY — hard gate before any manuscript edit**
    a. Identify base manuscript
    b. Copy base → 04_manuscript-reviewN.md
    c. ALL subsequent edits MUST target this new file only

 7. ClaudeCode executes Patch List on 04_manuscript-reviewN.md

 8. ClaudeCode appends all revision entries to 04_writing-log.md Revision Notes (newest first)

 9. ClaudeCode runs Revision Unit Done When self-check on each modified unit
```

**Step 6 is non-negotiable.** Even if the user says "just change one word in the base file," create the
new version first. The base manuscript is immutable once its round is complete. Skipping this step
is the single most common versioning error and will corrupt the manuscript history.

**Step 5e (User Confirmation Gate) is equally non-negotiable.** 若 03 文件被修改，用户必须确认结构蓝图后才能进入 manuscript 修改。跳过此步是 "正文写得很顺但主语漂移" 的根本原因。

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

## Lightweight Unit Review

When the user asks to review a single paragraph or draft unit **without external review input**
(e.g., "review this paragraph", "check this Results unit", "does this claim hold up?"),
use lightweight review. It does NOT create 05 files and does NOT require GPT.

### When to use

- User asks for a quick check of one paragraph or one draft unit
- No advisor/coauthor/external LLM feedback is involved
- The review scope is a single unit, not a full section

### When NOT to use

- External review input exists (→ full review pipeline with A_source/B_report)
- The issue spans multiple sections (→ section-level or manuscript-level review)
- The user explicitly wants GPT analysis

### Process

```
1. Load rules    → Determine section function from 03_section-architecture.
                   Load only current section Scope rules + 通用原则 rules.
                   Other section rules are not loaded and produce no output.
                   NOT_APPLICABLE is reserved for loaded rules that do not apply
                   to the specific paragraph position or content
                   (e.g., Discussion 首段规则适用于 Discussion 第三段时 → NOT_APPLICABLE).
                   Cross-document rules (e.g., 全稿口径一致) are skipped in unit-level
                   review — they require manuscript-wide material and cannot be verified
                   from a single paragraph.
2. Logic pass    → Does the claim follow from the evidence?
                   Is the paragraph performing the correct section function?
3. Domain pass   → Are terms consistent with 03_terminology?
                   Are concepts used correctly?
4. Tutor pass    → Run loaded tutor rules. Output PASS / FLAG / NOT_APPLICABLE per rule.
                   Each FLAG: trigger sentence, tutor追问, rule reference, minimal fix.
5. Language pass → Is the prose clear, precise, and journal-aligned?
                   (Only if Logic, Domain, and Tutor pass clean)
```

### Output format

```
## Lightweight Review — [P-ID]

### Logic
[诊断结果。如有问题，给出具体建议和 handoff destination]

### Domain
[诊断结果。术语是否一致、概念是否正确]

### Tutor
[每条已加载规则的 PASS / FLAG / NOT_APPLICABLE]
- [规则名称]: PASS
- [规则名称]: FLAG
  - Trigger: [触发句]
  - Tutor question: [导师可能追问什么]
  - Minimal fix: [最小修改动作]

### Language
[诊断结果。仅当 Logic + Domain 通过后才进入]

### Recommended action
- Handoff: [writing / polish / structure / methods]
- Severity: [high / medium / low]
- Backpropagation: [hard / soft-blueprint-only / none]
```

### Rules

- Do NOT create `05_review/` files for lightweight review.
- Do NOT generate A_source or B_report.
- If Logic identifies a structural issue (protagonist, section function, figure logic), recommend Backpropagation Gate but do NOT execute it — ask the user first.
- Language pass is skipped if Logic, Domain, or Tutor has unresolved issues.
- If the user confirms a structural change, classify it as hard / soft-blueprint-only / none, then follow the corresponding Backpropagation level.

## Required Inputs

**Core files:** `03_structure/03_section-architecture.md`, `03_structure/03_figure-outline.md`,
current manuscript (`04_writing/04_manuscript-draft.md` or latest `04_manuscript-reviewN.md`
/ `04_manuscript-reviewN-polishM.md`)

**Supporting files:** `01_prepare/01a_project-brief.md`, `01_prepare/01b_evidence-inventory.md`,
`02_methods/02a_data.md and 02_methods/02b_methods.md`, `03_structure/03_terminology.md`

**External review input:**
- **Required for full review pipeline.** Review comments from author, advisor, coauthors, or external LLM response.
- **Not required for Lightweight Unit Review.** Single-unit diagnostics run directly from the manuscript text and 03 files.

- **Required for Lightweight Unit Review Tutor pass:** `references/review/tutor-review-checklist.md`
- **Optional for full review:** used only to interpret or locate existing advisor feedback; not used to generate new issues

**Optional:** 2–4 reference papers from `reference_papers/` (for journal-specific style benchmarking).

## Required Output

Review produces exactly two user-facing files per round:

```
05_review/05_review-round{N}A_source.md   ← ClaudeCode 编译整理（原始意见，保留原文语气，不做决策）
05_review/05_review-round{N}B_report.md   ← GPT 分析报告（Issue Log + Revision Contract + Patch List）
```

**Naming convention:**
- `A_source` = ClaudeCode 编译整理。收集导师/用户/合作者的原始意见，组织为统一格式。保留原始语气。不分类、不评估、不做 Accept/Defer/Reject 决策。
- `B_report` = GPT 填写。GPT 读取 A_source + manuscript + 03 文件 + reference papers，输出分析报告。ClaudeCode 只能依据此文件进入 03 更新和 04 修改。ClaudeCode 不在此文件中做决策。
- A/B 表达天然顺序：ClaudeCode 先编译原始输入，GPT 再分析输出报告。

**分工原则：**
- **GPT = 决策者。** 解读导师意见、判断期刊对齐、分类 issue、决定 Accept/Defer/Reject、填写 Revision Contract、生成 Patch List。
- **ClaudeCode = 执行者。** 编译 A_source、打包材料、复制 manuscript、执行 Patch List、更新 03 文件、记录 writing-log、自检。

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

## Review Order

审查按顺序推进四层：

1. **Logic** — 论证链、段落功能、证据支撑。段落在 section 中的角色对吗？结论能从证据推出来吗？
2. **Domain** — 领域概念、术语、引用。术语与术语表一致吗？概念使用正确吗？引用到位吗？
3. **Tutor** — 导师审稿视角。主张边界清楚吗？Gap 有没有重复？文献功能明确吗？结果叙述直接吗？Limitations 交代影响而不自损吗？跨文档口径一致吗？
4. **Language** — 清晰度、流畅度、期刊语气。句子节奏、措辞、段落衔接。

Logic、Domain 或 Tutor 有未解决问题时，不进入 Language。语言润色不能掩盖论证或概念问题。

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
If an advisor comment conflicts with evidence or journal conventions, mark `[REVIEW CONFLICT]`,
present both sides, and ask user to decide priority.

## Missing and Conflicting Information

**Marking conventions:** `[MISSING]` = not provided, `[UNCERTAIN]` = may change, `[TODO]` = action
item, `[REVIEW BLOCKER]` = prevents meaningful processing, `[REVIEW CONFLICT]` = conflicting
review input, `[CONFIRM WITH USER]` = needs user input.

**Critical blockers:** no draft text, no structure file, no review input to process,
user-specified journal guidance unavailable, claims untraceable to evidence, unclear advisor
comments, inaccessible cited literature.

**Conflict handling:** do not silently resolve conflicts between review inputs — present both
sides and ask user to decide priority. Record resolution in review report.

## Resume and Update Mode

When user returns with existing `05_review/05_review-round{N}A_source.md` and `05_review/05_review-round{N}B_report.md`:
read existing B_report, identify last review pass, preserve resolved items, add new review pass
for new content, generate changelog:

```markdown
## Update Summary
- Review pass added: [date / scope / section reviewed / review source]
- Issues resolved: [list], Issues remaining: [list], New issues: [list]
- Recommended next action: [handoff destination]
```

## Review Backpropagation Gate

**在每轮 review 形成 Revision Contract 之后、修改 manuscript 之前，必须执行此检查。**

### Classification Conditions

When a review issue touches any of the following, classify it as Hard / Soft / None
per Backpropagation Levels before editing. Do NOT assume every hit requires full upstream update.

- Paper protagonist 改变
- Title / abstract / introduction 的主语改变
- Main gap / central claim 改变
- Figure order 或 figure scientific question 改变
- Section function 改变（如 Discussion 变成了 Results）
- Paragraph function / sentence sequence 改变
- Terminology / forbidden phrasing 改变
- Caveat placement 改变
- Target journal voice 改变
- Review 明确指出："not just polish", "structural rearrangement", "wrong narrative focus", "wrong protagonist", "section performs wrong job"

Then follow Backpropagation Levels below.

### Backpropagation Levels

并非所有 review issue 都需要全套回传。按严重度分三档：

| Level | Scope | Examples | Action |
|-------|-------|----------|--------|
| **Hard Backpropagation** | 结构性变更，影响全文论证方向 | protagonist 改变、central claim 改变、main gap 改变、figure scientific question 改变、methods definition 改变、evidence chain 重排 | archive → update 01/02/03 → 用户确认 → 改 04 |
| **Soft Blueprint Update** | 局部调整，不改变全文方向 | paragraph function 微调、sentence sequence 调整、caveat placement 局部移动、terminology boundary 局部修改 | 更新 affected P-ID in blueprint → 用户确认 → 改 04。不 archive，不更新 01/02。 |
| **No Backpropagation** | 表达层面，不影响结构 | wording、grammar、sentence rhythm、单个 claim verb 强度调整、citation placeholder | 直接 writing / polish，不触发回传 |

**规则：**
- ClaudeCode 先判断属于哪一档，口头告知用户判断理由，再问用户确认。
- Hard Backpropagation → 必须先改 01/02/03，再改 04。
- Soft Blueprint Update → 只改 blueprint 的受影响 P-ID + 04。不改 architecture / figure-outline / terminology 的非相关部分。
- No Backpropagation → 直接 polish / writing，不留 05 以外的结构性记录。
- 不确定属于哪一档时，默认取更严格的一档，列出理由后问用户。

### Mandatory Execution Order

1. 在 `05_review/05_review-round{N}B_report.md` 中填写 Revision Contract，包含 Backpropagation level（见模板）。

2. **If level = Hard Backpropagation:**
   - Archive affected 01/02/03 files to `old/`（加日期后缀）。
   - Update upstream files from coarse to fine（01 → 02 → 03_section-architecture → 03_figure-outline → 03_terminology）。
   - User confirms upstream changes at each layer.
   - Only then copy and patch 04.

3. **If level = Soft Section-Architecture Update:**
   - Update only affected P-ID(s) in `03_section-architecture.md`。
   - Do not archive unless user explicitly requests it.
   - Single user confirmation on the section-architecture change.
   - Then copy and patch 04.

4. **If level = No Backpropagation:**
   - Do not update any 03 file.
   - Proceed directly to writing / polish.

5. 所有上游更新记录写入 `04_writing-log.md` Revision Notes。

### Revision Contract 字段速查

| 字段 | 对应上游文件 |
|------|-------------|
| Paper protagonist / Not protagonist / Main consequence | `03_section-architecture.md` Protagonist Lock |
| Main gap / Central claim | `03_section-architecture.md` Argument Chain |
| Paragraph function / paragraph contract changes | `03_section-architecture.md` |
| Section-level changes | `03_section-architecture.md` Section Architecture |
| Figure logic changes | `03_figure-outline.md` |
| Terminology changes | `03_terminology.md` |
| Caveat placement | `03_section-architecture.md` Argument Chain (limitation link) |
| Target journal | `03_section-architecture.md` Target Journal |

### Hard Rules

- **Hard Backpropagation → 必须先更新 01/02/03，用户确认后，再改 04。无例外。**
- **Hard Backpropagation → 更新前必须先 archive 旧版到 `old/`。**
- **Soft Blueprint Update → 只改 blueprint affected P-ID + 04。不 archive。不触动 architecture / figure-outline / terminology。**
- **No Backpropagation → 直接 writing / polish。不触发 03 更新。**
- **所有改动写入 `04_writing-log.md` Revision Notes。**
- **若跳过此 gate 直接改 manuscript，后续 review round 将无法追溯结构变更。**

### Example: Protagonist Shift (hypothetical)

*以下为脱敏假设示例，展示 Backpropagation Gate 的完整触发和执行。*

**Review 发现：** 导师/GPT 指出 manuscript 的 protagonist 应该是 [process/quantity B]，而非 [process/quantity A]。[A] 降级为 supporting diagnostic。Introduction 过早引入 [technical method X]。Fig. 1–3 目前展示方法流程，而非回答科学问题。

**触发条件命中：**
- paper protagonist 改变: `[process A + vague noun chain]` → `[process B]`
- figure scientific question 改变: Fig. 1–3 需从方法展示改为科学问题驱动
- terminology 改变: "[vague term 1]", "[vague term 2]", "[vague term 3]" → discouraged/forbidden
- caveat placement 改变: 防御性表述需从 Results 移至 Methods / Discussion boundary

**Revision Contract Handoff destination:**
- [x] 03_section-architecture (Protagonist Lock, Section Architecture)
- [x] 03_section-architecture (paragraph contracts for affected P-IDs)
- [x] 03_figure-outline (Fig. 1–3 scientific questions)
- [x] 03_terminology (forbidden: [vague term 1], [vague term 2], [vague term 3])
- [x] 04_manuscript

**执行顺序：**
1. Archive 旧 03 到 `old/`
2. 更新 `03_section-architecture.md` Protagonist Lock: protagonist → [process B]; not protagonist → [process A]; forbidden narrative moves → "不要把 [A] 当主角"
3. 更新 `03_section-architecture.md`: 受影响 P-ID 的段落合同 → [调整内容]
4. 更新 `03_figure-outline.md`: Fig. 1–3 每张写入 scientific question
5. 更新 `03_terminology.md`: forbidden phrases 加入 "[vague term 1]", "[vague term 2]", "[vague term 3]"
5. 等待用户确认 03 更新
6. 复制 base manuscript → `04_manuscript-reviewN.md`
7. 修改正文: Introduction 移除 [technical method X]；Results 首句 result-first；caveats 集中到 Methods / Discussion boundary

## GPT Journal Audit Packet Reference

*GPT 分析是主流程的强制步骤（见 Interaction Flow Step 2–3）。此节提供 ClaudeCode 打包时使用的模板和规则。*

### GPT Hard Rules

GPT is the decision-maker for this review round, not the manuscript version controller.

- GPT 输出 `B_report`（Issue Log + Revision Contract + Patch List），ClaudeCode 执行。
- GPT 不执行全稿 polish。GPT 不输出完整 rewritten manuscript。
- GPT 可以提供 candidate rewrite，但仅限于高价值短单元：
  - Abstract
  - Introduction opening paragraph
  - Results subsection lead sentences
  - Title options
  - Summary / conclusion sentences
- 所有正式入稿由 ClaudeCode 完成，并记录在 `04_writing-log.md`。
- 若 GPT 指出 protagonist / gap / figure logic / section function 需改变，必须在 Revision Contract 中标记对应的 03 Handoff destination。

### GPT Journal Audit Packet Template

*ClaudeCode 在 Step 2 使用此模板打包材料。User 复制整个 block 发给 GPT。*

---

```
# GPT Journal Audit Packet

You are the review-round analyst for this manuscript.
Your job: read the compiled review input, analyze against the target journal's requirements,
and produce a structured report (B_report) that Claude Code will execute.

Do not rewrite the full manuscript. Do not produce a polished final draft.
You are the decision-maker. ClaudeCode is the executor.

## Target journal

[Insert: NCC / NC / JPO / JGR-Oceans / GRL / other]

## Journal voice principles

[Paste journal-specific guidance derived from reference papers. Key elements:
- Narrative identity of the target journal (from reading 2–4 reference papers)
- Shared writing conventions observed across those papers
- Section-specific patterns (Methods depth, Results structure, Discussion style)]

## Compiled review input

[Paste the full content of 05_review/05_review-round{N}A_source.md]

## Project state (from 03_section-architecture.md)

- Paper protagonist:
- Not protagonist:
- Main gap:
- Central claim:
- Main consequence:
- Supporting diagnostics:
- Forbidden narrative moves:

## Project constraints (from CLAUDE.md)

- Terminology rules (preferred/discouraged/forbidden):
- Journal-specific constraints:
- Writing workflow rules:

## Current manuscript

[Paste the manuscript unit(s) under review]

## Reference papers provided

[Attach or paste 2–4 reference paper .md files.
For NCC: include at least one target-journal model paper and one topic-near paper.]

## Audit priorities

Please check:

1. Whether the paper protagonist is stable throughout the manuscript.
2. Whether each section performs its correct section-level job.
3. Whether the writing matches the target journal's narrative identity.
4. Whether Results paragraphs are result-first (lead with finding, not figure reference).
5. Whether physical links replace literature-as-glue.
6. Whether caveats are concentrated rather than scattered across sections.
7. Whether abstract noun chains or AI-like phrases weaken the prose.
8. Whether evidence boundaries are preserved without defensive overstatement.
9. Whether the manuscript imitates the surface form of the reference papers
   or captures their deeper narrative logic.

## Target-journal interpretation

[Derived from reference papers. Example for a broad-interest journal:]
- broad significance and cross-field readability
- strong evidence chain with clear mechanism/evidence balance
- narrative shaped for scientifically literate non-specialists
- [adjust based on actual reference papers provided]

## Output format (this becomes 05_review/05_review-round{N}B_report.md)

A. One-sentence overall diagnosis
B. Issue Log — classify each issue: Severity (high/medium/low), Type, Decision (Accept/Defer/Reject)
C. Revision Contract — fill ALL fields (protagonist, gap, claim, consequence, section-level changes,
   figure logic changes, terminology changes, caveat placement, Handoff destination checkboxes)
D. 03 Update Requirements — concrete changes needed for each checked 03 file
E. Patch List — concrete edit instructions for ClaudeCode, grouped by manuscript section (Title/Abstract/
   Introduction/Results/Discussion/Methods)
F. Optional candidate rewrites ONLY for: Abstract, Introduction opening paragraph,
   Results lead sentences, title, conclusion sentences
G. Do NOT produce a full rewritten manuscript.
```

---

### After Receiving GPT's B_report

1. User reads GPT's `B_report`, confirms or adjusts Accept/Defer/Reject decisions with ClaudeCode.
2. If GPT identified structural issues → Backpropagation Gate triggers (see Interaction Flow Step 5).
3. ClaudeCode executes Patch List → writes to `04_manuscript-reviewN.md` → logs to `04_writing-log.md`.
4. ClaudeCode runs Revision Unit Done When self-check.

## Handoff to Writing or Polish

### Before You Touch Any File — Mandatory Checklist

When the user asks to apply review feedback to the manuscript, complete these steps
**in order** before any Edit or Write call:

```
[ ] 0. Check `Backpropagation level` in Revision Contract.
       - hard → archive affected 01/02/03, update upstream files, confirm each layer, then edit 04
       - soft-section-architecture-only → update affected P-ID(s) in `03_section-architecture.md`, no archive by default, confirm once, then edit 04
       - none → do not update 03; proceed directly to writing / polish
       Record any upstream or blueprint changes in `04_writing-log.md`.

[ ] 1. Identify the base manuscript file.
       For round N: if N=1, base = 04_manuscript-draft.md.
       If N>1, base = the most recent 04_manuscript-review{N-1}.md
       (or 04_manuscript-review{N-1}-polishM.md if the previous round ended with polish).

[ ] 2. Copy the base to the new round file.
       cp base_file 04_writing/04_manuscript-reviewN.md
       Do NOT skip this step. Even a one-word change requires a new file.
       The base manuscript is immutable once its round is complete.

[ ] 3. Edit ONLY the new file (04_writing/04_manuscript-reviewN.md).
       Never open an Edit targeting the base file.

[ ] 4. When updating 04_writing/04_writing-log.md:
       a. Read the current last 5-10 lines of the Revision Notes table first.
       b. Add new entries at the TOP of the table (newest first).
       c. Never use an old_string that spans multiple existing entries.
       d. Match only the table header or the current top entry as your anchor.
```

This checklist applies identically to polish→writing handoffs (producing
`04_manuscript-reviewN-polishM.md` instead of `04_manuscript-reviewN.md`).

### Handoff Destinations

- **Back to writing:** paragraph unclear, flow weak, claim placement wrong, missing transition.
  Action: revision instructions per issue; `[REVISION DRAFT]` if user requests.
- **Back to structure:** section architecture wrong, figure order illogical, central story unclear,
  journal narrative mismatch. Action: classify Backpropagation level first.
  Hard → archive and update affected 01/02/03 files.
  Soft → update only affected P-ID(s) in `03_section-architecture.md`.
  Record in writing-log, then return to writing.
- **Back to methods:** methods cannot support claim, processing unclear, statistical test missing.
  Action: update `02a_data.md and 02b_methods.md`, re-draft affected units.
- **Back to prepare:** research question unclear, evidence inventory incomplete, figure-to-claim
  matrix wrong. Action: update `01a_project-brief.md` and `01b_evidence-inventory.md`.
- **Forward to polish:** issues primarily about language, style, journal voice,
  advisor wording. Action: review report as diagnostic input for polish.

## Revision Unit Done When

*每个 revision unit 执行完毕后，ClaudeCode 自检以下 8 条。全部通过才能标记 unit 完成。*

```
[ ] Protagonist is correct      — 主语是否匹配 Revision Contract 的 paper protagonist
[ ] Section job is correct      — 此段落是否在执行正确的 section function
[ ] Journal voice is correct    — 是否匹配目标期刊 `## Journal Identity`
[ ] First sentence performs     — Results 首句是否 result-first；Introduction 首句是否提出 gap/question
[ ] Key evidence is visible     — 核心发现/数据/数字是否出现在段落前半，而非埋在末尾
[ ] Caveats are not scattered   — 防御性表述是否集中而非散布（对照 Defensive-language quarantine）
[ ] Terminology is clean        — 是否遵守 03_terminology（preferred/discouraged/forbidden）
[ ] Changes are logged          — 是否已追加到 04_writing-log.md Revision Notes
```

任一条未通过 → 修正后重新自检。全部通过 → 标记 unit 完成，进入下一 unit。

## Template References

When generating review-stage materials, use:
- `references/templates/05_review-source.md` — for `05_review/05_review-round{N}A_source.md` (raw input container)
- `references/templates/05_review-report.md` — for `05_review/05_review-round{N}B_report.md` (GPT analysis report; ClaudeCode execution input)

Save user-facing output as:
- `05_review/05_review-round{N}A_source.md`
- `05_review/05_review-round{N}B_report.md`

## Guardrails

- **Do not form independent review judgments in the full review pipeline.** The skill classifies
  and maps external review input; it does not originate critiques of the manuscript.
  Exception: Lightweight Unit Review may originate local diagnostic judgments for a single unit.
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
- **Do not generate per-section review reports** — a single `05_review-round{N}B_report.md` covers
  all passes.
