# Cover Letter Workflow

## Purpose

Stage 06 is a publication-material stage, not a manuscript-building core stage.
It generates cover letter material from confirmed manuscript outputs only.
The workflow does not create new scientific claims.

Goals:
- Align the contribution statement explicitly with the target journal's stated scope
- Include all four required content blocks: contribution, data/code availability,
  conflict of interest, corresponding author
- Use journal-specific framing, not generic academic prose
- Refuse to generate if the journal profile is not available

## Cover Letter 的功能定位

Cover letter 不是摘要，不是 Methods，也不是 rebuttal。它只回答编辑最关心的四件事：

1. **投什么** — manuscript title + article type
2. **为什么适合这个期刊** — fit to journal scope, 引用该刊已发表的 related work
3. **核心发现是什么** — headline findings, 1–2 个关键数字
4. **为什么重要** — 对领域的贡献

核心原则：**Cover letter 不是 compressed abstract。** 不要在 cover letter 里把摘要再写一遍。

## When to Use

Run cover letter when: the polish stage is complete; the manuscript draft is confirmed;
the user is ready to submit; and a target journal is confirmed.

Do **not** run cover letter when: the manuscript is still being drafted or reviewed;
no target journal is confirmed; or the user only wants to explore journal options.

## Confirmed Materials Used

This stage draws from confirmed outputs only:

- `03_structure/03_section-architecture.md` — central story, claim hierarchy
- `04_writing/04_manuscript-reviewN-polishM.md` or latest confirmed manuscript — manuscript text and key findings
- `05_review/05_review-round{N}B_report.md` — confirmed claims and journal fit
- `04_writing/04_writing-log.md` — revision and polish records
- Target journal profile — scope and aims for contribution alignment

## What This Stage Must Not Do

- Invent novelty, central contribution, or claims not confirmed in prior stages
- Invent journal-fit rationale or editorial promises
- Invent reviewer expectations or unsupported significance claims
- Substitute for a journal submission checklist or formatting checker

## Required Inputs

- Confirmed target journal (must match one of the built-in journal profiles, or one
  distilled on demand)
- Manuscript draft or abstract (for extracting title and key contribution)
- Corresponding author details (name, email, institution)
- Data/code availability information (repository URLs or "not publicly available")

If the central contribution or target journal is missing, mark `[MISSING]` or
`[CONFIRM WITH USER]`. If a cover-letter claim needs literature support and no source
is available, mark `[CITATION NEEDED]`.

## Required Output

```
06_cover-letter/06_cover-letter.md
```

## Journal Profile Requirement

This stage requires a journal profile. If the target journal profile is not in the
built-in list and has not been distilled, refuse with:

> Journal profile for [X] not found. Available: GRL, JGR-Oceans, JPO,
> Nature Communications, Nature Climate Change. You can also request on-demand
> distillation if you provide a submission guide URL and 3–4 recent papers.

Do not proceed with generic framing if the profile is missing.

## Ask Strategy

Ask at most 3 questions before proceeding. Skip any that are already provided:

1. **Target journal** — required; determines which profile to load.
2. **Corresponding author details** (name, email, institution) — ask as a single
   grouped question.
3. **Data/code availability** — are datasets or code publicly available? If yes,
   ask for repository URLs. Default to "Data are not publicly available" if user
   declines.

If author details are not provided and user declines: use bracketed placeholders.

## 推荐段落结构（七段）

| 段落 | 功能 | 不要写成 |
|------|------|---------|
| 1 | 投稿声明（title + article type） | 长背景 |
| 2 | 一句话稿件概要 | 结果细节 |
| 3 | 期刊适配：引用该刊已发表的相关文献，说明本文是这条线索的延伸 | 泛泛说 important |
| 4 | 知识缺口 | 方法堆砌 |
| 5 | 核心结果与意义（1 个 headline 数字 + 关键发现） | 另一版摘要 |
| 6 | 原创性、未一稿多投、作者同意、无利益冲突 | 省略 |
| 7 | 礼貌结尾 | 过度恳求 |

### 段落功能详解

**段落 3（期刊适配）** — 这是 cover letter 区别于 abstract 的最关键段落。策略：
- 引用目标期刊上已发表的相关文章（1–3 篇）
- 说明本文是这条研究线索的延伸或补充
- 暗示：贵刊已经在关注这个领域，我们提供的是新的维度

示例逻辑：
> Recent articles published in your journal on [topic] (e.g., Author et al., YEAR; Author et al., YEAR) have highlighted [key finding]. Our work extends this line of research by [this paper's unique contribution].

**段落 4（知识缺口）** — 一句话说清前人做了什么、没做什么。不列文献综述。

**段落 5（核心结果）** — 只给 headline 数字和最关键发现。不展开技术路径（如 long-lived / shorter-lived / dipoles 分级估算留在正文）。如果有多条核心发现，保留最重要的动态信号（如"双向增强但净趋势不显著"），不能因为压缩而丢失。

## Letter Format

Use the following locked format:

```
[Date]

The Editor-in-Chief
[Editor Name]
[Journal Name]

Dear [Editor Name],

We submit our manuscript entitled "[Paper Title]" for consideration in
[Journal Name].

[One-sentence manuscript summary — what the paper reports, not a compressed abstract.]

**Fit to [Journal Name]**
[1–2 sentences referencing the journal's stated scope AND citing 1–3 related
articles published in the journal. Frame this paper as extending that line of research.]

**Knowledge Gap**
[One sentence: what previous studies focused on, what they left unexplored.]

**Key Findings and Significance**
[Headline findings with 1 key number. No multi-level estimation detail.
No methodological defense. Keep the most important dynamic signal.]

**Compliance**
We confirm that this manuscript is original, has not been published previously,
and is not under consideration for publication elsewhere. All authors have
approved the manuscript and agree with its submission to [Journal Name].
There are no conflicts of interest to declare.

We sincerely hope that you will find our work appropriate for your journal
and consider it for peer review. Thank you for your time and consideration.

Sincerely,
[Authors]
[Institution]
[Email]
```

### Contribution Statement Rule

Write 1–2 sentences that explicitly reference the journal's stated scope from the
loaded profile. Use journal-specific framing:

> This paper addresses [X], which aligns directly with [Journal]'s focus on
> [scope phrase from profile].

Do not use generic framing ("this paper advances the field of...").

### Data/Code Block

List repository URLs if provided. Otherwise state the reason or default to
"Data are not publicly available."

### Conflict of Interest

Always use the standard declaration.

### Contact Block

Use provided author details, or bracketed placeholders if not provided.

## 核心句式

**投稿声明：**
> We would like to submit our manuscript titled "..." for consideration as a Research Article in [Journal].

**期刊适配（引用已发文献）：**
> Recent articles published in your journal on [topic] (e.g., Author et al., YEAR) have highlighted [finding]. Our work extends this line of research by [unique contribution].

**知识缺口：**
> Previous studies of [field] have mainly focused on [what was done], leaving [what was unexplored] largely unexplored.

**核心发现（方向 + 量级 + 趋势）：**
> [Group A] generally [action X], whereas [Group B] [action Y]. [Headline number], equivalent to [percentage] of [reference quantity]. Both [components] intensified, yet they nearly canceled, leaving no significant long-term trend in [net quantity].

**意义（bounded implication）：**
> These results offer new constraints for [specific application], improving the representation of [process] in [models/attribution].

## 术语规则与禁忌

### 不要写成 compressed abstract

Cover letter 和 Abstract 有本质区别：

| 项目 | Abstract | Cover Letter |
|------|----------|-------------|
| 目标读者 | 科学读者和审稿人 | 编辑 |
| 核心功能 | 陈述发现 | 说服送审 |
| 方法细节 | 必须有但压缩 | 更少，只保留数据来源 |
| 数字 | 1 个 headline 数字 | 1 个 headline 数字，可含绝对量和百分比 |
| 期刊适配 | 不写 | 必须写 |
| 合规声明 | 不写 | 必须写 |
| 语气 | 科学陈述 | 礼貌但自信 |

### 方法细节层级控制

Cover letter 中的方法只保留数据来源，不展开技术路径：

| 避免（太细） | 使用（适当） |
|-------------|------------|
| separating X from Y across A and B using framework Z | satellite observations and machine-learning reconstructions (YEAR–YEAR) |
| directly constrained long-lived eddies under an extended attribution framework, with shorter-lived eddies and dipole enhancement | [删除，不放 cover letter] |

### 术语与尺度匹配

| 避免 | 使用 | 原因 |
|------|------|------|
| eddies represent a carbon sink | eddy-induced net CO2 uptake | sink 是海盆尺度概念，涡旋是个体 |
| eddy-induced sink | contribution to the ocean CO2 sink | 同上 |
| [noun] uptake [noun]（uptake 做动词） | [noun] absorb [noun] | uptake 是名词，不能做动词 |
| In this work, we try to... | In this work, we show / quantify / add... | Cover letter 要自信，不用试探性动词 |
| draw a piece of jigsaw puzzles | add a missing piece | jigsaw puzzles 不适合正式 cover letter |

### 其他禁忌

- **不用 "source/sink" 描述涡旋个体** — source/sink 用于 ocean-scale；涡旋尺度用 uptake/release、absorption/release
- **不把方法层级写太细** — long-lived、shorter-lived、dipoles 等分级估算留在正文
- **不丢失核心动态信号** — 如"双向增强但净趋势不显著"，不能因压缩而删除

## Interaction Flow

1. Confirm target journal → load journal profile
2. Collect missing inputs (author details, data availability) — 3 questions max
3. Extract paper title and key contribution from manuscript draft
4. Draft the letter using the locked format with seven-paragraph structure
5. Output to `06_cover-letter/06_cover-letter.md`
6. Ask user to review and confirm

## Concept Pass vs Language Pass

**结构方向正确 ≠ 英文正确。** 最终提交前必须逐句检查：
- 每句是否有完整的主谓结构（不缺谓语、不缺名词）
- 动词搭配是否自然（uptake 是名词不是动词、absorb 不是 uptake）
- 修饰语是否与中心词匹配（roughly 不与精确数字连用）

如果编辑联系人未明确指定，用 "Dear Editors" 比猜测具体姓名更安全。

## Edge Cases

| Situation | Handling |
|-----------|----------|
| Journal profile not found | Refuse; do not generate with generic framing |
| Author details declined | Use `[Corresponding Author Name]`, `[Email]`, `[Institution]` placeholders |
| Data availability unknown | Use "Data availability will be confirmed at revision stage." |
| Multiple authors listed | Ask which one is the corresponding author |
| Editor name unknown | Use "Dear Editors" — safer than guessing |

## Guardrails

- Do not generate a cover letter without a confirmed target journal profile.
- Do not use generic journal framing. The contribution statement must reference
  the journal's actual scope from the loaded profile.
- Do not fabricate author details, data repositories, or editor names.
- Do not skip the contribution statement alignment step.
- Do not turn the cover letter into a compressed abstract.
- Do not expand methodological detail beyond data source + time range.
- Do not drop the most important dynamic signal (e.g., "both limbs intensified, net trend insignificant") during compression.
