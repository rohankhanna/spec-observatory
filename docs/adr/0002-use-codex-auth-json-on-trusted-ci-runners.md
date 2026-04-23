# ADR 0002: Use Codex auth.json On Trusted CI Runners

- Status: Accepted
- Date: 2026-04-23

## Context

This repository needs a daily Codex-driven observatory workflow, but the intended billing model is to reuse a logged-in Codex account rather than provide a separate OpenAI API key for CI.

OpenAI documents an advanced Codex CI/CD pattern for this case: seed `~/.codex/auth.json` from a trusted machine, run Codex normally on a trusted runner, and preserve the refreshed file for later runs.

## Decision

The repository will use a GitHub Actions secret named `CODEX_AUTH_JSON` that contains the full contents of a trusted machine's file-backed `auth.json`.

The scheduled workflow will assume a trusted `self-hosted` runner with a persistent `CODEX_HOME`. The workflow will:

1. create `CODEX_HOME` if needed
2. bootstrap `auth.json` only if it is missing
3. install the latest Codex CLI
4. run the observatory refresh normally and let Codex refresh the session in place

## Consequences

- The default CI path does not require a separate API key.
- The workflow is meant for trusted private automation only.
- One serialized runner or job stream should own a given `auth.json`.
- GitHub-hosted ephemeral runners need an additional secure restore-and-persist loop that this repo does not implement.
