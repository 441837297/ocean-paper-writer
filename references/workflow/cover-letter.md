# Cover Letter Workflow

## Purpose

Stage 06 is a publication-material stage, not a manuscript-building core stage.
It generates cover letter material from confirmed manuscript outputs only.
The workflow does not create new scientific claims.

Goals:
- Align the contribution statement explicitly with the target journal's stated scope
- Include all required content blocks per the seven-paragraph structure
- Use journal-fit framing based on reference papers, not generic academic prose
- Proceed without a built-in journal profile; rely on reference papers for journal-specific style

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
- `reference_papers/` — 2–4 target journal papers for journal-fit paragraph and style reference

## What This Stage Must Not Do

- Invent novelty, central contribution, or claims not confirmed in prior stages
- Invent journal-fit rationale or editorial promises
- Invent reviewer expectations or unsupported significance claims
- Substitute for a journal submission checklist or formatting checker

## Required Inputs

- Confirmed target journal
- 2–4 reference papers from the target journal (full-text MD, used for journal-fit paragraph and style matching)
- Manuscript draft or abstract (for extracting title and key contribution)
- Corresponding author details (name, email, institution)
- Data/code availability information (repository URLs or "not publicly available")

If the central contribution or target journal is missing, mark `[MISSING]` or
`[CONFIRM WITH USER]`. If a cover-letter claim needs literature support and no source
is available, mark `[CITATION NEEDED]`.

## Journal-Fit via Reference Papers

Cover letter 不依赖内置期刊 profile。期刊适配段落通过**对标目标期刊已发文献**实现：

- 从 `reference_papers/` 加载 2–4 篇目标期刊近期论文
- 在期刊适配段引用这些论文，说明本文是该研究线索的延伸
- 风格指导来自 House Rules + 参考论文片段，不来自期刊 profile

如果用户未提供目标期刊参考论文，标记 `[MISSING]` 并询问用户是否提供。若用户暂时无法提供，先用通用期刊适配逻辑起草，标注 `[REFERENCE PAPERS PENDING]`。

## Required Output

```
06_cover-letter/06_cover-letter.md
```

## Journal-Fit via Reference Papers

Cover letter 不依赖内置期刊 profile。期刊适配段落通过**对标目标期刊已发文献**实现：

- 从 `reference_papers/` 加载 2–4 篇目标期刊近期论文
- 在期刊适配段引用这些论文，说明本文是该研究线索的延伸
- 风格指导来自 House Rules + 参考论文片段，不来自期刊 profile

如果用户未提供目标期刊参考论文，标记 `[REFERENCE PAPERS PENDING]`。可用通用期刊适配逻辑先起草，但必须提醒用户补充真实引用。

## Ask Strategy

Ask at most 3 questions before proceeding. Skip any that are already provided:

1. **Target journal** — required; determines journal-fit framing. If reference papers are not already in `reference_papers/`, remind user to provide 2–4 target journal papers for the journal-fit paragraph.
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

**段落 5（核心结果）** — 只给 headline 数字和最关键发现。不展开技术路径（如子类/子成分的分级估算留在正文）。如果有多条核心发现，保留最重要的动态信号（如"各分量均增强但净趋势不显著"），不能因为压缩而丢失。

## Letter Structure

采用七段结构。Cover letter 不是 compressed abstract——先做编辑定位，再说服送审。

| 段落 | 功能 | 不要写成 |
|------|------|---------|
| 1 | 投稿声明（title + article type） | 长背景 |
| 2 | 一句话稿件概要 | 结果细节 |
| 3 | 期刊适配：引用目标期刊已发文献，说明本文是这条线索的延伸 | 泛泛说 important |
| 4 | 知识缺口 | 方法堆砌 |
| 5 | 核心结果与意义（headline 数字 + 关键发现 + 动态趋势） | 另一版摘要 |
| 6 | 合规声明（原创性、未一稿多投、作者同意、无利益冲突） | 省略 |
| 7 | 礼貌结尾 | 过度恳求 |

### 段落功能详解

**段落 1（投稿声明）：** We submit our manuscript entitled "..." for consideration as a Research Article in [Journal].

**段落 2（一句话稿件概要）：** 一句话说明稿件报告了什么。不是 compressed abstract。

**段落 3（期刊适配）：** Cover letter 区别于 abstract 的最关键段落。
- 引用目标期刊上已发表的相关文章（1–3 篇，从 `reference_papers/` 获取）
- 说明本文是这条研究线索的延伸或补充
- 暗示：贵刊已经在关注这个领域，我们提供的是新的维度

示例逻辑：
> Recent articles published in your journal on [topic] (e.g., Author et al., YEAR; Author et al., YEAR) have highlighted [key finding]. Our work extends this line of research by [this paper's unique contribution].

**段落 4（知识缺口）：** 一句话说清前人做了什么、没做什么。不列文献综述。

**段落 5（核心结果与意义）：** 只给 headline 数字和最关键发现。
- 方向 + 量级 + 趋势，三者齐全
- 不展开技术路径（子类/子成分的分级估算留在正文）
- 如果有多条核心发现，保留最重要的动态信号（如"各分量均增强但净趋势不显著"），不能因为压缩而丢失

**段落 6（合规声明）：** 简短，视目标期刊要求调整。
- 原创性声明
- 未一稿多投
- 所有作者已批准
- 无利益冲突

**段落 7（礼貌结尾）：** 一句话，礼貌但不恳求。

## Letter Format

```
[Date]

The Editor-in-Chief
[Journal Name]

Dear Editors,

We submit our manuscript entitled "[Paper Title]" for consideration in
[Journal Name].

[One-sentence manuscript summary — what the paper reports, not a compressed abstract.]

**Fit to [Journal Name]**
[1–2 sentences referencing the journal's stated scope AND citing 1–3 related
articles published in the journal. Frame this paper as extending that line of research.
Reference papers from reference_papers/ provide the publication details.]

**Knowledge Gap**
[One sentence: what previous studies focused on, what they left unexplored.]

**Key Findings and Significance**
[Headline findings with 1 key number. Direction + magnitude + dynamic trend.
No multi-level estimation detail. No methodological defense.
Keep the most important dynamic signal.]

**Compliance**
We confirm that this manuscript is original, has not been published previously,
and is not under consideration for publication elsewhere. All authors have
approved the manuscript and agree with its submission to [Journal Name].
There are no conflicts of interest to declare.

We sincerely hope that you will find our work appropriate for your journal
and consider it for peer review. Thank you for your time and consideration.

Sincerely,
[Corresponding Author Name]
[Institution]
[Email]
```

If the editor name is unknown, use "Dear Editors" — safer than guessing.

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
> [Group A] generally [action X], whereas [Group B] [action Y]. [Headline number], equivalent to [percentage] of [reference quantity]. Both opposing components intensified, yet they nearly canceled, leaving no significant long-term trend in [net quantity].

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
| separating [property A] from [property B] across [categories] using [framework Z] | [data type] and [method type] reconstructions (YEAR–YEAR) |
| directly constrained [sub-category 1] under an extended attribution framework, with [sub-category 2] and [effect] enhancement | [删除，不放 cover letter] |

### 术语与尺度匹配

| 避免 | 使用 | 原因 |
|------|------|------|
| [local entity] represents a [domain-scale] sink | [process]-induced net [quantity] change | 大尺度概念不用于描述局部个体 |
| [noun] uptake [noun]（名词当动词用） | [noun] absorb / release [noun] | 词性正确 |
| In this work, we try to... | In this work, we show / quantify / add... | Cover letter 要自信，不用试探性动词 |
| [informal metaphor] | [plain academic equivalent] | 非正式比喻不适合正式 cover letter |

### 其他禁忌

- **不用大尺度术语描述局部个体** — 领域总览概念不用于个体过程；局部尺度用对应的过程动词
- **不把方法层级写太细** — 子类、子成分的分级估算留在正文
- **不丢失核心动态信号** — 如"各分量均增强但净趋势不显著"，不能因压缩而删除

## Interaction Flow

1. Confirm target journal
2. Load 2–4 reference papers from `reference_papers/` for journal-fit paragraph
3. Collect missing inputs (author details, data availability) — 3 questions max
4. Extract paper title and key contribution from manuscript draft
5. Draft the letter using the seven-paragraph structure
6. Output to `06_cover-letter/06_cover-letter.md`
7. Ask user to review and confirm

## Concept Pass vs Language Pass

**结构方向正确 ≠ 英文正确。** 最终提交前必须逐句检查：
- 每句是否有完整的主谓结构（不缺谓语、不缺名词）
- 动词搭配是否自然（名词不误用为动词）
- 修饰语是否与中心词匹配（模糊修饰语不与精确数字连用）

如果编辑联系人未明确指定，用 "Dear Editors" 比猜测具体姓名更安全。

## Edge Cases

| Situation | Handling |
|-----------|----------|
| Reference papers not provided | Mark `[REFERENCE PAPERS PENDING]`; draft journal-fit with generic framing, remind user to add real citations |
| Author details declined | Use `[Corresponding Author Name]`, `[Email]`, `[Institution]` placeholders |
| Data availability unknown | Use "Data availability will be confirmed at revision stage." |
| Multiple authors listed | Ask which one is the corresponding author |
| Editor name unknown | Use "Dear Editors" — safer than guessing |

## Guardrails

- Do not generate a cover letter without a confirmed target journal.
- Do not use generic journal framing without reference papers — mark `[REFERENCE PAPERS PENDING]` if missing.
- Do not fabricate author details, data repositories, or editor names.
- Do not skip the journal-fit paragraph — it is the most critical section for editor persuasion.
- Do not turn the cover letter into a compressed abstract.
- Do not expand methodological detail beyond data source + time range.
- Do not drop the most important dynamic signal (e.g., "opposing components intensified but net trend insignificant") during compression.
