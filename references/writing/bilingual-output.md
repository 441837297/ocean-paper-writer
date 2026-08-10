# Bilingual Output

## Purpose

This optional module formats bilingual manuscript comparison or translation support. The default
interaction language and manuscript language are defined in `SKILL.md`.

## Bilingual Comparison

Use only when the user explicitly requests English-Chinese comparison:

```markdown
[English manuscript prose]

> **中文辅助：** [Chinese explanation or translation]
```

The English block is manuscript text. The Chinese block is author-facing support.

## Chinese Source Text

Before rendering Chinese draft material in English, identify its claim, evidence, condition,
comparison, implication, limitation, and section function. Then write natural English for that
function using the current terminology and evidence boundary.

Use standard status markers for unsupported or uncertain source content. Preserve established
English domain terms with a short Chinese explanation when that helps the author verify meaning.

English-only or Chinese-only interaction requests override this optional comparison format.
