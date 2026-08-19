# Response Letter Strategy

## Purpose

Convert confirmed scientific decisions and completed revisions into concise, evidence-based replies
to editors and reviewers. Use this reference only when analyzing response strategy, drafting a
response letter, or revising an existing response. Do not load it for ordinary manuscript review.

## Universal Rules

Apply these to every response, regardless of comment type or length.

- **Second person throughout.** Use `you` and `your`, never `the reviewer`, `the editor`, or
  `Reviewer #1`. This is a direct reply to a colleague, not a report about their comments.
- **At most one brief acknowledgment per comment.** Omit it when a direct answer reads naturally.
  The revision is the best acknowledgment — do not repeat praise or agreement in words.

## Stepwise Comment Workflow

Handle one comment at a time. Complete only the current step, state the completed step and next
step, then wait for the user. The user may enter at any step. Reuse interpretations, decisions, or
responses already explicitly confirmed; do not repeat completed work.

### R0. Select comment

Identify one editor or reviewer comment and preserve it verbatim. Confirm which comment is being
handled when it is unclear.

### R1. Interpret comment

Read the original comment, the relevant manuscript passage, and only the context needed to
understand why the concern was raised. Propose one comment type and briefly explain it:

```text
审稿人直接问什么：
他为什么会问这个：
对应原稿位置：
我的暂定判断：[EDIT / CLARIFY / ADD_ANALYSIS / CORRECT / BOUNDARY]；[简短理由]
```

Types are aids to interpretation, not decisions. The five types and when to use each:

| Type | What the reviewer is actually asking |
|------|--------------------------------------|
| `MINOR_EDIT` | Fix a typo, wording, or formatting issue. The science is untouched. |
| `CLARIFY` | They didn't understand something — a term, a definition, a symbol, a method step, or why the result differs from a familiar framework. The science is correct but the communication was unclear. |
| `ADD_ANALYSIS` | They want a new diagnostic, figure, table, citation, or sensitivity test. Evidence is missing. |
| `CORRECT` | An error in code, formula, value, or implementation. Something was wrong. |
| `BOUNDARY` | They ask for attribution or mechanism that exceeds the available evidence, data, or model output. The limit is real and must be stated. |

CLARIFY is the broadest category. It covers terminology confusion (e.g., baroclinic transfer vs
buoyancy conversion), inconsistent notation (e.g., using the same symbol for local density and
volume-integrated energy), missing method steps (e.g., how spatial structure is obtained from
volume-integrated terms), and apparent contradiction with classical theory that is actually a
framework difference (e.g., eddy-following lifecycle vs Eulerian climatology). The common thread:
the science is sound but was not explained clearly enough for the reviewer to follow.

Stop after R1 and ask the user to confirm or correct the interpretation.

### R2. User confirms interpretation

Record the confirmed interpretation and type. If the user changes either, return to R1 only as
needed to make the interpretation clear.

### R3. Propose response strategy

Based on the confirmed interpretation, discuss the scientific response before writing formal prose:

```text
建议回应思路：

1. 是否接受审稿人的意见：
2. 需要做或已经做了什么：
3. 最关键的结果或事实：
4. 手稿准备修改哪里：
5. Response 需要保持怎样的证据边界：
```

Do not use `beyond the scope` in place of a feasible minimum check. If requested work cannot be
done, identify the missing data, diagnostic, experiment, or model output. Stop after R3 and wait
for user confirmation.

### R4. User confirms strategy

Record the confirmed scientific decision, evidence boundary, manuscript action, and location.
Return to R3 when the user changes the strategy.

### R5. Draft Chinese response

Draft a concise formal Chinese reply from the confirmed interpretation, strategy, manuscript
revision, terminology, and analysis results. It must be close to the final response in information
density, not an internal note. Use the type naturally:

| Type | Response strategy | Typical length | Start with thanks? |
|------|-------------------|----------------|--------------------|
| `MINOR_EDIT` | Agree → show what changed → paste revised text → give location. | 1–2 sentences | No |
| `CLARIFY` | Acknowledge where the manuscript caused confusion → give the unified definition / derivation / logic → answer directly → paste revised text → give location. | 1–4 short paragraphs | Yes |
| `ADD_ANALYSIS` | State the added analysis → key result → whether conclusions changed → paste revised text → give location. | 2–3 short paragraphs | Yes |
| `CORRECT` | State the error source → correction or recalculation → corrected result → whether conclusions changed → paste revised text → give location. | 2–3 short paragraphs | Yes (admit directly, no self-defense) |
| `BOUNDARY` | State what the evidence supports → where the boundary is → how the manuscript wording was adjusted → paste revised text → give location. | 1–2 short paragraphs | Yes |

Use the minimum evidence needed for evaluation. Keep internal implementation details, abandoned
alternatives, and repeated background out of the reply. Stop after R5 and wait for user
confirmation.

### R6. User confirms Chinese response

Treat the confirmed Chinese response as the information boundary for English rendering. Return to
R5 when its scientific content, logic, or evidence strength changes.

### R7. Draft English response

Render the confirmed Chinese response as concise, natural academic English. Preserve confirmed
facts, logical order, and evidence strength. Use the reviewer comment, final manuscript, and
terminology table for exact terms. Prefer concrete actions and objects: `corrected`, `added`,
`calculated`, `recalculated`, `revised`, `clarified [object]`, `removed`, `defined`, and `moved`.
State what was done and, for analyses or corrections, what the result shows and whether conclusions
changed. Keep sentences short and direct. Apply the Universal Rules (you/your, one acknowledgment
max) — the revision is shown, not defended.

Then give the English reply to the user for confirmation. If it requires substantive re-examination,
return to the earliest uncertain step rather than polishing English directly.

## Evidence Language

Apply the global evidence boundaries in `SKILL.md`. Match response posture to the confirmed state:

| Evidence state | Preferred posture |
|----------------|-------------------|
| Directly verified | `The analysis shows...` / `We found...` |
| Supported by converging evidence | `These results support...` |
| Plausible but not isolated | `This provides a plausible interpretation...` |
| Unresolved with available evidence | `The available outputs do not isolate...` |

Keep the response at the same evidence strength and scope as the confirmed manuscript.

## Granularity

- **Major conceptual comment:** usually one to four short paragraphs; define the issue, give the
  minimum decisive evidence, and state the revision.
- **Numerical or code error:** state the source, corrected definition or formula, recomputed scope,
  closure or validation result, and effect on the conclusions.
- **Minor comment:** usually one or two sentences.
- **Formatting or typographical comment:** usually one sentence.
- **Long diagnostic:** summarize the answer in prose and place detailed results in a response-only
  figure or table when they are useful to the reviewer but not part of the manuscript's central story.

Keep internal implementation details, code filenames, variable inventories, intermediate outputs,
acceptance criteria, and abandoned alternatives out of the formal response.

## Tone

- Use at most one brief acknowledgment per comment; omit it when a direct answer reads naturally.
- Do not repeat praise or agreement that is already demonstrated by the revision.
- Do not say that the reviewer misunderstood. Identify the ambiguity in the manuscript instead.
- Acknowledge genuine errors directly and without self-defense.
- When retaining a choice, rely on definitions, evidence, and scope rather than authority or rhetoric.
- Do not mirror hostile or skeptical language. Maintain a calm, factual authorial posture.
- Do not repeat background that the reviewer already supplied.

## Response-Only Evidence

Use response-only figures or tables when they directly test robustness, bias, sensitivity, coverage,
or an alternative explanation but would distract from the manuscript's main argument. Make each
item self-contained, number it as `Fig. R1`, `Table R1`, and state whether any result was also added
to the manuscript.

Do not introduce a new central claim only in the response letter. If a result changes manuscript
interpretation, revise the manuscript as well.

## DOCX Format

For a Word response letter, update an existing Response DOCX when one exists. Otherwise, run
`scripts/build_response_docx_template.py` or copy `assets/response_template.docx`, then replace
the placeholders without changing the styles. Preserve the existing styles when updating.

- Use Times New Roman throughout, including tables, headers, footers and page numbers.
- Keep editor and reviewer comments as regular black text, preserving them verbatim.
- Keep each reviewer label, `Major comments`, and `Minor comments` as black section headings.
- Use blue text for manuscript metadata, response prose, revised manuscript context, response-only
  figure labels and captions. Do not selectively bold revised wording.
- Follow each revision excerpt with `Location: [section, figure, table, or caption]. Lines
  [XX-XX].` in blue italics. Leave the location and line placeholders for the author to complete.
- Insert a labeled blue placeholder for any response-only figure, and keep project-specific media
  out of the reusable template.
- Separate response units with whitespace only. Do not use dashed separators or a table of contents.

## Response Word Final Delivery

Begin after every manuscript Word page has completed final QA. Treat `response0806.md`, or the
corresponding final Response Markdown, as the content authority.

Update the existing Response DOCX when the project provides one. Preserve reviewer-comment original
text, established styles and colors, and each `Revised text` and `Location` structure. When the
project has no Response DOCX, create one with the existing script or template.

Codex may apply the confirmed final Response Markdown to the Response DOCX. The author renders
formulas manually and provides one current-page screenshot at a time. For the current page, Codex
compares the screenshot with the corresponding final Response Markdown and checks response content,
formulas, colors, verbatim comments, `Revised text`, and `Location`.

- When the page is correct, reply exactly: `本页完成`, then continue with the next page.
- When revision is needed, list only the content requiring correction and review that page again
  after it is updated.

This final delivery step verifies the confirmed response and its presentation. Scientific decisions
remain governed by the established review and response-letter workflow.

## Revision Workflow

When revising an existing response:

1. Preserve each reviewer comment verbatim.
2. Compare it with the confirmed scientific decision and final manuscript change.
3. Resume from the earliest uncertain step in R0-R7. Do not directly polish English when the
   interpretation, strategy, Chinese content, evidence, or manuscript action is uncertain.
4. Once those are confirmed, update the English response, revised text, and location from the final
   manuscript version.

## Final Check

- Does the first sentence answer the reviewer?
- Is the evidence sufficient but not exhaustive?
- Does the reply distinguish verified results from interpretation?
- Does it state whether the manuscript or conclusions changed?
- Are response-only evidence and manuscript changes clearly distinguished?
- Is the exact revised text and location provided?
- Are repeated concerns answered with one consistent scientific position?
- Does the response avoid claims absent from the revised manuscript?
