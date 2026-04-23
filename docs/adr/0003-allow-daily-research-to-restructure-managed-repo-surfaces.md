# ADR 0003: Allow Daily Research To Restructure Managed Repo Surfaces

- Status: Accepted
- Date: 2026-04-23

## Context

The repository now aims to do more than maintain one research document. It also aims to express the current view of spec-driven development through its observatory specs and docs.

Allowing the daily loop to rewrite the entire repository would be unstable because it would let the same model that performs research also rewrite its own controller surfaces.

## Decision

The daily Codex loop may rewrite only:

- the managed block of `STATE_OF_THE_ART.md`
- the files listed in `automation/managed_repo_paths.txt`

Workflow code, scripts, auth bootstrapping, and repo-local instruction files remain controller surfaces and are not part of the routine self-restructuring loop.

## Consequences

- The repo can restructure itself daily without becoming fully self-modifying.
- Research can change the repo's presentation and shape layer.
- The control loop remains reviewable and stable.
