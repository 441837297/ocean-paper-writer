# 05 Review Report — Round N

*此文件由 GPT 填写。GPT 读取 `05_review-round{N}A_source.md` 及相关材料，进行分析并输出此报告。*
*ClaudeCode 只能依据此文件进入 03 更新和 04 修改。ClaudeCode 不在此文件中做决策。*

## Project Metadata

- project name:
- working title:
- target journal:
- review round: N
- review source: [advisor / GPT / self-review / coauthor / combined]
- source file: `05_review/05_review-round{N}A_source.md`
- last updated:
- source manuscript: `04_writing/04_manuscript-draft.md` (or latest revision)
- supporting files:
  - `03_structure/03_section-architecture.md`
  - `03_structure/03_figure-outline.md`
  - `03_structure/03_terminology.md`
  - `01_prepare/01b_evidence-inventory.md`
  - `02_methods/02a_data.md and 02_methods/02b_methods.md`

---

## Overall Diagnosis

[3–5 sentence synthesis. What is the single biggest issue? Is this "not just polish" — i.e., does it require structural changes?]

---

## Issue Log

| ID | Severity | Type | Source | Location | Problem | Decision | Action | Destination |
|----|----------|------|--------|----------|---------|----------|--------|-------------|
| R01 | high | structure | advisor | Discussion | section performs wrong job | Accept | RESTRUCTURE_SECTION | structure → writing |
| R02 | medium | terminology | GPT |全文 | "SST-driven" overused | Accept | update 03_terminology | structure |
| R03 | low | language | self | Abstract L3 | verbose | Accept | POLISH_LANGUAGE | polish |
| R04 | medium | claim | advisor | Results §2 | overclaim mechanism | Defer | revisit after round 9 | — |
| R05 | low | language | GPT | Introduction | suggest shorter P1 | Reject | current length matches NCC convention | — |

**Severity:** `high` = blocks credibility / `medium` = weakens argument / `low` = clarity or polish

**Decision:**
- `Accept` = implement in this round, appears in Patch List
- `Defer` = valid but postpone to later round, with reason
- `Reject` = disagree, with reason

**Action labels:** `SOFTEN_CLAIM` / `ADD_EVIDENCE` / `ADD_METHOD_DETAIL` / `CHECK_STATISTICS` / `ADD_CITATION` / `REORDER_FIGURE_LOGIC` / `RESTRUCTURE_SECTION` / `REWRITE_UNIT` / `POLISH_LANGUAGE` / `AUTHOR_INPUT_NEEDED` / `BLOCKED_BY_EVIDENCE`

**Destination:** `prepare` / `methods` / `structure` / `writing` / `polish` / `user`

---

## Revision Contract

*在修改任何文件之前填写。若任一 03 文件被勾选，必须先更新 03，用户确认后，再改 04。*

- Target journal:
- Paper protagonist:
- Not protagonist:
- Main gap:
- Central claim:
- Main consequence:
- Section-level changes:
  - Title:
  - Abstract:
  - Introduction:
  - Results:
  - Discussion:
- Figure logic changes:
- Terminology changes:
- Caveat placement:
- Backpropagation level: [hard / soft-blueprint-only / none]
- Handoff destination:
  - [ ] 03_section-architecture
  - [ ] 03_figure-outline
  - [ ] 03_terminology
  - [ ] 04_manuscript
  - [ ] polish

---

## 03 Update Requirements

*从 Revision Contract 的 Handoff destination 派生。列出每个 03 文件的具体修改项。*

### 03_section-architecture
- [ ] Protagonist Lock: [具体改动]
- [ ] Argument Chain: [具体改动]
- [ ] Section Architecture: [具体改动]

### 03_figure-outline
- [ ] Figure scientific questions: [具体改动]
- [ ] Figure order: [具体改动]

### 03_terminology
- [ ] Preferred terms: [新增/修改]
- [ ] Forbidden phrases: [新增/修改]
- [ ] Allowed location: [修改]

**03 更新后必须用户确认，再进入 manuscript 修改。**

- [ ] 用户已确认 03 更新

---

## Patch List

*仅包含 Decision = Accept 的条目。每条是可执行的编辑指令。按 section 分组。*

### Title
- [ ] P01: [具体修改指令] — from Rxx

### Abstract
- [ ] P02: [具体修改指令] — from Rxx

### Introduction
- [ ] P03: [具体修改指令] — from Rxx

### Results
- [ ] P04: [具体修改指令] — from Rxx

### Discussion
- [ ] P05: [具体修改指令] — from Rxx

### Methods
- [ ] P06: [具体修改指令] — from Rxx

---

## Handoff Recommendation

- Destination: [writing / polish / structure]
- Rationale:
- 03 files updated: [yes / no / N/A]
- 03 confirmed by user: [yes / no]

---

## Questions for User Confirmation

1. [确认 Accept/Defer/Reject 决策]
2. [确认 03 更新内容]
3. [确认 Patch List 优先级和顺序]

---

## Diagnostic Working (Optional)

*以下为 ClaudeCode 处理原始输入时的中间分析。仅在需要追溯判断依据时保留。*

### Evidence Support Check

| Claim / paragraph | Evidence cited | Sufficient? | Notes |
|-------------------|---------------|-------------|-------|
| | | | |

### Section Function Check

| Section | Assigned job (from structure) | Does draft execute? | Issues |
|---------|------------------------------|---------------------|--------|
| | | | |

### Ocean Science Overclaiming Check

| Risk type | Location | Current wording | Recommended boundary |
|-----------|----------|----------------|---------------------|
| | | | |

### Citation Needs

| Location | What is needed | Priority |
|----------|---------------|----------|
| | | |

---

## Update Summary

*Resume mode only.*

- Review pass added: [date / scope / source]
- Issues accepted: [N] / deferred: [N] / rejected: [N]
- 03 files updated: [list]
- Patches applied: [N]
- Recommended next action:
