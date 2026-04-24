# Product Spec

## Name

`Spec Observatory`

## Product Type

A spec-driven development observatory for the state of the art in spec-driven development and adjacent tooling.

## Problem

The relevant ecosystem is fragmented across several layers:

- spec-first workflow tools
- coding agents
- agent runtimes and frameworks
- interoperability protocols
- portfolio and outcome framing

There is no single stable surface that watches those layers together, records the current picture, and keeps its own structure aligned with the latest view.

## Product Goal

Produce a repository that:

1. monitors the state of the art around spec-driven development
2. records the current picture in a maintained research report
3. expresses that picture through a coherent set of repository specs
4. refreshes those managed surfaces daily with a bounded Codex-driven CI control loop
5. audits its own self-reimplementation so progress is not mistaken for improvement

## Core Artifacts

- `STATE_OF_THE_ART.md`
- `specs/RESEARCH_SCOPE_SPEC.md`
- `specs/REPO_SHAPE_SPEC.md`
- `specs/DAILY_REFRESH_SPEC.md`
- `specs/ADVANCE_JOB_SPEC.md`
- `specs/WATCHDOG_JOB_SPEC.md`
- `governance/WATCHDOG_FEEDBACK.md`

## Non-Goals

- building a new general-purpose spec workflow tool
- building a new coding agent
- building a new agent runtime or orchestration framework
- building a new interoperability protocol
- replacing primary sources with original claims
