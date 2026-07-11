# Tutor Review Checklist（导师审稿视角）

> **适用原则**：以下是论证检查标准，不是固定句式模板。判断依据是功能、证据和范围，而不是机械禁用某个词。
> **适用范围**：本清单只检查导师通常关注的论证层级、主张边界、文献定位、结果叙事和跨文档口径。它不负责方法完整性、统计实现、数据处理或纯语言润色。
> **输出标记**：`PASS` / `FLAG` / `NOT_APPLICABLE`。每个 `FLAG` 只输出：触发句、导师可能追问什么、属于哪条规则、最小修改动作。

## 1. Abstract

### 每句携带独立新信息
- **Scope**: Abstract
- **检查点**：同一时间范围、方法标签、核心数字不重复出现。
- **反例**：`Using data from 1998 to 2021, we find that eddy-induced CO2 uptake is 768.6 Tg C yr−1. Over 1998–2021, this uptake shows no significant trend.`
- **正例**：`Using multi-source data from 1998 to 2021, we find that eddy-induced CO2 uptake is 768.6 Tg C yr−1. The opposing absorption and release limbs both intensified, yet the net effect shows no significant trend.`

### Gap 具体且可解决
- **Scope**: Abstract
- **检查点**：说明具体不知道什么、为什么过去不知道、本文方法为什么能突破。
- **反例**：`The role of X remains poorly constrained.`
- **正例**：`The global contribution remains uncertain because two physically distinct regimes have been conflated, preventing a quantitative estimate.`

### 定量结论可独立解释
- **Scope**: Abstract
- **检查点**：核心数字交代方向、单位、区域、比较基准和不确定性。仅适用于 headline number，不要求每个数字全部展开。
- **反例**：`X increased by 40%.`
- **正例**：`768.6 Tg C yr−1 (95% CI: 731.2–806.0), equivalent to 40.5% of the 1.90 Pg C yr−1 mean ocean CO2 sink.`

## 2. Introduction

### 漏斗清楚，四级逐级收拢
- **Scope**: Introduction
- **检查点**：Introduction 需四级收拢，相邻层级不重复信号，不跳级。
  - **L1 — Ocean/system need**：从领域核心问题出发（非方法或数据）
  - **L2 — Established knowledge**：前人已知什么（具体，不笼统说 well studied）
  - **L3 — Specific gap**：不知道什么、为什么过去不知道、本文为何能突破
  - **L4 — This paper's move**：本文研究直接回应 L3 的 Gap（非另起问题）
- **反例**：
  - L1→L2 断层：从大领域直接跳到本文方法，缺少前人研究铺垫
  - L2→L3 断层：罗列前人研究但不指出未解决的问题
  - L3→L4 错位：Gap 说 X，本文做 Y
  - 级间重复：P1 末 `remains uncertain`，P2 首 `remains fragmented`
- **正例**：P1 交代中尺度过程在海洋碳汇中的系统重要性（L1），指出前人已定位汇区但物理机制未分解（L2→L3），段末以本文的机制分解方案收束（L4）。相邻段落 Gap 信号逐级精确化，不重复同一层级。

### 每组文献都有明确论证任务
- **Scope**: Introduction + Discussion
- **检查点**：
  - Introduction：引文用于建立已知事实、理论预期、证据冲突或可解决的 Gap。引用后立即说明该证据支持或挑战了什么。
  - Discussion：比较文献时，不能只写 `consistent with previous studies`，必须说明一致或不一致发生在哪个维度——区域、尺度、季节、样本量、生命周期、指标类型。
- **反例**（Introduction）：罗列五个相关研究，下一句不改变论证方向，删掉这组文献论证不受损。
- **正例**（Introduction）：`Previous work has mapped where the sink occurs (2, 4–7), but the physical processes controlling its magnitude remain unresolved.`
- **反例**（Discussion）：`Our results are broadly consistent with previous eddy-resolving studies.`
- **正例**（Discussion）：`Our results agree with Li et al. on the direction of anticyclonic uptake, but the magnitude differs because their estimate is restricted to western boundary currents whereas ours includes the global eddy population.`

### 机制细节以"是否改变研究逻辑"为准
- **Scope**: Introduction
- **检查点**：只有用于提出假设、解释矛盾或选择变量的机制才保留在 Introduction。
- **反例**：完整复述前人关于垂向混合、营养盐和叶绿素的机制链，但本文既不检验也不使用。
- **正例**：简述相互竞争的机制，据此引出本文的判别分析。

### 研究陈述具体，主干不被打断
- **Scope**: Introduction
- **检查点**：核心动作和研究对象出现在首个主句，不被长方法插入语隔开。
- **反例**：`Here we show, by combining over two decades of satellite observations with machine learning reconstructions and a dynamics–thermodynamics framework, that ocean eddies play a key role...`
- **正例**：`Using satellite observations and reconstructed CO2 fluxes, we separate rotational polarity from thermal structure to quantify the global contribution of eddies to air–sea CO2 exchange.`

## 3. Results

### 节首迅速进入结果
- **Scope**: Results
- **检查点**：第一句要么给核心发现，要么给一句分析前提后第二句必须给结果。连续两句以上铺垫不可接受。
- **反例**：连续数句解释"接下来要做什么，先看什么再看什么"。
- **正例**：`To test X, we compare A and B. A exceeds B by 32% across all ocean basins.`

### 观察、归因和推测分层
- **Scope**: Results
- **检查点**：区分数据直接呈现的结果、统计关联、机制归因和待验证假设。以证据等级判断，不在意具体用哪个动词。
- **反例**：由相关性直接写成确定因果。
- **正例**：`The data show a poleward shift in eddy heat transport. This pattern is consistent with a strengthening of the background temperature gradient, though direct attribution requires further modeling.`

## 4. Discussion

### 讨论逐级展开，形成闭环
- **Scope**: Discussion
- **检查点**：Discussion 遵循五级展开，最终回应 Introduction 的 Gap。
  - **Finding synthesis**：首段给最重要发现和意义，方法仅用于限定证据基础
  - **Bounded explanation**：机制解释限于数据/方法范围，不越界
  - **Dimensioned comparison**：比较前人时指明维度（区域、尺度、季节、指标类型），不笼统说 consistent with
  - **Bounded significance**：更广意义限于证据范围，不无限外推
  - **Return to gap**：末尾回应 Introduction 的核心 Gap，形成闭环
- **反例**（synthesis）：首句以方法框架开头而非结果开头
- **反例**（explanation）：由相关性直接写成确定因果
- **反例**（comparison）：`Our results are broadly consistent with previous studies.`
- **反例**（return to gap）：末尾讨论新方向但未提及 Introduction Gap 是否已解决
- **正例**：`X process accounts for Y% of the global Z budget, revealing a previously unquantified contribution. [...] Our results agree with Li et al. on the direction but differ in magnitude because their estimate is restricted to western boundary currents. [...] These results resolve the previously disputed net contribution, confirming that...`

### Limitations 诊断影响，不回避也不自损
- **Scope**: Discussion
- **检查点**：说明限制来源 → 影响的结论 → 可能方向 → 已有稳健性检验 → 剩余不确定性。
- **反例**：`Our method may miss important signals.` / "前人覆盖得更少"
- **正例**：`Monthly sampling underrepresents day-scale variability; sensitivity tests show the mean sign is stable, but event-scale amplitudes remain unresolved.`

## 5. 通用原则

### 论断与引文按从句对齐
- **Scope**: 通用
- **检查点**：citation cluster 只在各文献独立支持同一完整论断时合理。各文献分别支持不同子论断时必须拆句。
- **反例**：`These features drive localized transport of heat and biogeochemical tracers (63).`——文献 (63) 只研究 heat，不能同时支撑 biogeochemical tracers。
- **正例**：`These features drive localized transport of heat (63) and redistribute biogeochemical tracers, influencing nutrient supply and primary production (22, 62).`

### 论断强度不超过证据
- **Scope**: 通用
- **检查点**：保留区域、深度、时间、对象和统计限定；术语精确到实际测量的量。修饰词（substantially, remarkably, strongly）必须有量化依据，否则删除。总体不显著但子集显著的结果，必须同时保留两级结论，不得用较强的子集结果覆盖较弱的总体结果。
- **反例**：把区域结果写成全球规律；把 POC 泛化为 `organic carbon`；`substantially enhanced` 没有给出百分比。
- **正例**：`regional`, `surface`, `observed`, `associated with` 等限定词；`enhanced by 32% relative to the background`。

### 每句只有一个主功能
- **Scope**: 通用
- **检查点**：一句可包含证据和简短解释，但必须有唯一主干。
- **反例**：`Eddies carry 90% of oceanic kinetic energy, transport heat and carbon across basins, stimulate primary production, and modulate air–sea CO2 exchange.`——一句塞入四个独立功能。
- **正例**：`Eddies contain more than 90% of surface-ocean kinetic energy (8). They redistribute mass, heat, carbon, and nutrients across ocean basins (9–14), thereby perturbing air–sea CO2 exchange (15–17).`

### 全稿口径一致
- **Scope**: 通用（需跨文档材料，单段审查时跳过）
- **检查点**：术语、符号、正负号、单位、核心数字在正文、图注、补充材料、摘要、Cover Letter 中统一，不得跨文档冲突。
- **反例**：正文改为 40.5%（分母 1.90 Pg C），摘要或 Cover Letter 仍保留 22.6%（旧分母 3.40 Pg C）。
- **正例**：`768.6 Tg C yr−1, 40.5% of 1.90 Pg C yr−1`——全文所有出现位置一致，无遗留旧版本数字。

---

## 辅助工具：Introduction–Discussion Closure Map

用于跨节闭环检查时快速定位 Gap 是否已被 Discussion 回应。不是独立检查项，不增加规则总数。

| Introduction Gap | Results evidence | Discussion answer | Status |
|---|---|---|---|
| （从 Intro 提取的 Gap 陈述） | （Results 中对应的证据） | （Discussion 中对应的回应） | CLOSED / PARTIAL / OPEN |

**Status 含义：**
- **CLOSED** — Gap 在 Introduction 中提出，Results 有证据，Discussion 有回应，逻辑闭环
- **PARTIAL** — 有回应但未完全解决（如方向对但量级差异未解释）
- **OPEN** — Introduction 提出但 Discussion 未回应，或 Discussion 的结论在 Introduction 中找不到对应的 Gap

**使用限制：**
- 仅在跨节结构自检时使用，不用于单段审查
- 一个 Gap 可能对应多个 Results 证据，一个 Discussion 回答可能覆盖多个 Gap
- 不要求逐行填满——只填有明确映射关系的行
