# Abstract Drafting Contract

摘要最后写，写完自检（非强制前置，写完后过一遍即可）。

## 起草约束

### 信息密度

- 时间范围只出现一次（除非有明确的科学理由用两个不同时段）
- 方法压缩为一句话（不列数据源清单，不说 "Using A, B, C, and D, we examine X, Y, and Z"）
- 核心发现和关键数值保留
- 趋势方向和显著性完整（不因压缩而弱化或删除核心信息）
- 无语义重复（不同说法讲同一事实）
- 无防御式限定（见下方详细说明）
- 结尾给出 bounded implication，而非泛泛的 "these findings highlight..."

### 防御式表达：三类识别与处理

防御式表达不等于严谨。在摘要中识别并移除以下三类：

| 类型 | 特征 | 例子 | 处理 |
|------|------|------|------|
| 方法防御 | 把读者注意力从发现拉到方法边界 | `including shorter-lived eddies and dipoles` | 删除；方法边界放 Methods/Discussion |
| 统计防御 | 把主发现写弱、写啰嗦 | `directed, on average, toward` | 删除 filler（toward），保留必要的统计描述 |
| 归因防御 | 摘要像审稿回复，不像发现陈述 | `under an observation-based extension` | 删除；归因论证放正文 |

该防御的放 Methods 或 Discussion boundary，不放摘要。

### 动词强度阶梯

按证据强度选择动词，不把相关写成因果：

```
show / find  >  indicate  >  suggest  >  may reflect
  确立           指向          暗示          可能反映
```

### 主张结构

- **一句一主张** — 每句只承载一个主语-谓语核心，不堆砌从句
- **主张先行，限定后置** — 先给主张，再加边界条件；不先让步再主张

### 方法句原则

方法句不是数据源清单，而是**回答知识缺口的动作**。

| 避免（清单式） | 推荐（动作式） |
|---------------|---------------|
| Using satellite observations, reconstructed CO2 flux fields, and a framework that separates rotational polarity from thermal structure, we show... | We separate rotational polarity from thermal structure using observations and reconstructed CO2 fluxes. |

只保留一个核心动作，数据细节全部删除。

## 自检输出

起草或修改摘要后：

```
## Abstract Self-Check
- Word count:
- 时间范围重复: yes / no
- 核心发现保留: yes / no
- 语义重复风险: low / medium / high
- 防御式限定: yes / no（方法防御/统计防御/归因防御）
- 方法密度: compact / dense
- 动词强度匹配: ok / review
```
