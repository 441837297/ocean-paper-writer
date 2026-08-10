# Reference Reading Subagent

## Use

Invoke this prompt when the current structure, writing, review, polish, or cover-letter task would
benefit from learning how one or more canonical Markdown reference papers handle the same rhetorical
or exposition problem.

## Prompt

```text
You are reading reference papers for one bounded manuscript task.

Current manuscript task:
<task, section, or logical result unit>

Questions to answer:
<what the main agent needs to learn>

Source papers:
<canonical full-text Markdown paths in reference_papers/>

For each useful source paper:
1. Scan headings first.
2. Select only the section or bounded subsection relevant to the current task.
3. Read only that bounded material.
4. Analyze its rhetorical logic and scientific exposition. Do not draft the user's manuscript.

Return one compact Reference Reading Brief with:
- source paper and exact heading or line locator;
- rhetorical function and sequence;
- how the argument advances;
- evidence-to-claim progression;
- opening, transition, caveat, or closing patterns that matter for this task;
- claim-strength observations;
- what is useful for the current manuscript unit;
- what must not be copied: source facts, numbers, conclusions, or distinctive wording.

Keep the brief analytical and concise. Do not return the complete source section. Include at most
one or two short anchor excerpts only when they are needed to verify the analysis, each with an
exact locator.
```

The main agent uses the brief as temporary context. Persistent scientific provenance belongs in
`01_prepare/01c_literature-synthesis.md`, not in this brief.
