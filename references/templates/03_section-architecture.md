# 03 Section Architecture

## Guardrails

**本文件是论证枢纽，不是数据仓库。**

- 只写论证结构（主链、主张层级、section 功能），不写具体数据值
- 数据来源与统计方法 → `02_methods/`
- 图件 panel 细节 → `03_figure-outline.md`
- 术语定义 → `03_terminology.md`
- 修改执行记录 → review log，不在此处堆砌
- 更新日志 → 只记结构性决策，不记数字微调

## Project Metadata

- project name: [from prepare]
- working title: [from prepare]
- target journal: [from prepare, or "not specified yet"]
- journal guidance: [from reference papers — yes / no]
- current stage: structure
- last updated: [YYYY-MM-DD]
- source files: `01_prepare/01a_project-brief.md`, `01_prepare/01b_evidence-inventory.md`, `02_methods/02a_data.md`, `02_methods/02b_methods.md`

## Structure Summary

[3–5 sentence summary of the overall manuscript architecture. What is the central story? How is the narrative organized across sections? What is the main message the reader should take away?]

## Target Journal and Narrative Direction

- Target journal: [name or "not specified yet"]
- Journal narrative identity: [derived from reference papers]
- How reference papers shape this structure: [specific guidance]

## Central Story Route

- Selected route: [which of the prepare-stage story routes was chosen]
- Why this route: [rationale]
- Alternative routes considered but not selected: [if applicable, with reasons]

## Ocean Paper Argument Chain / 论文主论证链

| Chain link | English manuscript logic | Evidence source | Boundary / caution | 中文核对 |
|------------|--------------------------|-----------------|--------------------|----------|
| Ocean/system need | [Why this topic matters] | [project brief / literature] | [avoid generic background] | |
| Unresolved gap | [Specific unresolved gap] | [literature / evidence inventory] | [avoid unsupported novelty] | |
| This paper's move | [What this paper does] | [methods + figures] | [do not claim unperformed analyses] | |
| Decisive evidence | [Main evidence chain] | [figures / datasets / statistics] | [direct vs suggestive] | |
| Bounded implication | [What the finding means] | [claim hierarchy + journal guidance] | [avoid overextending] | |
| Explicit limitation | [What this paper cannot claim] | [missing evidence checklist] | [must remain visible] | |

**Argument-chain status:** [complete / partial / blocked]

## Core Research Question

[One clear sentence. Confirm it is still current.]

## Protagonist Lock

*Review 阶段若 protagonist 改变，必须更新此区块。此锁确保全文主语一致，防止叙事焦点漂移。*

- **Paper protagonist:** [这个论文的主角是什么？一个过程、一个机制、一个指标、一个区域？]
- **Not protagonist:** [明确不是主角的是什么？防止 reviewer/合作者误读]
- **Supporting diagnostics:** [哪些诊断量/指标是配角，服务于 protagonist？]
- **Main consequence:** [主角变化带来的最主要结论]
- **Forbidden narrative moves:** [禁区：不能把配角当主角写；不能把相关性当机制；不能把 regional 当 global]

## Claim Hierarchy

### Primary Claims

| Claim ID | Claim statement | Supporting evidence | Figures | Confidence |
|----------|----------------|---------------------|---------|------------|
| C1 | [one-sentence claim] | [evidence sources] | [figure IDs] | [high / medium / low] |

### Secondary Claims

| Claim ID | Claim statement | Relationship to primary | Supporting evidence | Figures | Main or supplement? |
|----------|----------------|------------------------|--------------------|---------|---------------------|
| C2 | [claim] | [supports / context for C1] | [evidence] | [figures] | [main / supplement] |

### Claims Not Ready for Main Story

| Claim ID | Why excluded | Potential path to inclusion |
|----------|-------------|---------------------------|
| C4 | [insufficient evidence] | [what additional evidence would change this] |

## Manuscript Section Architecture

| Section | Narrative job | Key content | Primary claim served | Figure count | Approx. paragraphs |
|---------|--------------|-------------|---------------------|-------------|-------------------|
| Introduction | Set up gap, state contribution | [topic] | C1 | 0 | 3–5 |
| Results | Present evidence | [key findings] | C1–C4 | [N] | [N] |
| Discussion | Interpret, compare, implicate | [main points] | C5–C6 | [N] | 5–8 |
| Methods | Document approach | [methods summary] | — | 0 | [depends] |

### Recommended Drafting Order

Methods → Results → Discussion → Introduction → Conclusion → Abstract

## Results Evidence Ladder Plan

| Ladder step | Result evidence step / subsection | Claim served | Evidence source | Figure/Table | Boundary / caution |
|-------------|------------------------------|--------------|-----------------|--------------|--------------------|
| System / data / workflow setup | | | | | |
| Validation / credibility | | | | | |
| Main result | | | | | |
| Comparison / robustness | | | | | |
| Mechanism / diagnostic evidence | | | | | |
| Consequence / generalization | | | | | |

**Ladder status:** [complete / partial]

## Main Text vs. Supplement Plan

**Main text figures:** [N figures covering the central evidence chain]
**Supplementary figures:** [N figures covering validation, sensitivity, supporting analysis]

## P-ID Index

*本表是全文段落的入口索引。每个 P-ID 在 Section Architecture 中有对应的段落功能和论证边界。*

| Section | P-ID range | Section role |
|---------|------------|-------------|
| Methods | M1–M{n} | Data sources, processing, statistical approach |
| Results | R1–R{n} | Present evidence per the Evidence Ladder |
| Discussion | D1–D{n} | Interpret, compare, state limitations |
| Introduction | I1–I{n} | Gap → motivation → this paper's move |
| Conclusion | C1–C{n} | Restate central finding |
| Abstract | A1 | Compress full argument chain |

## Notes for Writing Stage

- Central claim and secondary claims with evidence sources
- Figure sequence with main/supplement assignment
- Section architecture with per-section narrative job
- Journal voice guidance
- Claims robust vs. preliminary (influences hedging)
- Methods-versus-supplement boundary
- Writing 禁区（禁止术语、禁止句式、禁止叙事方向）

## Update Summary

[Populated during resume mode. Record what changed and why.]
