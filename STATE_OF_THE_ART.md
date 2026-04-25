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

2026-04-25

## Scope

This document tracks the state of the art for software-development approaches and tools that are relevant to:

- spec-driven development
- outcome-driven development
- coding agents
- agent orchestration and interoperability
- software portfolio and project steering

## Current View

The strongest practical stack is still distributed across several layers rather than one end-to-end product, but the current report now misses three material changes.

- Spec-first workflow tools still define the repo-local `intent -> design -> tasks` layer, and the strongest official surfaces now cover feature, design-first, and bugfix or brownfield paths rather than only greenfield feature work.
- Coding-agent execution now has a broader first tier. Codex, Claude Code, GitHub Copilot cloud agent, Jules, and OpenHands all support autonomous or background code execution, while Codex and Claude Code also expose explicit multi-agent or multi-session supervision.
- The runtime and framework layer is better split into low-level orchestration and higher-level agent systems. LangGraph remains the low-level orchestration runtime, while LangChain now recommends Deep Agents as its batteries-included entry point. OpenAI Agents SDK, Google ADK, and Microsoft Agent Framework remain first-class vendor-backed frameworks.
- The interoperability layer is no longer just protocol transport. MCP has a latest versioned specification at `2025-11-25`, A2A has shipped `v1.0` as a stable production-ready standard under Linux Foundation governance, and `AGENTS.md` is now AAIF-stewarded open infrastructure for repo-local agent guidance.
- Outcome and portfolio steering still remain vocabulary- and workflow-heavy rather than standardized around one dominant agent-native control plane.

## Notable Categories

### Spec-first workflow

- Spec Kit
- OpenSpec
- Kiro Specs

These tools still define repo-local specification authoring, but Spec Kit and Kiro now make iterative, brownfield, and bugfix flows more explicit.

### Coding-agent execution and supervision

- Codex
- Claude Code
- GitHub Copilot cloud agent
- Jules
- OpenHands

This layer now clearly includes both local interactive agents and background cloud agents that own issue-to-PR or task-to-PR flows.

### Agent runtimes and frameworks

- LangGraph
- Deep Agents
- OpenAI Agents SDK
- Google ADK
- Microsoft Agent Framework

LangGraph is the low-level orchestration runtime here. Deep Agents, OpenAI Agents SDK, Google ADK, and Microsoft Agent Framework are the more batteries-included build, evaluate, and deploy surfaces.

### Interoperability and repo coordination

- MCP
- A2A
- AGENTS.md

This layer now spans tool and context connectivity, agent-to-agent communication, and repo-local agent guidance.

### Outcome and portfolio framing

- Outcome-driven development terminology remains established.
- Product discovery remains a common bridge from strategy to executable work.
- Portfolio management terminology remains established.

## Current Conclusion

The main correction is that the observatory should treat open agent coordination as a broader layer than protocol transport alone. `AGENTS.md` now belongs beside MCP and A2A as shared interoperability infrastructure, albeit at the repo boundary rather than the network boundary. A second correction is that the coding-agent layer should name GitHub Copilot cloud agent, and the framework layer should distinguish LangGraph from LangChain's higher-level Deep Agents entry point. The strongest current picture is therefore: spec-first authoring, coding-agent execution and supervision, agent runtimes and frameworks, interoperability and repo coordination, and outcome or portfolio steering.

## Sources

- 2026-04-25: Spec Kit, https://github.github.com/spec-kit/
- 2026-04-25: Spec Kit repository, https://github.com/github/spec-kit
- 2026-04-25: OpenSpec, https://openspec.dev/
- 2026-04-25: Kiro Specs, https://kiro.dev/docs/specs/
- 2026-04-25: Kiro Bugfix Specs, https://kiro.dev/docs/specs/bugfix-specs/
- 2026-04-25: Introducing the Codex app, https://openai.com/index/introducing-the-codex-app/
- 2026-04-25: Claude Code overview, https://code.claude.com/docs
- 2026-04-25: Extend Claude Code, https://code.claude.com/docs/en/features-overview
- 2026-04-25: GitHub Copilot cloud agent, https://docs.github.com/en/copilot/concepts/agents/cloud-agent/about-cloud-agent
- 2026-04-25: Jules getting started, https://jules.google/docs/
- 2026-04-25: OpenHands CLI mode, https://docs.openhands.dev/openhands/usage/how-to/cli-mode
- 2026-04-25: LangGraph overview, https://docs.langchain.com/oss/python/langgraph
- 2026-04-25: LangChain overview, https://docs.langchain.com/oss/python/langchain/overview
- 2026-04-25: OpenAI Agents SDK, https://openai.github.io/openai-agents-python/
- 2026-04-25: Agent Development Kit technical overview, https://adk.dev/get-started/about/
- 2026-04-25: ADK with A2A, https://google.github.io/adk-docs/a2a/
- 2026-04-25: Microsoft Agent Framework overview, https://learn.microsoft.com/en-us/agent-framework/overview/
- 2026-04-25: Model Context Protocol specification `2025-11-25`, https://modelcontextprotocol.io/specification/2025-11-25
- 2026-04-25: A2A Protocol v1.0 announcement, https://a2a-protocol.org/latest/announcing-1.0/
- 2026-04-25: Agent2Agent project, https://github.com/a2aproject
- 2026-04-25: AGENTS.md, https://agents.md/
- 2026-04-25: AAIF formation announcement, https://aaif.io/press/linux-foundation-announces-the-formation-of-the-agentic-ai-foundation-aaif-anchored-by-new-project-contributions-including-model-context-protocol-mcp-goose-and-agents-md/
- 2026-04-25: Outcome Driven Development, https://www.atlassian.com/software-development/practices/outcome-driven-development
- 2026-04-25: Using outcomes to guide product work, https://www.atlassian.com/software/jira/product-discovery/resources/handbook/outcomes
- 2026-04-25: The Standard for Portfolio Management – Fourth Edition, https://www.pmi.org/standards/for-portfolio-management
<!-- state-of-the-art:managed:end -->
