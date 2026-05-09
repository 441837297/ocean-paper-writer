# Install Ocean Paper Writer

## One command

```bash
git clone https://github.com/441837297/ocean-paper-writer.git ~/.claude/skills/ocean-paper-writer/
```

That's it. Restart Claude Code, then say **"start ocean paper writer"** or describe your research materials — the skill will auto-activate.

## Verify

Start Claude Code and type:

```
I want to write a paper. I have figures, code, and a target journal in mind.
```

If the assistant responds by routing you to the **prepare** stage and asking 3–5 clarifying questions about your materials, the skill is working.

## Optional: Zotero literature support

If you want citation integration from your Zotero library:

1. Install [cookjohn/zotero-mcp](https://github.com/cookjohn/zotero-mcp) following its upstream guide.
2. Import your project-relevant papers into a Zotero collection.

The skill works fully without Zotero. Missing citations are marked `[CITATION NEEDED]` and you can fill them in later.

## Update

```bash
cd ~/.claude/skills/ocean-paper-writer && git pull
```
