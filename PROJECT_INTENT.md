# PROJECT INTENT

This file is the authoritative internal statement of this repo's purpose and intended outcome.

## Purpose

Maintain a single state-of-the-art document for spec-driven development and its adjacent software-development ecosystem, and keep that document current with a daily LLM-in-the-loop CI job.

## Intended Outcome

Deliver a practical, reliable document-maintenance loop that makes it possible to:

- keep `STATE_OF_THE_ART.md` under version control
- run fresh research on a daily schedule in CI
- read the current document before any research-driven update
- update the document only when the newly researched state of the art materially differs from the current document
- keep the update loop understandable, reviewable, and reproducible
- support trusted non-API Codex authentication for CI when the goal is to reuse a logged-in Codex account

## Current Goal

Until a user deliberately edits this file, the active goal is:

Build and maintain a daily CI loop that keeps `STATE_OF_THE_ART.md` current by reading the document first, running fresh research second, comparing the two, and only committing a change when the document is materially stale.

Work in this repo should prioritize:

- defining the exact scope and structure of `STATE_OF_THE_ART.md`
- making the daily update workflow deterministic enough to review
- keeping the LLM step bounded to research, comparison, and proposed document replacement
- installing the latest Codex CLI in CI on every run
- using a trusted persisted Codex auth file in CI instead of API-key billing for the default workflow
- avoiding unnecessary rewrites when there is no material change

This repo should be considered locally complete for this goal when it contains a maintained `STATE_OF_THE_ART.md`, a daily CI update workflow, a bounded LLM prompt and schema, and a verification path that together demonstrate the document-maintenance loop in a reusable form.

## Notes

- Keep this file stable even when `README.md` is rewritten for presentation, onboarding, or public-facing clarity.
- `README.md` may summarize this intent for human readers, but this file is the governing repo-intent source for agent work.
