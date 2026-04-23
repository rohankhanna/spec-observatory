# PROJECT INTENT

This file is the authoritative internal statement of this repo's purpose and intended outcome.

## Purpose

Maintain a current state-of-the-art document for spec-driven development and its adjacent software-development ecosystem, and keep the repository's managed surfaces conformed to the research-derived shape with a daily LLM-in-the-loop CI job.

## Intended Outcome

Deliver a practical, reliable document-maintenance loop that makes it possible to:

- keep `STATE_OF_THE_ART.md` under version control
- keep `REPO_SHAPE.md` under version control
- run fresh research on a daily schedule in CI
- read the current document before any research-driven update
- update the document only when the newly researched state of the art materially differs from the current document
- update the managed repo surfaces only when the researched state of the art implies a materially better repo shape
- keep the update loop understandable, reviewable, and reproducible
- support trusted non-API Codex authentication for CI when the goal is to reuse a logged-in Codex account

## Current Goal

Until a user deliberately edits this file, the active goal is:

Build and maintain a daily CI loop that keeps `STATE_OF_THE_ART.md` current and keeps the managed repo surfaces conformed to a research-derived shape by reading the current repo first, running fresh research second, comparing the two, and only committing a change when the repo is materially stale.

Work in this repo should prioritize:

- defining the exact scope and structure of `STATE_OF_THE_ART.md`
- defining the exact scope and structure of `REPO_SHAPE.md`
- making the daily update workflow deterministic enough to review
- keeping the LLM step bounded to research, comparison, and proposed replacements for the managed repo surface
- installing the latest Codex CLI in CI on every run
- using a trusted persisted Codex auth file in CI instead of API-key billing for the default workflow
- avoiding unnecessary rewrites when there is no material change
- separating controller surfaces from LLM-managed surfaces so the repo can self-restructure without destabilizing its own control loop

This repo should be considered locally complete for this goal when it contains a maintained `STATE_OF_THE_ART.md`, a maintained `REPO_SHAPE.md`, a daily CI update workflow, a bounded LLM prompt and schema, a managed-surface allowlist, and a verification path that together demonstrate the research-plus-restructure loop in a reusable form.

## Notes

- Keep this file stable even when `README.md` is rewritten for presentation, onboarding, or public-facing clarity.
- `README.md` may summarize this intent for human readers, but this file is the governing repo-intent source for agent work.
