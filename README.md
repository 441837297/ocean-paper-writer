# Ocean Paper Writer

面向海洋科学研究者的分阶段论文写作 skill。它把项目书、图表、代码、数据描述、文献和反馈整理成可确认、可追溯的手稿材料。

研究者负责科学判断与最终文字；skill 负责组织材料、提示证据边界、辅助写作和执行已确认的修订。

## Skill Ecosystem

### Ocean Paper Writer

[Ocean Paper Writer](https://github.com/441837297/ocean-paper-writer) is the controller for paper development, scientific writing, advisor/reviewer/editor Feedback, and confirmed local revision. Its revision loop is Strategy -> Revision Brief -> Prose -> Verify.

### Ocean Paper Reviewer

[Ocean Paper Reviewer](https://github.com/441837297/ocean-paper-reviewer) performs whole-manuscript preflight after a complete draft: section function, claim-evidence alignment, Introduction-Results-Discussion closure, cross-manuscript consistency, and manuscript readiness diagnostics. It does not replace OPW Verify for a known local revision.

### Nature Story

[Nature Story](https://github.com/haohuresearch/nature-story) is an independently installed scientific-story skill for question and tension, novelty, mechanism, evidence architecture, research programme, and Figure/Results architecture. It does not replace Ocean Paper Reviewer.

```text
research idea / unstable scientific story
  -> user confirms route -> Nature Story -> Story Handoff Packet
  -> user confirms scientific decisions -> Ocean Paper Writer
  -> Build / Strategy -> Prose -> Verify -> complete manuscript
  -> user confirms route -> Ocean Paper Reviewer -> issue list
  -> user selects issue -> Ocean Paper Writer: Strategy -> Prose -> Verify
```

Cross-skill routing is advisory and always requires explicit user confirmation.

## 安装

```bash
git clone https://github.com/441837297/ocean-paper-writer.git ~/.claude/skills/ocean-paper-writer/
```

重启 Claude Code。升级时在 skill 目录运行 `git pull`。详见 [INSTALL.md](INSTALL.md)。

## ChatGPT Web

在支持 Skills 上传的 ChatGPT 工作空间中，可直接上传本仓库的 ZIP 包。Web 环境没有本地项目目录或脚本时，仍可基于用户上传的材料完成 Strategy、Prose 和 Verify；本地代码、Word 文件和 Zotero 都是可选增强能力。

## 两条工作通道

从零建立研究或论文时，保留原有的 `prepare → methods → structure → writing`。它负责把研究问题、数据方法和文章结构建立为可确认的项目状态。

已有成熟手稿时，默认使用迭代通道：

```text
Strategy → Revision Brief → 必要分析 → Prose → Verify → PASS → 更新必要文件
```

导师、合作者、编辑和 reviewer 意见通过 Feedback 进入这条通道；reviewer 场景额外生成 response letter。讨论、候选段落和未接受的分析不修改正式项目文件；仅在用户接受且 Verify 为 PASS 后，更新手稿及确有必要的 01–03 文件。阅读笔记围绕原论文及已确认的阅读问题独立记录，不要求与当前手稿建立联系。

## 从零建立论文

| Stage | 作用 | 主要输出 |
|-------|------|----------|
| 01 Prepare | 确认研究问题、范围、证据和缺口 | `01a_project-brief.md`, `01b_evidence-inventory.md`, optional `01c_literature-synthesis.md` |
| 02 Methods | 分开记录数据集与分析方法 | `02a_data.md`, `02b_methods.md` |
| 03 Structure | 设计 section、subsection 和 logical result unit 架构 | `03_section-architecture.md`, `03_figure-outline.md`, `03_terminology.md` |
| 04 Writing | 从已确认架构和证据起草正文 | `04_manuscript-draft.md`, `04_writing-log.md` |
| 05 Review | 将外部反馈转为决策、修订合同和 patch | `05_review-round{N}A_source.md`, `05_review-round{N}B_report.md` |
| Polish | 在 Prose / Verify 内精修已确认的局部文本 | 当前 manuscript 的局部候选修改 |
| 06 Cover Letter | 从已确认手稿生成投稿信 | `06_cover-letter/06_cover_letter.md` |

Structure 规定各 section、subsection 或结果单元承担什么任务。Writing 根据局部科学逻辑和相邻正文自然决定段落边界，不预先固定段落数量或句子顺序。

## Reference Papers

项目文献入口为 `reference/`，包含项目核心论文的 Markdown 全文和一个同时承担索引的 `文献阅读笔记.md`，不另建 `文献索引.md`。Zotero 保留 PDF 和一份清理后的阅读 Markdown，不额外保留原始转换 Markdown；方法依据和一般背景文献不默认复制到项目核心全文目录。全文命名与阅读条目结构以 `SKILL.md` 的 Project Reference Reading Notes 为准。

- 阅读笔记保存逐篇讨论确认的阅读目的、学习点、原文及启发，预览接受后记录，可包含科学理解与修辞学习。
- `01c_literature-synthesis.md` 保存文献在本项目中的科学作用、方法来源链、主张支持和适用边界，按需链接笔记或来源。
- `Reference Reading Brief` 是当前问题的临时文献提取结果，可涉及科学信息、方法或论证与表达，通常只在对话中使用。低价子代理提取，主代理核验并讨论；每次启动委派前与用户确认可用模型，规则见主技能。

即时阅读先扫描标题，只读取相关章节。提取结果保留支持信息的完整原句和必要上下文，阅读笔记按主技能流程预览接受后记录，并能脱离当前手稿独立使用。

## 项目信息归属

| 文件 | 唯一职责 |
|------|----------|
| `01a_project-brief.md` | 研究问题、科学范围、目标或假设、高层边界 |
| `01b_evidence-inventory.md` | 证据资产、强度、claim-support mapping 和缺口 |
| `01c_literature-synthesis.md` | 科学 provenance 和 literature role |
| `02a_data.md` | 数据集 identity、coverage、resolution、access 和 dataset-level caveat |
| `02b_methods.md` | 诊断、公式、参数、统计、敏感性和复现逻辑 |
| `03_section-architecture.md` | 论文 story、argument chain 和 section/result-unit responsibility |
| `03_figure-outline.md` | 图的科学问题、叙事角色、顺序和 panel logic |
| `03_terminology.md` | 命名、缩写、单位和 usage boundary |
| Project `CLAUDE.md` | 项目记忆、状态、路径和项目特定约束 |

下游文件只保留执行当前任务所需的最短上下文，并指向权威来源。

## 写作、审查与润色

写作默认处理一个段落，最大处理一个小节。`references/workflow/writing.md` 是 House Rules 的唯一来源。

Strategy 只讨论怎么改，并产生简短的 `Revision Brief`；Prose 只执行已确认的修改意图；Verify 独立检查候选稿是否完成任务、保持科学含义且不越过证据边界。Feedback 是导师、合作者、编辑和 reviewer 意见的入口。

普通局部修改不默认复制完整手稿，也不默认全篇同步。通过后先更新当前 manuscript；只有数字、术语、中心主张、图件或方法定义、章节职责受影响时，才扩大一致性检查和必要同步。

## 目标期刊

用户决定目标期刊。未指定时仍可按通用流程推进。确认期刊后，可提供少量相关近期论文供具体任务即时阅读；只有确认属于项目核心论文的全文才保留到 `reference/`。

期刊适配与证据判断分开：参考论文帮助理解论述惯例，项目证据决定本文能主张什么。

## Zotero

日常优先读取库内阅读 Markdown；缺失时用 `paper2md` 转换，只保留一份清理后的阅读 Markdown，必要时直接查阅 PDF。转换调用与清理边界见 `references/zotero/README.md`。

Zotero MCP 是可选文献检索层。完整的权限、确认、只读和 full-text retrieval 规则只在 `references/zotero/README.md` 维护。当前环境没有 Zotero connector 时，不调用该集成，改用用户上传的论文或其他可用来源。项目没有 Zotero 也可以运行，缺失引用标记为 `[CITATION NEEDED]`。

## 仓库结构

```text
SKILL.md                         global constitution, routing, ownership, loading map
references/workflow/             stage procedures
references/subagents/            canonical reference-reading prompt
references/writing/              focused section-writing modules
references/review/               focused review and response modules
references/templates/            project-output schemas
references/zotero/               Zotero integration policy
references/journals/archive/      non-authoritative historical material
examples/                         non-authoritative illustrations
scripts/                          small reusable helpers
assets/                           response-letter asset
```

`examples/`, `archive/`, `deprecated/` 和项目 `old/` 不参与正常 active-context 扫描。

## 开始使用

告诉 skill：你是从零建立论文，还是要修改已有手稿；如可访问项目目录，也提供路径。新项目从 prepare 开始；已有手稿直接进入 Strategy，按当前单元组织 Revision Brief。

每个 substantive step 遵循：

```text
Investigate -> Propose plan -> User confirms -> Execute
```

## 维护原则

- 一个规则或项目事实只有一个权威来源。
- workflow 描述阶段步骤，focused module 只描述局部能力，template 只提供 schema。
- 正确引导优先于防御性禁令列表。
- 旧机制从 active context 删除；历史材料只有在明确请求时才读取。
