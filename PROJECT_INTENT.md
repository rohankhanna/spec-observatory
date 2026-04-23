# PROJECT INTENT

This file is the authoritative internal statement of this repo's purpose and intended outcome.

## Purpose

Implement a spec-driven observatory for the state of the art in spec-driven development and adjacent software-development tooling, and keep the repository's managed surfaces conformed to that research with a daily LLM-in-the-loop CI job.

## Intended Outcome

Deliver a practical, reliable document-maintenance loop that makes it possible to:

- keep `STATE_OF_THE_ART.md` under version control
- keep canonical product and operating specs under version control
- run fresh research on a daily schedule in CI
- read the current document before any research-driven update
- update the document only when the newly researched state of the art materially differs from the current document
- update the managed repo surfaces only when the researched state of the art implies a materially better repo shape
- reject regressive self-reimplementations even when they present themselves as progress
- leave durable watchdog feedback that the next advance run must read
- keep the update loop understandable, reviewable, and reproducible
- support trusted non-API Codex authentication for CI when the goal is to reuse a logged-in Codex account

## Current Goal

Until a user deliberately edits this file, the active goal is:

Build and maintain a two-job CI control loop in which an `advance` job performs one bounded self-reimplementation step and a `watchdog` job reviews that step, accepts or reverts it, and leaves durable feedback for the next advance run.

Work in this repo should prioritize:

- defining the canonical specs that describe the observatory product, scope, shape, and refresh loop
- defining the exact scope and structure of `STATE_OF_THE_ART.md`
- making the daily update workflow deterministic enough to review
- keeping the LLM step bounded to research, comparison, and proposed replacements for the managed repo surface
- ensuring the watchdog can reject or revert bad self-modification through ordinary git history
- installing the latest Codex CLI in CI on every run
- using a trusted persisted Codex auth file in CI instead of API-key billing for the default workflow
- avoiding unnecessary rewrites when there is no material change
- separating controller surfaces from LLM-managed surfaces so the repo can self-restructure without destabilizing its own control loop

This repo should be considered locally complete for this goal when it contains a maintained `STATE_OF_THE_ART.md`, a maintained canonical spec set, paired `advance` and `watchdog` jobs, bounded prompts and schemas for both jobs, a managed-surface allowlist, a durable watchdog feedback surface, and a verification path that together demonstrate the recursive observatory loop in a reusable form.

## Notes

- Keep this file stable even when `README.md` is rewritten for presentation, onboarding, or public-facing clarity.
- `README.md` may summarize this intent for human readers, but this file is the governing repo-intent source for agent work.
