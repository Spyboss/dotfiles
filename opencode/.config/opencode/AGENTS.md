# CHAT-MIRROR RULE (hard, added 2026-08-26)

Files are for persistence. Chat is for attention. Uminda works across two PCs
via git, but he reads decisions HERE, not in files. Every session must do both:

1. Write files to uhadev-sync as usual (permanent record, cross-PC sync).
2. AFTER committing, surface in the chat reply, directly:
   - every decision waiting on him
   - every action only his hands can do
   - any text he must copy-paste somewhere (pasted in full in chat, never
     "see file X")
Rule of thumb: if it would be lost by closing the terminal without reading a
file, it belongs in the chat reply too. A commit hash alone is NOT a summary.

# OUTREACH VOICE RULE (hard, from 2026-08-23)

Any text that leaves Uminda's name (emails, DMs, WhatsApps, applications, quotes) MUST pass `outreach/HOUSE-STYLE.md` (sync repo: ~/pulse/sources/uhadev-sync) before sending. Run the stop-slop and ai-copywriter audits on every outbound draft.

Non-negotiables:
- No em dashes or en dashes. Anywhere.
- No label-lines ("Quick one:", "Relevant proof:", "Honest line:").
- Max two-item lists. Three in a row = rewrite.
- One concrete proof point per message, phrased like speech ("I run the software two motorcycle dealerships use every day").
- One question per message, the easiest they can answer.
- Sign off "Uminda" or nothing. No brochure footers.
- No engineered humility ("judge the output", "worth the rate" banned).
- Vary sentence length; read aloud; if it sounds like a company wrote it, rewrite.
- Replies get answered in the same voice within hours. Follow-up bumps: two sentences max, one line of new value, one easy out.

Evidence tags on any numbers (PLAYBOOK amendment): [VERIFIED] / [VENDOR-REPORTED] / [ANECDOTE]. Never assert a client's Google ranking as fact; show the search live instead.

Hard gates: <=15 cold touches/day. NO remote quote or outbound send without Uminda's explicit approval. Same-day reply SLA.

# SESSION-STATE RULE (hard)

Uminda never prompts you to save state. At session end: append entry to
uhadev-sync/SESSION-LOG.md (append-only, newest LAST), then commit + push.
Pushing uhadev-sync is pre-approved, never ask. CONTEXT-VAULT.md and STATE.md
are FROZEN reference files; read them, never edit them.
