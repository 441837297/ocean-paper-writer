# Journal Rule Distillation (On-demand)

## Purpose

When the user wants to target a journal not covered by the built-in journal profiles, the skill can distill writing and formatting rules from the journal's own materials.

This is triggered **only when the user explicitly requests it** by providing both:

1. A **submission guide URL** (the journal's "Guide for Authors" or equivalent page)
2. **3–4 recent papers** from the target journal (as .md, .pdf, or pasted text)

The skill reads all provided materials, extracts recurring patterns and rules, and produces a concise journal profile that can be used for the structure, writing, review, and polish stages.

## When to Use

The user says something like:

> "I want to target [journal X]. Here is their submission guide: [URL]. Here are 3 recent papers from that journal: [attachments/paths]."

The skill should NOT proactively offer to distill a journal profile. Wait for the user to provide the materials.

If the user provides only one of the two inputs (URL or papers, but not both), ask for the missing one.

## Distillation Workflow

1. **Read the submission guide** from the provided URL. Extract:
   - Expected article types and their length constraints
   - Required sections and their flexibility
   - Abstract format and length
   - Figure/table policies
   - Reference style and citation format
   - Any discipline-specific requirements

2. **Read 3–4 provided papers.** Focus on:
   - How Introductions are structured (Context → Known → Gap → Approach pattern vs. alternatives)
   - Claim density and depth — how many claims per section, how deeply each is supported
   - Evidence-to-claim ratio — how much supporting material precedes each conclusion
   - Discussion style — comparison-heavy vs. mechanism-heavy vs. implications-heavy
   - Paragraph length, sentence rhythm, voice
   - Section ordering conventions (e.g., Methods before or after Results)
   - Use of supplementary materials

3. **Synthesize rules** using the standard 6-section journal profile format:

```
# [Journal Name]

*[Full Journal Name]*

---

## 1. Journal Narrative Identity
## 2. Best-fit Ocean Science Stories
## 3. Preferred Reasoning and Evidence Logic
## 4. Section-level Story Strategy
## 5. Writing Voice and Rhetorical Style
## 6. Late-stage Compression and Submission Notes
```

4. **Save** the distilled profile to the user's project: `03_structure/03_journal-profile_[journal-name].md`

5. **Present a summary** to the user. Ask: "Does this match your understanding of this journal? I'll adjust before we proceed."

## What the Distilled Profile Replaces

Once the user confirms the distilled profile, it replaces the role of a built-in journal profile. Use it during structure (for architecture decisions), writing (for voice and depth), review (for fit assessment), and polish (for compression).

## Guardrails

- Only distill rules that are **actually observed** across the provided materials. Do not invent journal conventions.
- Mark uncertain extractions: `[INFERRED — verify with user]` when a pattern is suggested but not definitive from the sample.
- If the provided papers show conflicting patterns (e.g., some with Methods-first, some with Methods-last), flag this to the user rather than picking one.
- The distilled profile is project-specific. Do not save it into the skill repository or claim it as a permanent reference unless the user asks.
