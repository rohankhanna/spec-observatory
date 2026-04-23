# State Of The Art

This is the canonical research report that the daily CI job maintains.

The automation contract for this file is simple:

- read the current document first
- run fresh web research
- compare fresh findings to the current document
- update only when there is a material difference

The same daily run may also update bounded observatory specs and docs when the research implies the repository should present itself differently.

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

The strongest practical stack is still distributed across several layers rather than one end-to-end product, but the layer boundary is clearer than the current report states.

- Spec-first workflow tools are mature enough to turn repo-local intent into reviewable requirements, design, and task artifacts.
- Coding agents are mature enough to execute bounded software work from a CLI, IDE, or hosted environment.
- The agent-systems layer now splits cleanly into agent runtimes and interoperability protocols; treating them as one category now hides an important part of the landscape.
- Portfolio and outcome steering remain framework- and terminology-heavy rather than standardized around one dominant software-development toolchain.

## Notable Categories

### Spec-first workflow

- Spec Kit
- OpenSpec
- Kiro Specs

These tools continue to define the repo-local `intent -> design -> tasks` layer.

### Coding-agent execution

- Codex
- Claude Code
- Jules
- OpenHands

These tools continue to define the `bounded agent does software work` layer.

### Agent runtimes

- LangGraph
- OpenAI Agents SDK
- Microsoft Agent Framework

This category now includes both independent orchestration frameworks and vendor-backed runtimes.

### Interoperability protocols

- MCP
- A2A

This is now a first-class layer, not a footnote to orchestration. MCP has become a broad tool-and-context protocol surface, and A2A is now a Linux Foundation-hosted open protocol originally contributed by Google.

### Outcome and portfolio framing

- Outcome-driven development terminology remains established.
- Portfolio management terminology remains established.
- Goal-oriented requirements engineering remains the closest established requirements vocabulary for deriving lower-level artifacts from higher-level intent.

## Current Conclusion

The main correction is structural: the observatory should treat agent runtimes and interoperability protocols as separate adjacent layers. Official sources now show MCP and A2A maturing as shared protocol surfaces, while OpenAI, Microsoft, and LangChain each expose runtime-level orchestration products. The strongest current picture is therefore: spec-first authoring, coding-agent execution, agent runtimes, interoperability protocols, and outcome/portfolio steering above them.

## Sources

- 2026-04-23: Spec Kit, https://github.github.com/spec-kit/index.html
- 2026-04-23: OpenSpec, https://openspec.dev/
- 2026-04-23: Kiro Specs, https://kiro.dev/docs/specs/
- 2026-04-23: Codex use cases, https://developers.openai.com/codex/use-cases
- 2026-04-23: Claude Code overview, https://docs.anthropic.com/en/docs/claude-code/overview
- 2026-04-23: Jules getting started, https://jules.google/docs/
- 2026-04-23: OpenHands Quick Start, https://docs.openhands.dev/usage/installation
- 2026-04-23: LangGraph overview, https://docs.langchain.com/oss/python/langgraph/overview
- 2026-04-23: OpenAI Agents SDK, https://platform.openai.com/docs/guides/agents-sdk/
- 2026-04-23: Microsoft Agent Framework overview, https://learn.microsoft.com/en-us/agent-framework/overview/
- 2026-04-23: Model Context Protocol overview, https://modelcontextprotocol.io/
- 2026-04-23: MCP Registry, https://modelcontextprotocol.io/registry/about
- 2026-04-23: Agent2Agent protocol, https://github.com/a2aproject/A2A
- 2026-04-23: Outcome Driven Development, https://www.atlassian.com/software-development/practices/outcome-driven-development
- 2026-04-23: Using outcomes to guide product work, https://www.atlassian.com/software/jira/product-discovery/resources/handbook/outcomes
- 2026-04-23: The Standard for Portfolio Management, https://www.pmi.org/-/media/pmi/documents/public/pdf/certifications/standard-for-portfolio-management-third-edition.pdf
<!-- state-of-the-art:managed:end -->
