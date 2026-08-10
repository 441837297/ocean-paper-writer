# Abstract Polish Checks

润色摘要时执行。不阻断，只标记。分为结构检查（5 条）、表达检查（4 条）、语言检查（3 条）三层，以及最终 Abstract Final Gate。

## 结构完整性

1. **科学骨架保真** — 修改措辞后核对核心发现、趋势方向和关键数值是否完整。
2. **零重复** — 同一时间范围、同一数值只出现一次。
3. **方法紧凑** — 方法信息压缩为一句话；删去多余的 filler。
4. **语义不重复** — 不用不同措辞讲同一事实。
5. **结尾克制** — bounded implication，不泛化拔高。

## 防御式表达

6. **无方法防御** — 删除 "including X and Y" 类预防性方法说明。
7. **无统计防御** — 删除削弱主张的冗余修饰（如多余的 "on average"、"toward"）。
8. **无归因防御** — 删除 "under an observation-based extension" 类审稿回复式表述。

## 语言质量

9. **动词强度匹配** — 按 writing House Rules 核对证据与动词。
10. **一句一主张** — 每句只有一个主语-谓语核心，不堆砌从句。
11. **主张先行** — 先给主张，后加限定；不先让步再主张。

## Abstract Final Gate

*润色完成后逐项通过。全部通过才能标记摘要为 confirmed。*

### 1. 核心科学骨架完整性

| 骨架元素 | 是否出现 | 位置 |
|----------|---------|------|
| gap（知识缺口） | yes / no | |
| method move（方法动作） | yes / no | |
| primary finding（首要发现） | yes / no | |
| mechanism / explanation（机制解释） | yes / no | |
| headline number（关键数字） | yes / no | |
| temporal trend if central（时间趋势） | yes / no / N/A | |
| implication（科学意义） | yes / no | |

### 2. 防御式表达检查

逐句测试：删除该句后，主要结论是否依然完整？若完整 → 该句为防御式表达，考虑删除或移至 Discussion boundary。

- 不依赖特定禁用词列表；智能识别冗余限定
- 检查每句是否承载独立信息，是否对主要结论有贡献

### 3. 方法句检查

- 方法句是否回答了 gap？□ yes □ no
- 是否避免了数据源清单式写法（"Using A, B, C, and D..."）？□ yes □ no
- 方法信息是否压缩为一句？□ yes □ no

### 4. 关键数据检查

- 同一数值是否只出现一次？□ yes □ no
- 每句是否承担不同的信息角色（不重复陈述同一事实）？□ yes □ no
- Rough 类模糊修饰语是否不与精确数字连用？□ yes □ no

### 5. 概念准确性检查

- 核心领域概念使用是否正确？（如尺度匹配：大尺度概念不用于描述局部个体）□ yes □ no
- 术语是否与 `03_terminology.md` 一致？□ yes □ no

### Gate 通过条件

五项全部通过 → 摘要 confirmed。任一项未通过 → 标记对应问题，修正后重新过 Gate。
