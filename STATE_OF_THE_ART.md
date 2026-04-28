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

2026-04-28

## Scope

This document tracks the state of the art for software-development approaches and tools that are relevant to:

- spec-driven development
- outcome-driven development
- coding agents
- agent orchestration and interoperability
- software portfolio and project steering

## Current View

As of 2026-04-28, the practical stack is still distributed across layers rather than consolidated into one dominant end-to-end product, but the current observatory view is missing one now-material layer and needs one stronger steering nuance.

- Spec-first workflow tools still define the repo-local planning layer. Spec Kit, OpenSpec, and Kiro continue to cover greenfield feature work, repo-native living specs, brownfield iteration, and explicit bugfix flows.
- Coding-agent execution remains a broad first tier. Codex, Claude Code, GitHub Copilot cloud agent, Jules, and OpenHands still define the practical set to watch. Product movement is increasingly toward parallel supervision, background execution, cross-tool integrations, and persistent task context.
- A separate vendor-harness layer now deserves first-class treatment. Codex SDK, Claude Agent SDK, and GitHub custom agents show that major coding-agent products now expose the same or adjacent agent loops as programmable or repo-configurable build surfaces, rather than leaving teams to choose only between an end-user coding agent and a general-purpose framework.
- The runtime and framework layer is still best split into low-level orchestration and higher-level general agent systems. LangGraph remains the low-level runtime, while Deep Agents, OpenAI Agents SDK, Google ADK, and Microsoft Agent Framework remain the main higher-level general build surfaces.
- The interoperability layer is still best understood across five open boundaries: MCP for model-to-tool and context connectivity, ACP for editor-to-agent integration, A2A for agent-to-agent communication, AG-UI for agent-to-user-interface interaction, and AGENTS.md for repo-local agent guidance.
- Outcome and portfolio steering still lacks a dominant neutral control plane. JetBrains Central remains the clearest explicit open-system entrant for governance, execution infrastructure, and shared context, but the line between coding-agent products and software-production control planes is weakening as Codex and Copilot add integrations, automations, and administrative control surfaces around development work.

## Notable Categories

### Spec-first workflow

- Spec Kit
- OpenSpec
- Kiro Specs

These still define the practical spec-authoring layer, with OpenSpec emphasizing repo-native living specs and Kiro making brownfield and bugfix paths explicit.

### Coding-agent execution and supervision

- Codex
- Claude Code
- GitHub Copilot cloud agent
- Jules
- OpenHands

This layer still mixes local interactive agents with remote or background agents that can research, plan, edit, integrate external context, and return code changes.

### Vendor agent harnesses and customization surfaces

- Codex SDK and Codex app automations
- Claude Agent SDK
- GitHub custom agents

This is the missing layer in the previous report. The important shift is that major coding-agent vendors now expose reusable harnesses, repo-configurable specialization surfaces, or both. That makes product-native extension a credible alternative to starting directly from a general-purpose agent framework.

### Agent runtimes and frameworks

- LangGraph
- Deep Agents
- OpenAI Agents SDK
- Google ADK
- Microsoft Agent Framework

LangGraph remains the low-level orchestration runtime. Deep Agents, OpenAI Agents SDK, Google ADK, and Microsoft Agent Framework remain the main higher-level general build surfaces.

### Interoperability and coordination surfaces

- MCP
- ACP
- A2A
- AG-UI
- AGENTS.md

The practical open stack still spans tool and context connectivity, editor integration, agent-to-agent exchange, agent-to-UI interaction, and repo-local guidance.

### Outcome and portfolio steering

- Outcome-driven development terminology
- Jira Product Discovery
- JetBrains Central
- Portfolio management terminology

This layer still is not standardized around one neutral control plane, but it is no longer just vocabulary plus workflow. JetBrains Central remains the clearest explicit cross-tool control-plane entrant, while leading coding-agent products are beginning to overlap with adjacent execution-management territory.

## Current Conclusion

The strongest update is a missing abstraction boundary. The observatory should no longer collapse major vendor coding-agent build surfaces into either the end-user agent layer or the general framework layer. A practical stack description now needs a separate vendor-harness layer for productized agent loops and specialization surfaces such as Codex SDK, Claude Agent SDK, and GitHub custom agents. A second, smaller correction is at the steering layer: JetBrains Central remains the clearest explicit neutral control-plane entrant, but OpenAI Codex and GitHub Copilot are now pushing farther into cross-tool workflow execution and oversight than the current report states.

## Sources

- 2026-04-28 access: Spec Kit, https://github.github.com/spec-kit/index.html
- 2026-04-28 access: OpenSpec, https://openspec.dev/
- 2026-02-18 update: Kiro Specs, https://kiro.dev/docs/specs/
- 2026-02-18 update: Kiro Bugfix Specs, https://kiro.dev/docs/specs/bugfix-specs/
- 2026-04-16 publication: Codex for (almost) everything, https://openai.com/index/codex-for-almost-everything/
- 2025-10-06 publication accessed 2026-04-28: Codex is now generally available, https://openai.com/index/codex-now-generally-available/
- 2026-04-21 publication: Scaling Codex to enterprises worldwide, https://openai.com/index/scaling-codex-to-enterprises-worldwide/
- 2026-04-28 access: Claude Code overview, https://code.claude.com/docs
- 2026-04-28 access: Claude Agent SDK overview, https://code.claude.com/docs/en/agent-sdk
- 2026-04-28 access: GitHub Copilot coding agent, https://docs.github.com/en/copilot/concepts/coding-agent/about-copilot-coding-agent
- 2026-04-28 access: GitHub custom agents, https://docs.github.com/en/copilot/concepts/agents/cloud-agent/about-custom-agents
- 2026-04-28 access: GitHub Copilot integrations, https://docs.github.com/en/copilot/concepts/tools/about-copilot-integrations
- 2026-04-28 access: Jules getting started, https://jules.google/docs/
- 2026-04-28 access: OpenHands ACP overview, https://docs.openhands.dev/openhands/usage/cli/ide/overview
- 2026-04-28 access: LangGraph overview, https://docs.langchain.com/oss/python/langgraph
- 2026-04-28 access: Deep Agents overview, https://docs.langchain.com/oss/python/deepagents/overview
- 2026-04-28 access: OpenAI Agents SDK, https://platform.openai.com/docs/guides/agents-sdk
- 2026-04-28 access: Google ADK technical overview, https://adk.dev/get-started/about/
- 2026-02-20 update accessed 2026-04-28: Microsoft Agent Framework overview, https://learn.microsoft.com/en-us/agent-framework/overview/
- 2026-04-28 access: MCP specification 2025-11-25, https://modelcontextprotocol.io/specification/2025-11-25/basic
- 2026-04-28 access: ACP overview, https://agentclientprotocol.com/protocol/overview
- 2026-04-23 update accessed 2026-04-28: ACP RFD updates, https://agentclientprotocol.com/rfds/updates
- 2026-04-28 access: A2A Protocol v1.0 announcement, https://a2a-protocol.org/latest/announcing-1.0/
- 2026-04-28 access: AG-UI overview, https://docs.ag-ui.com/
- 2026-04-28 access: AGENTS.md, https://agents.md/index
- 2026-03-24 publication: Introducing JetBrains Central, https://blog.jetbrains.com/blog/2026/03/24/introducing-jetbrains-central-an-open-system-for-agentic-software-development/
- 2026-04-28 access: Outcome Driven Development, https://www.atlassian.com/software-development/practices/outcome-driven-development
- 2026-04-28 access: Jira Product Discovery, https://www.atlassian.com/en/software/jira/product-discovery
<!-- state-of-the-art:managed:end -->
