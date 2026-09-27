# Cross-Skill Routing

OPW is the manuscript-writing controller, not an automatic dispatcher. Diagnose the request, recommend a route, explain why it exceeds or remains within OPW, define the handoff and expected return, then ask the user to confirm. Invoke another Skill only after explicit confirmation. Do not copy its full rules into OPW.

## Choose the work owner

| Request | OPW decision |
|---|---|
| Unclear scientific question or central tension; competing stories; conceptual novelty; mechanism- or consequence-first framing; new Figure or Results architecture; many results without a coherent paper; a Reviewer issue exposing a fundamental story conflict | Recommend `NATURE_STORY`. Explain why local revision is insufficient. Handoff: research question, current evidence and limits, candidate claims, competing explanations, existing outline and figures. Expected return: Story Handoff Packet. |
| Complete first draft; before advisor circulation or submission; after major revision; whole-paper section function, Introduction-Results-Discussion closure, figure/text coordination, headline number, term or claim consistency | Recommend `OCEAN_PAPER_REVIEWER`. Handoff: authoritative complete manuscript and available figures, captions and supplements. Expected return: prioritized whole-manuscript issue list. OPW Verify does not stand in for Full Preflight. |
| Specific advisor, coauthor, editor or reviewer comment | Stay in OPW Feedback -> Strategy -> Revision Brief -> Prose -> Verify; prepare a response when needed. |
| One paragraph, section, claim, figure-result unit, a specified Reviewer issue or known local repair | Stay in OPW Iterate: Strategy -> Revision Brief -> Prose -> Verify. Use Analysis Task when evidence is missing. |

Do not route ordinary local revision acceptance to Ocean Paper Reviewer. Do not perform a full Nature Story audit inside OPW. `OPW_STRATEGY` and `OPW_PROSE_VERIFY` are internal routes; `NATURE_STORY` and `OCEAN_PAPER_REVIEWER` name external Skills; `NONE` means no Skill route.

## Receive an Ocean Paper Reviewer report

Use the issue's `Severity`, `Owner`, `Recommended route` and `Minimum corrective action`. Show the selected issue to the user and ask whether to process it; do not rewrite the full manuscript from a report. Handle one issue or a tightly coupled set at a time.

- `Owner: USER_OR_JOURNAL; Recommended route: NONE`: request the missing fact, parameter, evidence or journal requirement from the author. Do not invent a Skill workflow.
- `Owner: OPW; Recommended route: OPW_STRATEGY`: turn the issue into a bounded Strategy decision and Revision Brief. Confirm the brief with the user before Prose, then Verify. After PASS, move to the next selected issue.
- `Owner: OPW; Recommended route: OPW_PROSE_VERIFY`: confirm that scientific meaning is fixed, then make and verify the local expression change.
- `Owner: NATURE_STORY; Recommended route: NATURE_STORY`: explain the scientific story conflict and ask for explicit confirmation before routing. A recommendation in the report is not authorization.
- `Owner: REVIEWER_SELF; Recommended route: NONE`: retain a mechanical reviewer check or correction within its stated scope; escalate if a scientific decision is needed.

## Receive a Nature Story packet

The Story Handoff Packet may contain the scientific question, central tension, leading story spine, decisive evidence, evidence and claim boundaries, mechanism status, major competing explanation, Results and Figure architecture, essential missing analyses, analyses to demote or delete, and unresolved decisions. Treat it as advisory. Present the consequential scientific decisions to the user and obtain confirmation before changing manuscript or project owners.

After confirmation, use OPW's existing Build or Strategy -> Revision Brief -> Prose -> Verify workflow. Preserve the project-state ownership and commit rules in `SKILL.md`: update only the affected `01_prepare`, `02_methods`, `03_structure` and `04_writing` owners after an accepted, verified change. Never treat a handoff packet itself as authoritative project state.
