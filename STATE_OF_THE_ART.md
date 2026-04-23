# State Of The Art

This is the canonical research document that the daily CI job maintains.

The automation contract for this file is simple:

- read the current document first
- run fresh web research
- compare fresh findings to the current document
- update only when there is a material difference

The same daily run may also update bounded repo-shape surfaces when the research implies the repository should present itself differently.

Manual edits outside the managed block are allowed. Manual edits inside the managed block will be overwritten by the automation.

<!-- state-of-the-art:managed:start -->
## Last Reviewed

2026-04-23

## Scope

This document tracks the state of the art for software-development approaches and tools that are relevant to:

- spec-driven development
- outcome-driven development
- coding agents
- agent orchestration
- software portfolio and project steering

## Current View

The strongest existing stack is already split across several mature categories rather than one single product.

- Spec-first workflow tools are mature enough to handle repo-local requirements, design, and task decomposition.
- Coding agents are mature enough to run bounded software work from a CLI or hosted environment.
- Orchestration runtimes are mature enough to manage durable, stateful agent execution.
- Portfolio-level steering across many projects remains less standardized than repo-local planning and coding.

## Notable Categories

### Spec-first workflow

- Spec Kit
- OpenSpec
- Kiro Specs

These tools already cover much of the "intent into design and tasks" layer inside a single project.

### Coding-agent execution

- Codex CLI
- Claude Code
- Jules
- OpenHands

These tools already cover much of the "bounded agent does work" layer.

### Orchestration and interoperability

- LangGraph
- Microsoft Agent Framework
- A2A

These tools already cover much of the "durable agent runtime or protocol" layer.

### Outcome and portfolio framing

- Outcome-driven development terminology is already established.
- Strategic portfolio management terminology is already established.
- Goal-oriented requirements engineering is the closest established software-engineering vocabulary for deriving lower-level artifacts from higher-level intent.

## Current Conclusion

The strongest adjacent tooling is still split across several mature categories rather than one single product. A credible repository in this space should not try to outbuild the whole stack; it should use ongoing research to clarify how spec-driven development should be expressed across layers and keep its own shape aligned with that view.

## Sources

- 2026-04-23: Spec Kit, https://github.github.com/spec-kit/index.html
- 2026-04-23: OpenSpec, https://openspec.dev/
- 2026-04-23: Kiro Specs, https://kiro.dev/docs/specs/
- 2026-04-23: Codex Use Cases, https://developers.openai.com/codex/use-cases
- 2026-04-23: Claude Code Overview, https://code.claude.com/docs/en/overview
- 2026-04-23: Jules Docs, https://jules.google/docs/
- 2026-04-23: OpenHands Docs, https://docs.openhands.dev/overview/introduction
- 2026-04-23: LangGraph Overview, https://docs.langchain.com/oss/python/langgraph/overview
- 2026-04-23: Microsoft Agent Framework, https://learn.microsoft.com/en-us/agent-framework/
- 2026-04-23: A2A, https://github.com/google/A2A
- 2026-04-23: Outcome-Driven Development, https://www.atlassian.com/software-development/practices/outcome-driven-development
- 2026-04-23: For Portfolio Management, https://www.pmi.org/standards/for-portfolio-management
<!-- state-of-the-art:managed:end -->
