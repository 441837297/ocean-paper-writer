# DOCX Tracked Revision Handoff

Keep the submitted source DOCX immutable. Create one field-cleaned baseline and one cumulative tracked
DOCX from it. Enable Word Track Changes only in the cumulative tracked DOCX after the common
initial cleanup. Continue every confirmed edit in that file. Do not create clean, compared, hash,
or audit outputs.

## Per-Unit Two-Gate Workflow

### Gate 1: Preview and confirmation

For every Word unit, present the preview in exactly this order. Do not present the complete revised
unit as a replacement.

### 1-2. Diff and reasons

List changes one by one. Keep every diff and its explanation together:

1. Use a fenced `diff` block with one deleted line (`-`) and one added line (`+`) so the interface
   renders the original in red and the revision in green. Keep only the shortest context needed to
   locate the change; split unrelated changes into separate blocks.
2. Immediately after each diff block, explain the scientific, numerical, terminological, or
   rhetorical reason in Chinese. Identify the relevant response comment and, when applicable, the
   confirmed calculation, working manuscript, terminology decision, or other authoritative project
   source.

Do not collect all diffs first and explanations later. Do not rely on HTML font colors.

### 3. Chinese translation

Provide a complete Chinese translation of the revised Word unit as one independent paragraph. Do
not mix diff notation or revision explanations into the translation.

### 4. Overall analysis and decision

Analyze the revised unit as a whole. State:

- whether its scientific meaning or evidence strength changes;
- whether it fully matches the relevant response;
- whether terminology, logic, numbers, citations, equations, or Word fields require attention;
- what decision, if any, the author needs to make before backfilling.

End with a concrete decision level suited to the actual risk. Do not force every case into the
binary labels `要我判断` and `无需判断`. Use a precise conclusion such as:

- `无需你判断，可以按已确认文本回填。`
- `建议你关注，但不影响本段回填。`
- `需要你确认措辞后再回填。`
- `需要你判断科学含义后再回填。`
- `当前不能安全回填，需先解决上述问题。`

The decision level describes the author's required scientific or editorial judgment. It does not
replace the required user confirmation before writing to the DOCX.

Stop after item 4 and wait for user confirmation.

### Gate 2: Word and screenshot

After confirmation, edit and verify the unit, then close the writing session. Open the DOCX for the
user to capture an **All Markup** screenshot and stop. After the user sends the screenshot, review it
and close Word. Advance only after the unit passes visual inspection.

Editing rules:

- With Track Changes off, delete the Zotero bibliography field from both the field-cleaned baseline
  and cumulative tracked DOCX. Preserve the `REFERENCES` heading and all in-text citation fields.
  Do not modify the submitted source DOCX. Enable Track Changes in the cumulative tracked DOCX only
  after this cleanup.
- Use Word COM and replace each smallest uniquely located range separately. Never replace a whole
  paragraph when the confirmed diff changes only phrases or sentences; preserve all unchanged text,
  existing OMath, fields, and formatting so Track Changes marks only the actual edits. Do not rebuild
  a scientific DOCX with `python-docx`.
- Treat tracked DOCX editing as a low-freedom operation:
  - Never reuse absolute character offsets after a tracked edit. Hidden insertion and deletion nodes
    change subsequent Word ranges.
  - Never search repeatedly for the same old token after replacing it; Word may match the deleted
    revision text again. Locate repeated tokens with unique surrounding text, or edit one occurrence,
    save, reopen, and verify before continuing.
  - Never fall back to whole-paragraph replacement when Find fails or the search text exceeds Word's
    limit. Narrow the search to a unique phrase or split the confirmed change into smaller ranges.
  - Save a checkpoint between risky units so a later failure cannot invalidate an already verified
    batch.
  - If a paragraph is accidentally replaced wholesale, reject only that paragraph's new revisions,
    then reapply the confirmed phrase- or sentence-level edits.
- After every write, verify the accepted/final OOXML text, check for duplicated or corrupted tokens,
  confirm the expected insertion and deletion nodes, and confirm that substantial unchanged text
  remains whenever the intended edit is surgical. If All Markup shows an entire paragraph as revised
  when only local changes were confirmed, reject that paragraph's revisions and redo it before
  proceeding.
- Preserve styles, tables, captions, fields, headers, footers, and section layout.
- If a Word unit is unchanged, report it briefly and advance without a write or screenshot gate.
- Check fields and OMath before writing. Never replace or insert citations or citation placeholders;
  report the required manual change in the conversation.
- If a revision requires inserting or moving a Zotero citation, edit only field-free text and ask
  the user to complete the Zotero action in Word. Verify the saved result before advancing.
- If the user refines wording during DOCX review, update the working manuscript first, then update
  any matching Response revised text before editing Word.
- Keep display equations and inline mathematical expressions as native Word OMath. Preserve all
  existing OMath. For every new or replaced mathematical expression, provide a Word UnicodeMath
  linear expression or token; insert only the confirmed linear token as tracked text when it belongs
  to an otherwise surgical prose edit. During a multi-unit backfill, do not pause each unit solely for
  OMath conversion. Keep a conversation-level list of pending linear tokens, finish the confirmed
  prose, table, and caption replacements first, and convert the pending expressions together in a
  final formula pass with Track Changes enabled. Do not automate OMath conversion through Word COM.
  When a display equation is stored in a layout table, preserve the table, its rows and columns, and
  the equation-number cell. After the final formula pass, verify subscripts, superscripts, vectors,
  baseline alignment, table layout, and equation numbers in dedicated All Markup screenshots.
- For new structured notation, insert only linear UnicodeMath tokens such as `E_M^1`; never emulate
  mathematical structure with ordinary Word subscript or superscript character formatting. In a
  multi-unit backfill, retain the tracked linear token until the final formula pass, then convert all
  queued tokens to Professional OMath together.
- In tables, preserve the existing table structure and replace only the visible cell content range,
  excluding the end-of-cell marker. Verify every affected cell's final text or value exactly.
- Keep simple inline numeric-letter combinations such as `0.5R` as ordinary text unless the author
  requests mathematical formatting; reserve OMath conversion for structured subscripts,
  superscripts, Greek symbols, operators, and equation expressions.
- Preserve the manuscript's dimensional notation: do not relabel a horizontal or vertical integral
  as a fully volume-integrated quantity unless the defining integration and terminology support it.
- Explain an asymmetry only on the side directly supported by the evidence. Do not invent a
  reciprocal mechanism for the contrasting side merely to make the explanation symmetrical.
- Verify once that Word opens the file, native revisions exist, and only the current unit changed.
- After programmatic verification, explicitly ask the user to send a screenshot of the current Word
  unit with **All Markup** visible. Review revision placement, red/green markup, line breaks,
  superscripts/subscripts, equations, and paragraph formatting. Do not advance to the next Word unit
  until the screenshot has been reviewed and any visual issue has been resolved.
- Keep all interpretation, diffs, manual items, and verification results in the conversation. Do not
  create audit records or run hash or document comparison checks.

## Word COM Lock and Timeout Recovery

Ask the user to close the target DOCX before writing. If Word COM times out:

1. Check whether the edit was saved before retrying.
2. After user confirmation, close only orphaned Word processes started by the operation.
3. Retry once with visible Word.
4. If it still fails, stop. Do not rewrite the DOCX with `python-docx` or raw OOXML.
