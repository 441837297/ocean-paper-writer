# 03 Writing Blueprint

> 本文件连接 `03_section-architecture.md`（全文架构）和 `04_manuscript-draft.md`（正文草稿）。
> 起草前逐段确认：段落功能 → 句子推进顺序 → 起草。

## Project Metadata

- project name: [from prepare]
- working title: [from prepare]
- target journal: [from prepare]
- last updated: [YYYY-MM-DD]
- source: `03_section-architecture.md`, `03_figure-outline.md`, `02_methods/`

## Paragraph Map

全稿段落一览。每个计划中的段落占一行。

| P-ID | Section | 段落角色 | 主张 | 证据 | 前段链接 | 后段链接 | 蓝图状态 |
|------|---------|----------|------|------|----------|----------|----------|
| M1 | Methods | 数据来源 | — | 02a_data | — | M2 | 待确认 |
| R1 | Results | [报发现 / 做检验 / ...] | C1 | Fig.1 | — | R2 | 待确认 |

**蓝图状态**: `待确认` → `段落功能已确认` → `句子顺序已确认` → `已起草`

**P-ID 规则**: M=Methods, R=Results, I=Introduction, D=Discussion, C=Conclusion, A=Abstract。数字按 section 内顺序递增。

## Paragraph Contracts

每个 P-ID 一个区块。起草前逐项确认。

### P-ID: [如 R1] — [一句话描述]

- **Section**: [Results / Introduction / Discussion / Methods / Conclusion / Abstract]
- **段落角色**: [这段在 section 内的功能 — 报发现 / 做检验 / 解释机制 / 对比前人 / 限范围 / 过渡]
- **主张**: [此段服务的 claim，引用 claim hierarchy]
- **证据**: [图/表/数据引用]
- **必需事实槽位**: [此段需要哪些类型的事实：变量、方向、范围、比较对象。不要在此预填未确认数值。精确数值在 writing 阶段从 figure code/output 获取。缺失则标 [MISSING]]
- **禁止动作**: [此段不能写的内容 — 不抢隔壁段的活、不提前给 Discussion 结论、不过度防御]
- **前段链接**: [如何承接上一段 — 关键词衔接或逻辑承接]
- **后段链接**: [如何过渡到下一段 — 留给下一段的钩子]
- **确认状态**: [待确认 / 段落功能已确认 / 句子顺序已确认 / 已起草]

## Sentence Slots

*仅 Results、Introduction、Discussion、Abstract 段需要。routine Methods 段可省略。*
*每个 slot 是句子级任务。起草前逐槽填写，起草后逐槽核对。*

### P-ID: [如 R1] — Sentence Slots

| Slot | 任务 | 内容要求 | 证据 | 禁止 | 状态 |
|------|------|----------|------|------|------|
| S1 | 首句报发现 | [变量 + 方向 + 范围] | Fig.X | 不以 Figure X shows 开头 | 待确认 |
| S2 | 量化支撑 | [figure-code output: value / CI / significance] | Fig.X panel Y | 不解释机制 | 待确认 |
| S3 | 对比或路径 | [极性 / 区域 / 方向对比] | Fig.X panel Z | 不写 broad implication | 待确认 |
| S4 | 边界 + 过渡 | [本段的限制条件 + 钩子] | — | 不连续否定 | 待确认 |

*slot 数量按段落复杂度增减。典型 Results 段 3–5 句，Introduction 首段 4–6 句。*
*精确数值在 writing 阶段从 figure code/output 获取，不由 structure 预设。*

---

*蓝图随项目推进更新。改 protagonist、段落角色、或完成一轮 review 后同步更新。*
*句子推进缺失时：ClaudeCode 先生成提议 → 用户确认 → 再起草。不要跳过确认直接写正文。*
