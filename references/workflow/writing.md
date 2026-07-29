# Writing Workflow

## Purpose

This file defines **how to execute a writing task**. It controls the writing process. Non-negotiable prohibitions come from `## House Rules`.

The writing workflow generates manuscript prose one unit at a time, following the architecture defined in the structure stage. Journal voice is applied during drafting, not as a post-hoc layer. Context is loaded just-in-time.

## When to Use

Run when: structure stage is complete with confirmed `03_section-architecture.md`. Do NOT run when: structure is incomplete; user only wants to polish (use polish workflow).

---

## 03 → 04 一致性检查

每次起草或修改 04 单元之前，对照项目的三份 03 文件检查：

1. **主角是否漂移** — 当前单元是否仍然服务于 03_section-architecture 定义的主角？
2. **主张是否超过证据** — 关联是否写成了因果？动词强度是否超过 03_terminology 规定的 claim-strength 边界？
3. **术语是否越过 section exposure** — 是否在禁止的 section 中使用了受限术语？（对照 03_terminology 的各节曝光规则）
4. **图号和 panel role 是否一致** — 引用的图件是否与 03_figure-outline 中的定义一致？
5. **关键概念是否混淆** — 03_terminology 中规定必须区分的概念（如 signed/unsigned）是否被混用？
6. **限制是否仍然可见** — 03 规定的硬边界和 diagnostic limitation 是否在正文中保留？
7. **是否重新引入了已被 03 删除的旧决策** — 检查 04 文本中是否出现了 03 已明确移除的措辞、公式或叙事元素？

如果 04 暴露了真正的架构变化需求，先更新并压缩 03 的对应条目，再修改 04。不在 03 中保留新旧两个版本。

---

## House Rules

以下规则来自先前审稿教训，**对所有期刊生效，永远加载**：

1. **段首句承担段落功能。** Results 段落 result-first；Discussion 解释段落 claim-first；Introduction 段首执行 rhetorical move；Methods 段首 topic/operation-first；limitation 段 scope-first 允许。
   Good: "The greatest cumulative intensity of MHWs is observed..."（Gou 2025 NCC）
   Bad: 段首铺垫背景和机制，而非执行该段的功能

2. **一段只做一件事。** 每段承担一个功能：发现 / 机制 / 对比 / 边界 / 意义。
   Bad: 一段中混入变量 A 与变量 B 的关联 + 分量分解 + 区域趋势 + 背景解释 + "without closing a full budget"——六件事塞一段

   **段落功能标签：** 起草前明确本段属于哪一类——restate finding / explain mechanism / compare with literature / discuss implication / discuss limitation / propose future work / methodological caveat / synthesis。一段只选一个标签。

3. **证据强度决定动词强度。**
   - 直接测量结果 → show / find
   - 统计关联 → is associated with / is consistent with
   - 有限推断 → suggests
   - 可能物理解释 → may reflect / could help explain
   - 因果陈述 → 仅在有因果识别设计时使用
   Good: "Analysis...suggests that the hotspot warming..."（Li 2026 NCC）
   Bad: 相关性用 "indicates" 过强，应为 "is consistent with"

4. **结果句带齐变量、方向、范围。** 什么变量、在哪、何时、增强还是减弱。精确数值从 figure code/output 获取。
   Good: "We show that over the past 22 years, parts of the ocean have experienced..."（Yang Kai 2026 NCC）
   Bad: "Transport magnitude has risen for both heat and salt." — 缺少百分比、区域、时段

5. **先现象，后机制，再意义。**
   Good: "Globally, there is a significant increase in EKE and SST gradients..."（MM 2021 NCC）
   Bad: "This larger anomaly content is expressed at boundaries as increased transport" — 机制动词出现在现象陈述之前

6. **限定后置，不散布防御性否定句。** 先写发现，再补范围或例外。Scope qualifier（区域、样本、时段）可前置，defensive caveat 不可前置。用正面陈述替代否定句式；每类限制最多保留一次，其余集中到 Methods 或 Discussion boundary 段落。
   Good: "There is strong natural multidecadal variability... however..."（Li 2026 NCC）
   Bad: "Whether larger anomaly content produces coherent net transport depends on polarity, pathway, and regional setting." — "Whether" 防御性开头
   Bad: "not a closed budget estimate" / "does not close the trend diagnostic" — 否定句自我防御

7. **术语定义一次，全文锁定。** 术语权威来源：`03_terminology.md`。
   Bad: 同一概念出现 "signatures" / "anomalies" / "contrasts" / "character" 四种变体。

8. **一句一事，直接推进，不绕弯。** 每句只承载一个核心信息，先给结论再补限定。禁用 "not X but Y" / "rather than" / "since"（表原因） / "therefore" / "not only but also" 等绕弯连接词；禁用 "Whether X depends on Y" 设问自答句式——直接陈述 X 由 Y 决定。一段内不超过一个 "however"。如果一句话有三个以上逗号分隔的逻辑转折，拆成两句。
   Bad: "This weak net tendency does not arise from a static system but from an active reorganization"
   Bad: "Whether larger anomaly content produces coherent net transport depends on eddy polarity, crossing pathway, and regional setting."
   Bad: "These constraints support a pathway from stronger currents to faster rotation, without closing a full energy budget."
   Good: "Rotational polarity governs the flux direction. Thermal structure modulates only the magnitude."
   Good: "Net transport coherence depends on eddy polarity, crossing pathway, and regional setting."

9. **不因规避禁用词而添加无谓解释。** 如果删除 "not X but Y" 后句子已直接成立，不要再补半句解释为什么。不给第一次阅读的读者增加理解负担。

10. **方法选择自然衔接，不跳转。** 不能前一句讲某方法的理论可能性、后一句突然切到 "we therefore used..."。方法段直接陈述做了什么、为什么在当前设定下合理。

    **方法不是数据源清单。** 不用 "Using A, B, C, and D, we examine X, Y, and Z" 的堆砌结构。方法句是回答 gap 的动作，用一句紧凑描述即可：`Using [compact diagnostic], we test whether [main unresolved question].` 具体数据源和技术参数放在 Methods。

11. **技术细节不前置堆砌。** 正文保持清晰直观。复杂技术细节集中在 Methods 或专门的归因/方法小节，不在 Results 主结果段落堆砌。

---

## Unit Context Packet

起草每个 04 单元时，不再加载三份 03 全文和所有参考论文，而是构建一个限定的上下文包。

上下文包含五项：

1. **段落合同** — `03_section-architecture.md` 中对应单元的一行合同
2. **证据关节** — `03_figure-outline.md` 中对应的图卡
3. **术语边界** — `03_terminology.md` 中与该单元相关的术语条目
4. **已验证内容** — `02_methods/` 和源数据中已核实的方法和数字
5. **期刊声音** — 目标期刊 profile 的当前 section 规则

此外，加载对应 section 的 reference snippets（`reference_papers/key_{section}/`），学习前人的段落推进节奏和句式结构。不加载无关 section、无关图片或完整参考论文全文。

### 优先级顺序

当来源冲突时，按以下优先级：

1. 已验证的项目证据和用户确认的方法
2. 用户确认的主张和术语边界
3. 段落合同
4. 图件逻辑
5. 目标期刊 profile

参考论文片段用于学习修辞形式，但永远不能添加项目事实、强化主张或推翻术语和证据边界。

### 参考片段

写作前检查 `reference_papers/key_{section}/` 目录下是否有前人论文片段。

- **有片段** → 加载作为写作上下文，学习其段落推进节奏和句式结构。不得复制其中的科学内容、具体数字或 distinctive phrasing。
- **无片段或缺少目标论文** → 按 fragment-extraction.md 的四种状态处理：有论文则询问提取、无论文则提醒补充。

片段库按 section 组织：
```
reference_papers/
  key_intro/          # Introduction 写作参考
  key_results_sec1/   # Results §1 写作参考
  key_results_sec2/   # Results §2 写作参考
  key_results_sec3/   # Results §3 写作参考
  key_discussion/     # Discussion 写作参考
  key_methods/        # Methods 写作参考
```

### Evidence sourcing:

- 精确数据 / 数值由用户提供或从用户指定的 figure code/output 中读取。structure 不预设未确认数值。
- 统计口径、样本范围等细节缺失时，先与用户确认再行动。

---

## Pre-draft Contract

每次起草前，建立 local contract。从 section-architecture 获取，逐项确认后进入 Drafting。

1. **确认 P-ID 和段落角色：** 当前段在 `03_section-architecture.md` 中有 P-ID、段落功能和主张边界。
2. **加载参考片段：** 检查 `reference_papers/key_{section}/` 下是否有片段；如有则加载作为写作上下文；如缺少目标论文则按 `fragment-extraction.md` 提取。
3. **确认可用材料：** facts, figures, claims（从 03 文件提取结构和证据指向）。**精确数值从对应 figure 的代码运行结果中获取，不由 structure 预设。** 统计口径、样本范围等细节缺失时先与用户确认。
4. **确认禁写内容：** 不属于本节的主张、机制解释、Discussion 素材。

## Evidence-to-Claim

- 每个 claim 必须能追溯到 source material（03 文件或用户提供的数据）。
- 证据不足时，按证据类型降级表达：
  - 直接测量 → show / find
  - 统计关联 → is associated with / is consistent with
  - 有限推断 → suggests
  - 可能物理解释 → may reflect / could help explain
- 不要将 indicate 作为通用中间等级。
- Results 不写文献评价和 broad implication。Discussion 不重复 Results 数字清单。

## Drafting

按 Pre-draft Contract 起草。遵循 House Rules。不添加无支撑的解释。不跨 section 边界搬运内容。

默认起草顺序：Methods → Results → Introduction → Discussion → Abstract。如果目标期刊有独立 Conclusion 则放在 Discussion 之后。

每段之后用户确认：保留 / 修改 / 扩展 / 继续。

## Output

每个 draft unit 返回：
1. **Draft Text** — 起草的段落正文
2. **Evidence and Boundary** — 此段用了什么证据、主张什么、不主张什么
3. **中文核对 / Author Check** — 中文简述此段做了什么，方便中文用户快速确认
4. **User choice** — 保留 / 修改 / 扩展 / 继续下一单元

如存在 unresolved evidence gaps 或术语风险，一并报告。

输出文件：
- `04_writing/04_manuscript-draft.md`
- `04_writing/04_writing-log.md`（统一修订记录，review + polish 修改均记录于此）

## Self-Check

起草后检查：
- [ ] House Rule 合规（段首、一段一事、动词强度、限定位置）
- [ ] 段落功能与 `03_section-architecture.md` 一致
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

## Abstract Drafting

Abstract 最后写。起草和检查规则见 `writing-abstract.md`。

## Required Inputs

**Structure-stage files:** `03_structure/03_section-architecture.md`, `03_structure/03_figure-outline.md`

**Supporting files:** `01_prepare/01a_project-brief.md`, `01_prepare/01b_evidence-inventory.md`, `02_methods/02a_data.md`, `02_methods/02b_methods.md`, `03_structure/03_terminology.md`

**Reference snippets（推荐）:** `reference_papers/key_{section}/` — 前人论文相关片段。如缺失，按 `references/workflow/fragment-extraction.md` 提取。

## Handoff

- **To Review:** manuscript draft confirmed by user.
- **From Review (Backpropagation):** update 01/02/03 per Revision Contract before modifying 04.
- **To Polish:** confirmed text ready for style refinement.
