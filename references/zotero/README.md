# Zotero Integration

## Purpose

Zotero supports literature retrieval, citation grounding, annotation reading, and claim-context comparison. It does not replace the user's evidence, figures, data, or scientific judgment.

Zotero 保留 PDF 和一份清理后的阅读 Markdown，不额外保留原始转换 Markdown。项目 `reference/` 仅保留核心论文 Markdown 全文及兼作索引的 `文献阅读笔记.md`；方法依据和一般背景文献不默认复制到该目录。项目阅读记录的确认和写入流程以 `SKILL.md` 的 Project Reference Reading Notes 为准。

This integration is the **literature support layer** of the Ocean Paper Writer workflow —
it feeds real, user-curated references into writing and review rather than relying on fabricated or generic citations.

If the current environment has no Zotero connector, do not attempt this integration. Work from
user-uploaded papers or another available source instead; Zotero is an optional enhancement, not a
requirement for the workflow.

## Default Mode: Read-only

The Zotero MCP exposes 22 tools including write-capable ones. By default, only read operations are used:

**Allowed (default):**
- search_library
- search_collections / get_collections / get_collection_items
- get_item_details (metadata, authors, DOI, etc.)
- get_item_abstract
- get_annotations / search_annotations
- get_content (prefer reading Markdown; consult relevant PDF content when needed for verification)
- search_fulltext
- get_subcollections / get_collection_details
- fulltext_database (read-only actions: list, search, get, stats)

**Prohibited (default):**
- write_note / write_tag / write_metadata / write_item
- create_collection / update_collection / delete_collection
- add_items_to_collection / remove_items_from_collection
- any write operation on the Zotero library

Write operations are only considered if the user explicitly requests and confirms them. Ocean Paper Writer does not require write operations by default.

**Important:** Before each Zotero MCP call, the AI must explain to the user:
- why it needs to access Zotero
- what it intends to search or read
- and wait for user confirmation before proceeding

## User Confirmation Required Before Every Call

The AI must never call Zotero MCP tools without first explaining the intent and getting explicit user approval. This applies to all operations, including searches and reads.

Examples of what to communicate:

- "I want to search your Zotero library for papers on Southern Ocean fronts to support the Introduction background section."
- "I'd like to read annotations on paper X to check what gap it identifies."
- "I need to look up the canonical reference for the ERA5 dataset to cite in Methods."

Wait for the user to respond before making the call.

## Tested Local MCP Setup

Implementation tested: `cookjohn/zotero-mcp`

Architecture:
- Zotero plugin
- local Streamable HTTP MCP server
- Claude Code MCP connection

Default endpoint:
- `http://127.0.0.1:23120/mcp`

Test result:
- library search for `ocean` returned 336 results
- query time approximately 29 ms
- 22 MCP tools visible
- read/search tools available
- write-capable tools visible but not used by default

Known setup fixes applied:
- corrected server name from `ztoero` to `zotero`
- added missing `"type": "http"` field
- removed invalid `H:/claudecode` reference that blocked command execution

Version numbers were not recorded in the initial test and should be filled in later if needed.

## Where Zotero Fits in the Workflow

### 01 Prepare

Zotero is not a primary input for Prepare. This stage is driven by proposals, figures, code descriptions, and user ideas.

Optional use:
- User provides a Zotero collection name to scope the literature
- User wants to record key references early
- User wants to list background literature candidates

Do not use Zotero to replace the evidence inventory in Prepare.

### 02 Methods

Zotero is not a primary input for Methods.

Optional use:
- Look up canonical references for datasets, methods, algorithms, or observation platforms
- Find dataset citations
- Find method citations

Do not use Zotero literature to replace code review or user confirmation.

### 03 Structure

Zotero can help assess which literature blocks are needed in Introduction and Discussion.

The primary inputs for Structure remain:
- Prepare materials
- Methods materials
- Target journal
- Claim hierarchy
- Figure-to-claim matrix

Do not let Zotero literature redefine the user's research objectives unless the user requests it.

### 04 Writing

This is where Zotero provides the most value.

Used for:
- Introduction: context, known, gap, approach
- Discussion: comparison with previous studies
- Mechanism interpretation support
- Dataset and method citation
- Literature-grounded claim boundaries

Rules:
- Never fabricate a citation
- Do not cite a paper as support without confidence in what it says
- If a citation is missing, mark `[CITATION NEEDED]`
- If citation support is uncertain, mark `[UNCERTAIN CITATION SUPPORT]`
- Each literature-supported claim should trace to a Zotero item, note, annotation, DOI, or user-provided reference

### 05 Review

Zotero is used for citation needs and literature support review:

- Which claims are missing references
- Which background claims need literature support
- Which Discussion comparisons are weak
- Whether citation gaps exist
- Whether any claim overreaches its supporting literature

Do not auto-rewrite based on Zotero data during Review.

### Polish

Zotero is used mainly for citation phrasing and claim precision:

- Retain citation placeholders
- Avoid incorrect referencing
- Make literature comparison language more precise
- Do not add new unconfirmed citation claims during Polish

## Introduction Writing with Zotero

Zotero helps build the standard structure:

```text
Context → Known → Gap → Approach → Objectives
```

Usage:
- Search the project-specific collection for background references
- Extract what specific claim each paper supports
- Cluster papers by topic
- Do not stack citations without purpose
- Do not turn the literature review into a bibliography summary
- The gap must relate to the user's research question

## Discussion Writing with Zotero

Zotero helps build:

```text
Result → Interpretation → Previous work comparison → Boundary / uncertainty → Implication
```

Usage:
- Find studies with consistent or contradictory findings
- Compare regions, seasons, data sources, methods, mechanisms
- Support mechanism discussion
- Support uncertainty discussion
- Do not force the user's results to agree with existing literature
- Do not use literature to mask insufficient evidence

## Zotero Query Guidance

When the user provides a Zotero collection name, search within that collection first.

Recommended user input:
- Zotero collection name
- Key paper titles or authors
- Tags
- DOI
- Author/year
- Notes or annotations
- Target topic (e.g., "Southern Ocean fronts", "mesoscale eddies", "air-sea CO2 flux")

检索先限定用户给定的集合或论文，查看元数据后定位相关阅读 Markdown。文献提取由低价子代理执行，模型确认、读取范围和主代理核验遵循 `SKILL.md` 与 `references/subagents/reference-reading.md`，不固定模型名称。

## Markdown 来源与 paper2md

日常阅读优先使用 Zotero 中清理后的阅读 Markdown，不在每次阅读前重复转换 PDF。缺少 Markdown 时，使用 `paper2md` 转换：读取该技能 → 定位 PDF 与父条目 → MinerU 转换 → 已确认的低价子代理定位需清理区块 → 删除明确的非正文内容 → 将一份阅读 Markdown 关联到原 Zotero 条目。转换过程中的原始 Markdown 仅为临时文件，不作为另一份文献附件保留。

清理删除文末参考文献列表、重复页眉页脚、页码和出版杂项，保留摘要、完整正文、方法、公式、图表说明、数据与代码可用性声明及正文内引用标记；不摘要化或改写科学内容。边界不明确的内容保留。原 PDF 不修改，图表、公式、遗漏或提取异常需要核实时可直接查阅相关 PDF 内容，不禁止 PDF 核验。

`paper2md` 的发现优先使用当前环境技能列表或技能目录；未列出时检查 CC-Switch 管理目录。当前已确认来源为 `C:/Users/zhisheng/.cc-switch/skills/paper2md/SKILL.md`，可显式读取后按其流程执行。其旧版固定 Haiku 的清理步骤，按本次用户确认的可用低价模型执行。读取技能文件不等于已安装到 Codex，也不等于已完成转换。

转换、关联附件或批量处理必须在用户授权的范围内执行；普通文献阅读不自动触发全库转换。全库补齐及新增 PDF 的增量处理沿用同一 `paper2md` 流程，不另建转换机制。

## Citation Handling Rules

- Never fabricate citations.
- Never cite a paper without enough confidence about what it supports.
- Mark missing citations as `[CITATION NEEDED]`.
- Mark uncertain citation support as `[UNCERTAIN CITATION SUPPORT]`.
- If a paper is relevant but not yet read, mark `[REFERENCE CANDIDATE]`.
- If a claim depends on Zotero literature, record which item supports it.
- Do not convert a paper's broad topic into support for a specific claim unless the content actually supports it.

## Advisor and Coauthor Feedback

When the user shares Zotero notes or annotations from advisor or coauthor feedback:

- Treat those as primary input alongside the manuscript
- Check if feedback points to specific literature the advisor wants cited
- Use Zotero to find and verify those references
- Discuss changes with the user before applying them
- Do not automatically incorporate feedback without user review

## Guardrails

- Do not fabricate citations.
- Do not use Zotero literature to replace user evidence.
- Do not treat a paper as supporting a claim unless its content supports that claim.
- Do not use Zotero write tools by default.
- Do not modify the Zotero library without explicit user request and confirmation.
- Do not let literature search override the user's research question.
- Do not turn a literature candidate into a confirmed citation without reading enough context.
- Do not use polish to hide citation gaps.
- Do not call Zotero MCP without explaining the intent and getting user confirmation first.
