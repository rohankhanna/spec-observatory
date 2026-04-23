# Repo Shape

This document defines the target shape that the repository's daily research loop should keep in sync with the current state of the art.

## Purpose

The repository is not just a document store. It is a bounded self-restructuring repo that:

1. researches spec-driven development across layers of abstraction
2. records the current view in `STATE_OF_THE_ART.md`
3. reshapes its managed surfaces to present that view coherently

## Layers The Repo Should Express

The repo should make the following layers legible:

- terminology and framing
- state-of-the-art research
- target repo shape
- architecture and operating constraints
- design decisions
- bounded automation that keeps the research and shape current

## Managed Surface

The daily LLM loop may rewrite:

- the managed block inside `STATE_OF_THE_ART.md`
- the files listed in `automation/managed_repo_paths.txt`

Those files are the repo's presentation and shape layer.

## Controller Surface

The daily LLM loop should not routinely rewrite:

- workflow code
- shell scripts
- auth bootstrapping
- `AGENTS.md`, `CLAUDE.md`, and `GEMINI.md`

Those files are the repo's controller layer and should change deliberately.

## Expected Shape

At minimum, the repository should always contain:

- a current `STATE_OF_THE_ART.md`
- a current `REPO_SHAPE.md`
- a readable `README.md`
- an authoritative `PROJECT_INTENT.md`
- an `ARCHITECTURE.md` that explains the loop and the boundaries
- ADRs that explain major operating decisions
- one architecture diagram for the daily refresh loop

## Restructuring Rule

Daily restructuring should be conservative.

The repo should only rewrite its managed surface when the researched state of the art implies:

- a better abstraction boundary
- a better information hierarchy
- a clearer mapping between layers
- a materially better way to present what this repo is for

It should not churn for style-only rewrites.
