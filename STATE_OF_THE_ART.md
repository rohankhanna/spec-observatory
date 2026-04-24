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

2026-04-24

## Scope

This document tracks the state of the art for software-development approaches and tools that are relevant to:

- spec-driven development
- outcome-driven development
- coding agents
- agent orchestration and interoperability
- software portfolio and project steering

## Current View

The strongest practical stack is still distributed across several layers rather than one end-to-end product, but the current report now understates two parts of that stack.

- Spec-first workflow tools still define the repo-local `intent -> design -> tasks` layer.
- Coding agents are no longer only bounded executors. Official Codex and Claude Code surfaces now expose parallel-agent supervision, and Jules explicitly consumes repo-local `AGENTS.md` guidance.
- The runtime/framework layer is broader than the current report names. Google ADK now belongs beside LangGraph, OpenAI Agents SDK, and Microsoft Agent Framework as a first-class system for building, evaluating, and deploying multi-agent software.
- The interoperability layer has moved from emerging standards to foundation-governed infrastructure. MCP now sits inside the Agentic AI Foundation under Linux Foundation governance, while A2A has official Linux Foundation governance and documentation.
- Outcome and portfolio steering still remain framework- and terminology-heavy rather than standardized around one dominant agent-native toolchain.

## Notable Categories

### Spec-first workflow

- Spec Kit
- OpenSpec
- Kiro Specs

These still define the repo-local `intent -> design -> tasks` layer.

### Coding-agent execution and supervision

- Codex
- Claude Code
- Jules
- OpenHands

`AGENTS.md` is now a meaningful cross-tool repo-local convention in this layer, but it complements rather than replaces spec-first artifacts.

### Agent runtimes and frameworks

- LangGraph
- OpenAI Agents SDK
- Google ADK
- Microsoft Agent Framework

This layer now clearly includes both low-level orchestration runtimes and vendor-backed build/evaluate/deploy frameworks.

### Interoperability protocols

- MCP
- A2A

MCP is now foundation-governed infrastructure through AAIF, and A2A is a Linux Foundation project with official protocol docs.

### Outcome and portfolio framing

- Outcome-driven development terminology remains established.
- Product discovery remains a common bridge from strategy to executable work.
- Portfolio management terminology remains established.

## Current Conclusion

The main material correction is that the observatory should now treat Google ADK as a first-class peer in the runtime/framework layer and should treat MCP and A2A as foundation-governed shared infrastructure rather than merely emerging standards. A secondary supporting signal is that `AGENTS.md` has matured into a real cross-tool repo-local coordination convention for coding agents. The strongest current picture is therefore: spec-first authoring, coding-agent execution and supervision, agent runtimes and frameworks, interoperability protocols, and outcome/portfolio steering.

## Sources

- 2026-04-24: Spec Kit, https://github.github.com/spec-kit/
- 2026-04-24: OpenSpec, https://openspec.dev/
- 2026-04-24: Kiro Specs, https://kiro.dev/docs/specs/
- 2026-04-24: Introducing the Codex app, https://openai.com/index/introducing-the-codex-app/
- 2026-04-24: Claude Code overview, https://code.claude.com/docs/en/overview
- 2026-04-24: Jules getting started, https://jules.google/docs/
- 2026-04-24: OpenHands installation, https://docs.openhands.dev/openhands/usage/cli/installation
- 2026-04-24: LangGraph overview, https://docs.langchain.com/oss/python/langgraph/overview
- 2026-04-24: OpenAI Agents SDK, https://developers.openai.com/api/docs/guides/agents
- 2026-04-24: Agent Development Kit, https://google.github.io/adk-docs/
- 2026-04-24: Agents CLI in Agent Platform, https://developers.googleblog.com/agents-cli-in-agent-platform-create-to-production-in-one-cli/
- 2026-04-24: Microsoft Agent Framework overview, https://learn.microsoft.com/en-us/agent-framework/overview/
- 2026-04-24: Model Context Protocol specification, https://modelcontextprotocol.io/specification/draft
- 2026-04-24: A2A Protocol docs, https://a2a-protocol.org/latest/
- 2026-04-24: Agentic AI Foundation formation announcement, https://aaif.io/press/linux-foundation-announces-the-formation-of-the-agentic-ai-foundation-aaif-anchored-by-new-project-contributions-including-model-context-protocol-mcp-goose-and-agents-md/
- 2026-04-24: Outcome Driven Development, https://www.atlassian.com/software-development/practices/outcome-driven-development
- 2026-04-24: Using outcomes to guide product work, https://www.atlassian.com/software/jira/product-discovery/resources/handbook/outcomes
- 2026-04-24: The Standard for Portfolio Management – Fourth Edition, https://www.pmi.org/standards/for-portfolio-management
<!-- state-of-the-art:managed:end -->
