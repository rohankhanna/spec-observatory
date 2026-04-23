# Repo Shape Spec

## Purpose

The repository should present itself as an observatory, not as another generic agent runtime or another general-purpose spec tool.

## Required Layers

The repo should make these layers legible:

- product framing
- research scope
- current state-of-the-art report
- repo shape and information architecture
- daily refresh operating contract
- architecture and controller boundaries

## Managed Surface

The daily loop may rewrite:

- the managed block inside `STATE_OF_THE_ART.md`
- the files listed in `automation/managed_repo_paths.txt`

## Controller Surface

The daily loop should not routinely rewrite:

- workflow code
- shell scripts
- auth bootstrapping
- `AGENTS.md`, `CLAUDE.md`, and `GEMINI.md`

## Restructuring Rule

Restructuring should be conservative.

The repo should only rewrite managed surfaces when the latest research implies:

- a better abstraction boundary
- a clearer information hierarchy
- a clearer product framing
- a materially better mapping from ecosystem layers to repo surfaces
