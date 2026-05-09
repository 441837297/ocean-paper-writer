# Bilingual Output Specification

## Default

English-only manuscript material by default.
Bilingual output is only enabled when the user explicitly requests it.

## When Bilingual Output Is Enabled

The user must explicitly request it with phrases like:

- bilingual draft
- Chinese explanation
- English + Chinese comparison
- translation support
- 中文辅助理解

## Opt-Out Keywords

If bilingual was previously enabled, these keywords disable it:
`english only`, `no bilingual`, `only english`, `不要中文`

No AskUserQuestion needed — keyword detection is automatic.

## Format: Markdown Blockquote

```markdown
The SST anomaly in the Southern Ocean exceeded 0.5°C during the 2014–2016 warming period.

> **[Chinese]** 南大洋的海表温度异常在 2014–2016 年增暖期间超过 0.5°C。
```

## Display Order

English first, Chinese after.
English is the manuscript text; Chinese is an auxiliary explanation.

## Rules

- Chinese explanation must not add claims absent from the English text.
- Bilingual output does not change evidence boundaries.
- If the user asks for English-only, output English-only.
- Preserve English domain terms with Chinese explanation in parentheses where helpful — e.g., "mixed layer depth（混合层深度）".

## Chinese Translation Quality

- **Purpose:** Auxiliary comprehension aid, not a standalone Chinese paper.
- **Register:** Academic written Chinese (学术书面语).
- **Standardized label:** Always use `> **[Chinese]**` (not `**[中文]**`).

## Edge Cases

- **Mixed Chinese-English input:** Treat the entire paragraph as one unit; do not split by language.
- **Very short paragraphs (1–2 sentences):** Still produce bilingual pair; do not merge with adjacent paragraphs.
