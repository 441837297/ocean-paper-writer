# 写作单元示例

## 目的

本示例展示 **writing** 阶段如何在中文用户交互策略下逐段起草。演示内容包括：

- 默认起草单元（单段）及其证据追溯
- `[CITATION NEEDED]` 的使用方式
- "模式 ≠ 机制"边界：空间分布模式不能自动当作物理机制
- 单元级反馈契约中的中文核对区块
- 每个单元后的确认选项

示例使用一个虚构的黑潮延伸体 EKE 趋势研究（基于卫星高度计数据）。

## 上下文（来自 structure 阶段）

- **正在起草的段落**：Results 第 2 段 — "EKE 趋势的量级与空间结构"
- **服务的论断**：C2 — "黑潮延伸体 EKE 在 1993–2022 年间以 12 ± 4 cm² s⁻²/十年的速率增加，集中于冬季和 145°E–160°E 范围内。"
- **支持图表**：Fig3a（EKE 趋势图）、Fig3b（纬向平均 EKE 趋势时间序列）
- **数据**：CMEMS SEALEVEL_GLO_PHY_L4_MY_008_047，地转速度异常
- **目标期刊**：JGR-Oceans
- **语言模式**：英文正文 + 中文用户交互

## 用户请求

> 帮我起草 Results 的第二段，关于黑潮延伸体 EKE 趋势的量级和空间结构。

用户用中文提出请求，助手用中文进行交互确认，但正文草稿保持英文。

## 起草前确认

助手在起草前用中文确认关键信息：

> 好的。在起草之前确认几点：
>
> - **段落位置**：Results 第 2 段，紧接概述段之后
> - **服务的主论断**：C2 — EKE 趋势量级和空间结构
> - **支持证据**：Fig3a（EKE 趋势图）、Fig3b（纬向平均时间序列）
> - **目标期刊语气**：JGR-Oceans（严谨、完整证据链）
> - **前人文献**：是否有该区域已有的 EKE 趋势估计需要引用？目前标记为 `[CITATION NEEDED]`

## 起草单元（助手输出）

```markdown
### Draft Text

Eddy kinetic energy (EKE) in the Kuroshio Extension increased by
12 ± 4 cm² s⁻² per decade over 1993–2022 (Fig. 3a). The increase
is strongest during winter (DJF) and concentrated in the 145°E–160°E
band, where the mean zonal flow also strengthened by 0.05 ± 0.02 m s⁻¹
per decade. The spatial coherence between EKE trends and mean-flow
acceleration is broadly consistent with enhanced baroclinic energy
conversion, though direct instability diagnostics are presented
separately (Section 3.4).

### Slot Trace

| Slot | Draft sentence / clause | Evidence used | Notes |
|------|-------------------------|---------------|-------|
| S1 | EKE in the Kuroshio Extension increased by 12 ± 4 cm² s⁻² per decade over 1993–2022 | Fig. 3a | lead finding — magnitude, direction, region, period |
| S2 | strongest during winter (DJF) and concentrated in the 145°E–160°E band | Fig. 3a, Fig. 3b | spatial/seasonal support |
| S3 | mean zonal flow also strengthened by 0.05 ± 0.02 m s⁻¹ per decade | Fig. 3b | comparative evidence |
| S4 | broadly consistent with enhanced baroclinic energy conversion... presented separately (Section 3.4) | — | bounded mechanism language; mechanism validation deferred to Section 3.4 |

### Evidence and Boundary
- Evidence used: Fig3a, Fig3b; CMEMS altimetry geostrophic velocity anomalies; EKE = (ug'² + vg'²) / 2
- Claim served: C2
- Argument-chain link served: decisive evidence
- References: [CITATION NEEDED] — prior EKE trend estimates for Kuroshio Extension region
- What this unit does not claim: This unit reports an EKE trend and its spatial structure. It does NOT assert that baroclinic instability is the confirmed mechanism — "broadly consistent with" signals that the instability diagnostics are handled elsewhere (Section 3.4). The EKE trend is not attributed to any specific forcing (wind stress, buoyancy forcing, or intrinsic variability).

### 中文核对 / Author Check
- 这一段报告了黑潮延伸体 EKE 的十年际趋势（12 ± 4 cm² s⁻²/十年），并描述了其季节和空间特征。
- 用词 "broadly consistent with" 是刻意选择：空间分布与斜压转换机制方向一致，但机制验证留在 Section 3.4。这里没有声称因果关系。
- **需要确认**：该区域是否有前人发表的 EKE 趋势文献需要引用？目前标记为 `[CITATION NEEDED]`。
- **边界提醒**：仅基于 1993–2022 卫星高度计记录，不能外推为更长时间尺度的气候趋势。

### 请选择
保留 / 修改 / 扩展 / 继续下一单元
```

## 为什么用 "broadly consistent with" 而不是 "demonstrates"

论断强度阶梯中 "demonstrates" 对应最高证据等级，需要稳健的统计检验、排除替代解释。这一段只报告空间分布模式，机制诊断在 Section 3.4。此处用 "demonstrates" 属于过度声称。

## 为什么标记 [CITATION NEEDED] 而不是编造引用

skill 的 guardrails 明确禁止编造引用和 DOI。如果用户未提供 Zotero 导出或文献列表，则标记 `[CITATION NEEDED]` 并继续起草。

## 模式 ≠ 机制

Fig3a 展示的是 EKE 趋势与平均流趋势的空间重叠——这是**模式**，不是**机制**。Results 段落只报告图展示了什么，不声称物理成因。因果关系由 Section 3.4 的稳定性诊断提供。

## 段尾汇总示例

完成 Results 所有段落后，助手给出段尾汇总：

```markdown
## Section Completion Summary / 本节完成情况

- Confirmed units: Results P1 (overview), P2 (EKE trend magnitude), P3 (seasonality), P4 (spatial structure)
- Main claim(s) served: C1, C2
- Argument-chain links covered: decisive evidence
- Remaining issues: [CITATION NEEDED] × 3（前人 EKE 趋势文献、区域海洋学背景、统计方法引用）
- Risk before next section: citation gaps only, no evidence or structure risk
- Recommended next action: continue to Discussion section
```

## 后续步骤

| 用户选择 | 动作 |
|---------|------|
| 保留 | 锁定写入 `04_manuscript-draft.md`，进入下一段 |
| 修改 | 根据反馈调整段落，重新提交确认 |
| 扩展 | 拆分或扩展段落，补充定量细节 |
| 继续下一单元 | 同"保留"，进入下一个写作单元 |
