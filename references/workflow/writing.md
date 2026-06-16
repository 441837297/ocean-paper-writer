# Writing Workflow

## Purpose

This file defines **how to execute a writing task**. It controls the writing process. Journal-specific prose style comes from `{journal}.md`. Non-negotiable prohibitions come from `## House Rules`.

The writing workflow generates manuscript prose one unit at a time, following the architecture defined in the structure stage. Journal voice is applied during drafting, not as a post-hoc layer. Context is loaded just-in-time.

## When to Use

Run when: structure stage is complete with confirmed `03_section-architecture.md`; target journal is confirmed. Do NOT run when: structure is incomplete; user only wants to polish (use polish workflow).

---

## House Rules

以下规则来自先前审稿教训，**对所有期刊生效，永远加载**：

1. **段首先给结论。** 第一句是本段发现或主张。
   Good: "The greatest cumulative intensity of MHWs is observed..."（Gou 2025 NCC）
   Bad: "Across the global eddy population, stronger nonlinearity is accompanied by stronger surface thermohaline contrasts, consistent with stronger rotational dominance maintaining these contrasts during propagation" — 段首铺垫背景和机制，而非报发现

2. **一段只做一件事。** 每段承担一个功能：发现 / 机制 / 对比 / 边界 / 意义。
   Bad: 一段中混入 U-EKE 关联 + Amp/R 分解 + 区域 shear 趋势 + 背景约束解释 + "without closing a full energy budget"——六件事塞一段

3. **证据强度决定动词强度。** 充分证据用 show / find，机制推断用 suggest / indicate。
   Good: "Analysis...suggests that the hotspot warming..."（Li 2026 NCC）
   Bad: "Their close temporal agreement (R=0.90) indicates that the altimetry-era EKE increase is expressed at the eddy-object level as faster eddy rotation" — 相关性用 "indicates" 过强，应为 "is consistent with"

4. **结果句带齐变量、方向、范围。** 什么变量、在哪、何时、增强还是减弱。精确数值从 figure code/output 获取。
   Good: "We show that over the past 22 years, parts of the ocean have experienced..."（Yang Kai 2026 NCC）
   Bad: "Boundary-crossing transport magnitude has also risen for both heat and salt." — 缺少百分比、区域、时段

5. **先现象，后机制，再意义。**
   Good: "Globally, there is a significant increase in EKE and SST gradients..."（MM 2021 NCC）
   Bad: "This larger anomaly content is expressed at boundaries as increased transport magnitude" — 机制动词 "is expressed at" 出现在现象陈述之前

6. **限定后置，不散布防御性否定句。** 先写发现，再补范围或例外。Scope qualifier（区域、样本、时段）可前置，defensive caveat 不可前置。用正面陈述替代否定句式；每类限制最多保留一次，其余集中到 Methods 或 Discussion boundary 段落。
   Good: "There is strong natural multidecadal variability... however..."（Li 2026 NCC）
   Bad: "Whether larger anomaly content produces coherent net transport depends on eddy polarity, crossing pathway, and regional setting." — "Whether" 防御性开头
   Bad: "not a closed material-trapping estimate" / "does not close the c_x trend diagnostic" — 否定句自我防御

7. **术语定义一次，全文锁定。** 术语权威来源：`03_terminology.md`。
   Bad: 同一概念出现 "thermohaline signatures" / "thermohaline anomalies" / "thermohaline contrasts" / "thermohaline character" 四种变体。

---

## Load Order

**03 看骨架，04 看工艺。** 写作时不加载整个期刊 profile。

### Always load:

1. `## House Rules`（本文件）
2. `03_terminology.md` 全文
3. `03_writing-blueprint.md` — 当前 P-ID 的段落功能和句子推进
4. `{journal}.md` → `## Shared` + `## {current section}`（不做筛选，全量保留）

### Per-section context（subagent 或直接定位）:

从 03 文件提取当前 section 的材料。**按 section 级加载，不按段落 ID。** 段落会频繁变动。

输入：
- `03_section-architecture.md` → 当前 section 整节
- `03_figure-outline.md` → 当前 section 涉及的图面板

输出格式：
```
## Section Target
- Section / Function: [原文摘录]

## Relevant Architecture
[section-architecture 原文摘录]

## Relevant Figure Panels
[figure-outline 原文摘录]

## Exclusions
[相邻但不应写入本节的内容]
```

**不筛选期刊规则。** Shared 和当前节规则全量保留。subagent 只做 03 文件内容定位。

### Evidence sourcing:

- 精确数据 / 数值由用户提供或从用户指定的 figure code/output 中读取。structure 不预设未确认数值。
- 统计口径、样本范围等细节缺失时，先与用户确认再行动。

---

## Pre-draft Contract

每次起草前，建立 local contract。从 blueprint 和 journal profile 获取，逐项确认后进入 Drafting。

1. **确认 P-ID：** 当前段在 `03_writing-blueprint.md` 中有 P-ID 和段落功能。
2. **确认句子推进：** 如该段需要句子推进顺序但 blueprint 中缺失 → 先生成提议 → 用户确认 → 再起草。仅 Results、Introduction、Discussion、Abstract 段需要句子推进；routine Methods 段只需段落功能。
3. **确认 opening move：** 从 `{journal}.md` 当前 section 获取（首句角色、段落结构、禁止项）。
4. **确认可用材料：** facts, figures, claims（从 03 文件提取结构和证据指向）。**精确数值从对应 figure 的代码运行结果中获取，不由 structure 预设。** 统计口径、样本范围等细节缺失时先与用户确认。
5. **确认禁写内容：** 不属于本节的主张、机制解释、Discussion 素材。

## Evidence-to-Claim

- 每个 claim 必须能追溯到 source material（03 文件或用户提供的数据）。
- 证据不足 → 降级表达（show → suggest → indicate → may），不补写事实。
- Results 不写文献评价和 broad implication。Discussion 不重复 Results 数字清单。

## Drafting

按 Pre-draft Contract 起草。遵循 journal section 规则。不添加无支撑的解释。不跨 section 边界搬运内容。

默认起草顺序：Methods → Results → Introduction → Discussion → Conclusion → Abstract。

每段之后用户确认：保留 / 修改 / 扩展 / 继续。

## Output

每个 draft unit 返回：
1. **Draft Text** — 起草的段落正文
2. **Slot Trace** — 当段落有 sentence slots 时必须输出：

   | Slot | Draft sentence / clause | Evidence used | Notes |
   |------|------------------------|---------------|-------|
   | S1 | [正文对应句] | [证据来源] | [备注] |

   检查：每个 slot 有对应正文句；无 slot 外的额外 claim；如有，标记 `[EXTRA CLAIM — CONFIRM WITH USER]`。
3. **Evidence and Boundary** — 此段用了什么证据、主张什么、不主张什么
4. **中文核对 / Author Check** — 中文简述此段做了什么，方便中文用户快速确认
5. **User choice** — 保留 / 修改 / 扩展 / 继续下一单元

如存在 unresolved evidence gaps 或术语风险，一并报告。

输出文件：
- `04_writing/04_manuscript-draft.md`
- `04_writing/04_writing-log.md`（统一修订记录，review + polish 修改均记录于此）

## Self-Check

起草后检查：
- [ ] House Rule 合规（段首、一段一事、动词强度、限定位置）
- [ ] Journal rule 合规（从 `{journal}.md` 当前 section 获取的规则）
- [ ] 段落功能与 `03_writing-blueprint.md` 一致
- [ ] Slot Trace 完整：每个 slot 有对应正文句；无未经计划的额外 claim
- [ ] 所有 claim 可追溯到 source
- [ ] 术语与 `03_terminology.md` 一致
- [ ] 无跨 section 边界污染

## Stop Conditions

以下情况停止起草，报告原因：
- 无 Pre-draft Contract（需先建立）
- 关键 claim 缺乏证据支撑
- 图引用模糊不清
- 要求的 claim 超出证据边界

---

## Required Inputs

**Structure-stage files:** `03_structure/03_section-architecture.md`, `03_structure/03_writing-blueprint.md`, `03_structure/03_figure-outline.md`

**Supporting files:** `01_prepare/01a_project-brief.md`, `01_prepare/01b_evidence-inventory.md`, `02_methods/02a_data.md`, `02_methods/02b_methods.md`, `03_structure/03_terminology.md`

**Journal profile:** `{journal}.md` → `## Shared` + `## {current section}`

## Handoff

- **To Review:** manuscript draft confirmed by user.
- **From Review (Backpropagation):** update 01/02/03 per Revision Contract before modifying 04.
- **To Polish:** confirmed text ready for style refinement.
