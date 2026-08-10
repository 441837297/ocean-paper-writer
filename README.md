# Ocean Paper Writer

面向海洋科学研究者的分阶段论文写作 skill。它把项目书、图表、代码、数据描述、文献和反馈整理成可确认、可追溯的手稿材料。

研究者负责科学判断与最终文字；skill 负责组织材料、提示证据边界、辅助写作和执行已确认的修订。

## 安装

```bash
git clone https://github.com/441837297/ocean-paper-writer.git ~/.claude/skills/ocean-paper-writer/
```

重启 Claude Code。升级时在 skill 目录运行 `git pull`。详见 [INSTALL.md](INSTALL.md)。

## 工作流程

| Stage | 作用 | 主要输出 |
|-------|------|----------|
| 01 Prepare | 确认研究问题、范围、证据和缺口 | `01a_project-brief.md`, `01b_evidence-inventory.md`, optional `01c_literature-synthesis.md` |
| 02 Methods | 分开记录数据集与分析方法 | `02a_data.md`, `02b_methods.md` |
| 03 Structure | 设计 section、subsection 和 logical result unit 架构 | `03_section-architecture.md`, `03_figure-outline.md`, `03_terminology.md` |
| 04 Writing | 从已确认架构和证据起草正文 | `04_manuscript-draft.md`, `04_writing-log.md` |
| 05 Review | 将外部反馈转为决策、修订合同和 patch | `05_review-round{N}A_source.md`, `05_review-round{N}B_report.md` |
| Polish | 精修已确认的局部文本 | 新 manuscript 版本与统一 writing log |
| 06 Cover Letter | 从已确认手稿生成投稿信 | `06_cover-letter/06_cover_letter.md` |

Structure 规定各 section、subsection 或结果单元承担什么任务。Writing 根据局部科学逻辑和相邻正文自然决定段落边界，不预先固定段落数量或句子顺序。

## Reference Papers

项目 `reference_papers/` 中每篇来源论文只保存一份完整 Markdown。两种文献用途分开处理：

- 科学来源、方法继承和 literature role 持久记录在 `01c_literature-synthesis.md`。
- 修辞与论述学习按当前任务即时进行，由 `references/subagents/reference-reading.md` 返回简短 `Reference Reading Brief`。

JIT 阅读先扫描标题，只读取与当前任务有关的 bounded section。Brief 说明论证推进、证据到主张的关系及可学习的表达功能，不把整节原文注入主上下文，也不保存第二份 section copy。

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

完整 review 的分工为：ClaudeCode 编译原始意见，GPT 形成 Issue Log、Revision Contract 和 Patch List，用户确认，ClaudeCode 执行。Backpropagation 的唯一规则在 `references/workflow/review.md`。

Review 和 polish 都先复制最新确认稿，再编辑新版本。统一修订记录写入 `04_writing-log.md`。

## 目标期刊

用户决定目标期刊。未指定时仍可按通用流程推进。确认期刊后，可把 2-4 篇近期论文的完整 MD 放入 `reference_papers/`，供具体任务的 JIT 阅读使用。

期刊适配与证据判断分开：参考论文帮助理解论述惯例，项目证据决定本文能主张什么。

## Zotero

Zotero MCP 是可选文献检索层。完整的权限、确认、只读和 full-text retrieval 规则只在 `references/zotero/README.md` 维护。项目没有 Zotero 也可以运行，缺失引用标记为 `[CITATION NEEDED]`。

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

告诉 skill：从头开始还是接续工作；接续时给出项目目录。新项目从 prepare 开始，已有手稿也先从现有材料提取并确认 01/02/03 的权威状态。

每个 substantive step 遵循：

```text
Investigate -> Propose plan -> User confirms -> Execute
```

## 维护原则

- 一个规则或项目事实只有一个权威来源。
- workflow 描述阶段步骤，focused module 只描述局部能力，template 只提供 schema。
- 正确引导优先于防御性禁令列表。
- 旧机制从 active context 删除；历史材料只有在明确请求时才读取。
