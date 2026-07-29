# 03 Figure Outline

## Project Metadata

- project name:
- working title:
- target journal:
- last updated: [YYYY-MM-DD]
- source: `03_structure/03_section-architecture.md`

## Guardrails

**This file is a structural blueprint, not an execution log.**

- 只写"画什么、为什么这样画"，不写"画出来数字是多少"
- 具体数字（trend 值、百分比）→ 数据脚本产出，不写入此文件
- 完整 caption 文本 → 留到 04_writing 阶段
- 修改执行记录 → `04_writing-log.md` Revision Notes，不在此处重复
- 更新日志 → 只记结构性决策（如 panel 重排、ED 合并），不记数字微调
- 术语表 → 归属 [[03_terminology]]，不在此处重复完整术语规则

## Figure Sequence

| Figure | Section | What it shows | Claim served | Main or supplement? | Notes |
|--------|---------|---------------|-------------|---------------------|-------|
| Fig 1 | [section] | [brief description] | [claim ID] | main | [panel layout, key design notes] |
| Fig 2 | ... | ... | ... | main | ... |
| Fig 3 | ... | ... | ... | main | ... |
| Fig 4 | ... | ... | ... | main | ... |
| ED1 | supplement | ... | ... | supplement | ... |

## Main Figure Specifications

### Fig. 1: [Title]

- **Scientific question:**
- **Panels:**
  - a: [description]
  - b: [description]
- **Key design rules:** [bar encoding, color convention, regional order, what to emphasize vs de-emphasize]
- **Caption skeleton:** [1–2 sentences of structure only — not full caption text]

### Fig. 2: [Title]

[...]

## Extended Data Specifications

### ED1: [Title]

- **Scientific question:**
- **Panels:**
- **Defense against what reviewer concern:**

## Figure-to-Claim Summary (Optional)

*仅复杂多图项目需要此汇总表。小项目 Figure Sequence 已足够。*
*本表记录最终 confirmed figure role，不重复 `01b_evidence-inventory.md` 的完整证据诊断矩阵。*

| Claim ID | Main figure(s) | ED figure(s) | Evidence strength |
|----------|---------------|--------------|-------------------|
| C1 | Fig 1 | ED1, ED2 | high |
| C2 | Fig 2 | ED3, ED4 | high / medium |

## Target-Journal Figure Style Conventions

[Populate from `references/journals/{journal}.md` → Figures, Tables, and Captions.]

- Panel labels: bold lowercase letters (a, b, c...) without parentheses
- Significance: single `*` = P < 0.05, no double-star or P < 0.10
- Source Data: slope, CI, R² values go to Source Data CSV, not on figure
- Colorbar: per-panel independent unless panels share identical range
- Legend: positioned at top of panel, not inside plotting area
- No figure-level titles (column/row headings use separate text labels)

## Sign Conventions (for TransQ / directional figures)

[Document sign conventions used in figures: what positive/negative means for each pathway and variable.]

## Update Summary

[Structural decisions only — panel reordering, ED merge/split, figure role change. No number tweaks.]
