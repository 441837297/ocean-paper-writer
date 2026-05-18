# Prepare 阶段示例

## 目的

本示例展示一位中文用户如何从研究计划开始进入 **prepare** 阶段。演示内容包括：

- skill 如何将用户请求路由到 prepare 阶段
- 中文交互模式：助手用中文沟通，输出材料默认英文
- 每轮 3–5 个确认问题的节奏控制
- 两份输出文件的完整内容：`01a_project-brief.md` 和 `01b_evidence-inventory.md`
- `[MISSING]`、`[UNCERTAIN]`、`[TODO]` 标记的使用方式
- prepare 阶段不生成稿件正文的边界

示例使用一个虚构的南大洋锋面、叶绿素与海气 CO₂ 通量研究。

## 用户初始消息

> 我有一个关于南大洋锋面变化的研究计划。我想看看锋面移动如何影响叶绿素分布和海气 CO₂ 通量。我有一些卫星数据的初步图，分析代码是 Python 写的，但还没整理好。我考虑投 Nature Climate Change，但还没确定。你能帮我准备材料吗？

## 路由决策

助手将这条消息识别为 **prepare** 阶段请求，理由：

- 用户有研究计划但没有结构化的稿件输入材料
- 用户提到了图和代码，但说的是"准备材料"，不是起草正文
- 目标期刊是考虑中状态，不是最终决定
- 还没有任何草稿文本存在

助手**不会**路由到 writing、structure 或 review。不会生成稿件正文。

助手的首次回应：

> 你的研究方向很清晰。我们现在从 **prepare** 阶段开始，先把所有材料整理成结构化的项目简介和证据清单，为后面的写作打好基础。我先问几个关键问题。

## 第一轮确认问题

助手用中文提出 3–5 个关键问题：

> 1. 研究区域和时段具体是什么？（例如"南大洋 40°S 以南，1993–2020"）
> 2. 锋面检测、叶绿素和 CO₂ 通量分别用的是哪个卫星数据集？
> 3. 你现在有哪些图？每张图大致展示了什么？
> 4. 生成这些图的 Python 脚本在哪个目录下？可以分享路径吗？
> 5. Nature Climate Change 是你的首选目标期刊，还是仍在多个选项中考虑？

每轮不超过 5 个问题。剩余信息缺口在输出文件中标记 `[MISSING]`。

## 输出文件一：01a_project-brief.md

*以下文件由助手在对话中生成，供用户保存到项目目录 `01_prepare/` 下。正文为英文，用户交互为中文。*

```markdown
# 01a Project Brief

## Project Metadata

- project name: Southern Ocean Fronts and Biogeochemical Impacts
- working title: [MISSING]
- target journal: Nature Climate Change [UNCERTAIN: user mentioned as possible target but not confirmed]
- current stage: prepare
- last updated: 2026-05-18

## Source Materials Provided

- Research proposal (verbal description): study on Southern Ocean frontal shifts and links to chlorophyll and air–sea CO₂ flux
- Preliminary figures from satellite data (described but not provided as files)
- Python analysis code (path not yet shared — [MISSING])

## Research Background

The Southern Ocean plays a major role in global carbon uptake. Frontal zones — boundaries between distinct water masses — are regions of enhanced nutrient supply and biological productivity. Changes in frontal position or intensity could alter chlorophyll distribution and CO₂ exchange. Whether such changes are occurring and whether they constitute a climate-change signal is an active research question.

## Core Research Question

How have Southern Ocean frontal positions and intensities changed over the satellite period, and are these changes linked to observed patterns in chlorophyll and air–sea CO₂ flux?

## Working Hypotheses or Expectations

- Hypothesis 1: Major fronts (SACCF, PF, SAF) have shifted poleward or changed in frontal intensity over the altimeter record.
- Hypothesis 2: Regions of frontal change correspond to observable shifts in chlorophyll concentration.
- Hypothesis 3: Frontal changes are associated with detectable differences in air–sea CO₂ flux patterns.
- [UNCERTAIN] Whether any observed changes are attributable to anthropogenic forcing or reflect natural decadal variability.

## Study Area and Scientific Context

- Region: Southern Ocean, south of 40°S (specific frontal definitions [MISSING])
- Why this region: The Southern Ocean is a key region for global carbon cycling; frontal zones are hotspots of productivity and gas exchange
- Key processes: frontal dynamics, mesoscale eddies, upwelling of nutrient-rich deep water, air–sea CO₂ exchange, phytoplankton bloom dynamics
- [MISSING] Exact latitudinal boundaries and frontal definitions

## Data Sources

| Dataset | Source | Variables | Time Range | Spatial Coverage | Resolution | Access |
|---------|--------|-----------|------------|-----------------|------------|--------|
| Satellite altimetry | [MISSING] | SSH, geostrophic currents, front positions | [MISSING] | Southern Ocean | [MISSING] | [MISSING] |
| Satellite ocean color | [MISSING] | Chlorophyll-a | [MISSING] | Southern Ocean | [MISSING] | [MISSING] |
| Air–sea CO₂ flux product | [MISSING] | pCO₂, CO₂ flux | [MISSING] | [MISSING] | [MISSING] | [MISSING] |

## Code and Computational Workflow

- Language / environment: Python
- Code location: [MISSING]
- Key scripts: [MISSING] — user mentioned code exists but path not yet provided
- Workflow steps: [TODO: describe after code is reviewed]
- Output files: [MISSING]

## Key Variables and Metrics

- Front position: [to be defined — e.g., latitude of maximum SSH gradient]
- Front intensity: [to be defined — e.g., SSH gradient magnitude]
- Chlorophyll-a: [units and source MISSING]
- Air–sea CO₂ flux: [units and source MISSING]

## Preliminary Findings

*Based on user description. Figures are described but not yet reviewed.*

- Finding 1: Some Southern Ocean fronts show a poleward shift in the altimeter era [UNCERTAIN: figure not reviewed, trend significance not assessed]
- Finding 2: Chlorophyll patterns appear spatially coherent with frontal zones [UNCERTAIN: correlation does not imply frontal forcing of chlorophyll]
- Finding 3: CO₂ flux maps show regional patterns near frontal regions [TODO: link to frontal change not yet analyzed]

## Possible Story Routes

- Route 1: Lead with the frontal-position evidence, then use chlorophyll and CO₂ flux patterns as bounded supporting context.
- Route 2: Focus on the strongest region-specific evidence first, then discuss whether the biogeochemical patterns are consistent with the frontal analysis.
- Route 3: Use frontal change as the central result, but treat climate-change attribution as an unresolved limitation unless additional attribution evidence is provided.

## Target Journal Notes

- Target journal: Nature Climate Change [UNCERTAIN — user is considering this option]
- No journal profile loaded yet — formal profile loading happens in the structure stage
- If confirmed, the narrative should connect frontal dynamics to climate relevance while bounding the evidence for climate-change attribution

## Critical Missing Information

- [MISSING] Exact dataset names, versions, and access paths
- [MISSING] Code location and key scripts
- [MISSING] Study area time range and spatial boundaries
- [MISSING] Figure files for review

## Useful but Not Blocking Information

- [MISSING] Final target journal confirmation
- [MISSING] Coauthor or advisor input
- [MISSING] Literature references for context

## Optional Refinements

- [TODO] Add preliminary literature context for Southern Ocean frontal trends

## Readiness Assessment

- **Ready for methods:** No. Data sources, time ranges, and code paths are needed before methods can be documented.
- **Ready for structure:** No. Core research question is draft-quality but target journal, evidence inventory, and claim hierarchy require methods-stage outputs first.

## Next Recommended Stage

**methods** — after the user provides dataset details, code paths, and figure files.
```

## Prepare 阶段输出后的中文核对

助手在生成输出文件后，附带中文核对说明：

> **中文核对 / Author Check**
>
> - 项目简介和证据清单已生成，正文为英文。这两个文件是你的写作素材库，不是稿件正文。
> - 核心研究问题目前是草稿版本：*"How have Southern Ocean frontal positions and intensities changed..."*。请确认这个表述是否准确反映了你想回答的科学问题。
> - 三个假设（H1-H3）是从你的描述中提取的，请检查是否符合你的实际研究设计。
> - 三条 story route 是备选方案。Route 1 对证据要求最可控；Route 3 涉及气候变化归因，当前只能作为限制或待补证据，不能作为主张。建议在 structure 阶段再决定。
> - **仍需你提供**：数据集名称和版本、代码路径、图片文件、确切的研究时段和空间范围。

## 输出文件二：01b_evidence-inventory.md

```markdown
# 01b Evidence Inventory

## Figure Inventory

| Figure ID | File / Source | What it shows | Supported claim | Evidence strength | Missing support |
|-----------|---------------|---------------|-----------------|-------------------|----------------|
| Fig1 | [MISSING] | Map of frontal positions from satellite SSH, with multi-year mean | Illustrates frontal locations | contextual | Does not show change over time |
| Fig2 | [MISSING] | Time series of frontal latitude index | Suggestive of poleward shift | suggestive | [MISSING] trend significance, uncertainty bounds |
| Fig3 | [MISSING] | Map of mean chlorophyll-a with frontal positions overlaid | Spatial overlap between fronts and chlorophyll | suggestive | Correlation does not prove frontal control of chlorophyll |

## Figure Evidence Boundary Check

*每张图作为视觉论证组件，而非仅仅是插图。以下问题用于填充 Figure Inventory 和 Figure-to-Claim Matrix。*

| Figure | 1. What it shows | 2. Claim supported | 3. What it cannot support | 4. Additional evidence needed | 5. Caption/results wording to avoid |
|--------|-------------------|-------------------|--------------------------|------------------------------|-------------------------------------|
| Fig1 | Frontal positions from SSH | contextual: where fronts are located | Frontal change over time, climate attribution | Multi-year time series | "Fronts are shifting due to climate change" |
| Fig2 | Frontal latitude index time series | Suggestive of poleward shift | Confirmed trend with significance, mechanism, attribution | Trend significance test, uncertainty bounds, record-length context | "Fronts are moving poleward in response to warming" |
| Fig3 | Mean chlorophyll-a with fronts overlaid | Spatial overlap | Frontal-driven mechanism, causality | Temporal correlation, mixed-layer/nutrient analysis | "Fronts control chlorophyll distribution" |

## Data Inventory

| Dataset | Variable(s) | Time range | Spatial coverage | Resolution | Role | Missing details |
|---------|-------------|------------|-----------------|------------|------|----------------|
| Altimetry | SSH, front positions | [MISSING] | Southern Ocean | [MISSING] | Central claim | [MISSING] |
| Ocean color | Chlorophyll-a | [MISSING] | Southern Ocean | [MISSING] | Supporting claim | [MISSING] |
| CO₂ flux product | pCO₂, CO₂ flux | [MISSING] | [MISSING] | [MISSING] | Supporting claim | [MISSING] |

## Claim Inventory

| Claim ID | Claim draft | Supporting evidence | Confidence | Claim boundary | Needs more evidence? |
|----------|-------------|-------------------|------------|----------------|---------------------|
| C1 | Southern Ocean fronts have shifted poleward during the satellite era | Fig2 [MISSING: full details] | low | Does not establish causation or climate attribution | yes — trend significance, uncertainty, record length |
| C2 | Chlorophyll patterns are spatially coherent with frontal features | Fig3 | low | Spatial correlation, not frontal-driven mechanism | yes — process-based analysis needed |
| C3 | Frontal changes are linked to CO₂ flux variability | none yet [MISSING] | low | Mechanism not specified, data not yet analyzed | yes — analysis not yet performed |

## Figure-to-Claim Matrix

| Claim | Figure(s) | What the figure supports | What the figure does not support | Additional evidence needed |
|-------|-----------|--------------------------|----------------------------------|---------------------------|
| C1 | Fig2 | Visually suggestive of a spatial shift in frontal position | Trend significance, attribution to forcing, separation from natural variability | Error bars, significance test, longer record comparison |
| C2 | Fig3 | Spatial overlap between chlorophyll and fronts | Frontal dynamics driving chlorophyll variability | Temporal correlation, mixed-layer analysis, nutrient supply mechanism |

## Missing Evidence Checklist

- [ ] C1 needs: trend significance test, confidence intervals, separation of seasonal/interannual/decadal variability
- [ ] C2 needs: temporal correlation between frontal position and chlorophyll, not just spatial overlap
- [ ] C3 needs: analysis linking fronts to CO₂ flux — currently no quantitative evidence
- [ ] All claims need: complete dataset metadata, code review, figure inspection

## Unsafe or Unsupported Claims

- **Claim C1** — "Fronts have shifted poleward": a visually suggestive pattern from one figure is not sufficient for this claim. A front-intensification pattern does not by itself prove climate-change attribution. The record length must be considered relative to natural variability (SAM, ENSO, decadal modes).
- **Claim C2** — "Fronts control chlorophyll": spatial overlap is not a mechanism. Chlorophyll variability could be driven by multiple factors (light, mixed-layer depth, nutrient advection from other sources).
- **Claim C3** — Not yet supported by any evidence. Requires dedicated analysis.

## Notes for Methods Stage

- Need to confirm: exact altimetry product (CMEMS? AVISO? version?), ocean color sensor (MODIS? VIIRS?), CO₂ flux product (SeaFlux? JENA? observation-based?)
- Need to review: front detection algorithm (SSH gradient threshold? contour-based? probabilistic?), chlorophyll processing (8-day? monthly?), CO₂ flux calculation method
- Need to inspect: Python scripts for quality control, statistical methods, and figure generation
- Statistical considerations: trend significance must account for serial autocorrelation; separation of forced signal from natural variability

## Notes for Structure Stage

- Core research question is identified but needs refinement
- Target journal is candidate-level; confirm before structure stage
- Claims C1–C3 are currently low-confidence; methods-stage work should strengthen or revise them
- Story routes are provisional — they depend on what the data actually show
```

## 后续步骤

助手用中文总结 prepare 阶段的完成状态：

> prepare 阶段的材料已经准备好了。你目前有三个选择：
>
> - **暂停** — 项目简介和证据清单已保存，随时可以回来继续
> - **补充材料** — 如果你有更多数据集信息、代码路径或图片，我可以更新这两个文件
> - **进入 methods 阶段** — 如果你准备好分享代码路径、数据描述和图片文件
>
> 如果要进入 methods，你接下来需要提供：代码目录路径和关键脚本、每张图由哪个脚本生成、数据集名称/版本/获取方式/时段、哪些是最终版图 vs 探索性图。

本示例展示的核心交互模式：
- **用户用中文交流** → 助手用中文回应、引导工作流
- **输出文件为英文** → 面向投稿的材料始终为英文
- **中文核对区块** → 用中文解释意图和证据边界，帮助作者确认，但不添加英文正文中没有的科学声明
