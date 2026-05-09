# Sentence Naturalization

Reduce repetitive sentence structures, generic openings, and template-style phrasing.
Preserve evidence boundaries and scientific meaning in every rewrite.

## High Risk

| Problem expression | Replacement | Why risky |
|--------------------|-------------|-----------|
| This proves that [claim]. | This suggests that [claim]. | Overstates certainty in most empirical papers |
| It is undeniable that [claim]. | The evidence indicates that [claim]. | Removes academic caution |
| This paper completely solves [problem]. | This paper addresses [problem] by [approach]. | Unrealistic and inflated |
| There is no doubt that [claim]. | The findings consistently point to [claim]. | Too absolute for academic writing |

## Medium Risk

| Problem expression | Replacement | Why risky |
|--------------------|-------------|-----------|
| It can be clearly seen that [claim]. | The results show that [claim]. | Adds rhetorical padding rather than evidence |
| This highlights the importance of [point]. | This indicates the relevance of [point]. | Common AI-style discussion filler |
| It should be emphasized that [point]. | [Point]. | Usually redundant when the point is already strong |
| This demonstrates the superiority of [method]. | This method performs better than [baseline] on [metric]. | Better to state the actual comparison |

## Optional

| Problem expression | Replacement | Why risky |
|--------------------|-------------|-----------|
| It is worth noting that [point]. | [Point]. | Often removable without losing meaning |
| It is important to note that [point]. | [Point]. | Similar filler pattern |
| In this context, [claim]. | [Claim]. | Fine occasionally, but repetitive if overused |

---

## Ocean-Science Examples

### Risky patterns

| Original | Problem | Better |
|----------|---------|--------|
| The results clearly demonstrate that ocean warming is reshaping the regional system. | Overstated mechanism + regional-to-system inflation | The results suggest a warming-related shift in [specific variable], although attribution requires further evidence. |
| This study provides new insights into the role of mesoscale eddies in climate change. | Inflated novelty + climate-change framing without evidence | This analysis links mesoscale eddy variability to [specific process] during [period/region]. |
| The model results reveal observed changes in mixed layer depth. | Model output conflated with observation | The model simulation indicates mixed layer depth changes under [forcing/configuration]. |
| The findings have important implications for global ocean circulation. | Global implication from likely regional study + generic significance | These results suggest [specific regional change] may influence [specific downstream process]. |

*Module: sentence-naturalization*
