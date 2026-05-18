# Chinese-Friendly and Bilingual Output Specification

## Core Principle

The manuscript is usually written for English-language journals, but the user may be a Chinese-speaking author. Therefore:

- Manuscript-facing text defaults to English.
- User-facing interaction may be Chinese.
- Chinese author-facing explanations are allowed by default when the user writes in Chinese.
- Full bilingual manuscript text is optional and only used when requested.

Chinese support should help the author verify scientific intent, evidence boundaries, and revision decisions. It must not create extra claims.

## Output Modes

### 1. English Manuscript Mode — default for manuscript text

Use this mode for:
- manuscript paragraphs;
- Results, Discussion, Introduction, Methods, Conclusion, Abstract;
- figure captions;
- cover letters;
- journal-facing statements.

Default format:

```markdown
### Draft Text
[English manuscript prose]
```

### 2. Chinese-Friendly Interaction Mode — default for Chinese-speaking users

Use this mode for:

* workflow explanations;
* clarification questions;
* author confirmation requests;
* revision rationales;
* evidence boundary explanations;
* handoff recommendations.

Default format:

```markdown
### 中文核对 / Author Check
- [中文说明该段或该阶段的作用]
- [中文列出作者需要确认的信息]
- [中文提醒不能过度声称的地方]
```

This is not a Chinese translation of the manuscript. It is an author-facing check.

### 3. Bilingual Manuscript Comparison Mode — only when requested

Enable this mode only when the user explicitly asks for:

* bilingual draft;
* English + Chinese comparison;
* Chinese explanation after each English paragraph;
* translation support;
* 中英对照;
* 中文辅助理解.

Format:

```markdown
[English manuscript prose]

> **[Chinese]** [Chinese explanation or translation]
```

English is the manuscript text. Chinese is auxiliary.

## Chinese Input Handling

When the user provides Chinese draft text, do not translate it sentence by sentence mechanically.

First identify:

* claim;
* evidence;
* condition;
* comparison;
* implication;
* limitation;
* section function.

Then rewrite into English according to the manuscript section's job and the target journal profile.

If the Chinese input contains an unsupported claim, do not preserve it as a stronger English claim. Mark the issue with the appropriate tag:

* `[EVIDENCE GAP]`
* `[CITATION NEEDED]`
* `[UNCERTAIN]`
* `[POLISH BLOCKER]`
* `[REVIEW BLOCKER]`

## Rules

* Chinese explanations must not add claims absent from the English manuscript text.
* Chinese explanations must preserve uncertainty and evidence boundaries.
* Preserve English domain terms with Chinese explanation where helpful, e.g. mixed layer depth（混合层深度）.
* If the user requests English-only output, suppress Chinese author checks unless needed for a clarification question.
* If the user requests Chinese-only interaction, keep manuscript text English unless the user explicitly asks to draft manuscript text in Chinese.
* Do not label Chinese author-facing notes as final manuscript content.

## Opt-Out Keywords

If Chinese support or bilingual comparison was previously enabled, these keywords disable it:

`english only`, `no bilingual`, `only english`, `不要中文`, `只要英文`, `不需要中文解释`

No AskUserQuestion is needed; keyword detection is automatic.
