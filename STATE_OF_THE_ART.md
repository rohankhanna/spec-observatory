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

2026-04-27

## Scope

This document tracks the state of the art for software-development approaches and tools that are relevant to:

- spec-driven development
- outcome-driven development
- coding agents
- agent orchestration and interoperability
- software portfolio and project steering

## Current View

As of 2026-04-27, the practical stack is still distributed across layers rather than consolidated into one dominant end-to-end product, but the recorded view now needs two material corrections.

- Spec-first workflow tools still define the repo-local planning layer. Spec Kit, OpenSpec, and Kiro continue to cover greenfield feature work, repo-native living specs, brownfield iteration, and explicit bugfix flows.
- Coding-agent execution remains a broad first tier. Codex, Claude Code, GitHub Copilot cloud agent, Jules, and OpenHands still define the practical set to watch; the visible product movement is toward parallel-agent supervision, background execution, and repo-native guidance rather than toward one new dominant coding agent.
- The runtime and framework layer is still best split into low-level orchestration and higher-level agent systems. LangGraph remains the low-level runtime, while Deep Agents, OpenAI Agents SDK, Google ADK, and Microsoft Agent Framework remain the main higher-level build surfaces.
- The main interoperability correction is that open coordination now spans five distinct boundaries rather than four: MCP for model-to-tool and context connectivity, ACP for editor-to-agent integration, A2A for agent-to-agent communication, AG-UI for agent-to-user-interface interaction, and AGENTS.md for repo-local agent guidance.
- Outcome and portfolio steering is no longer purely vocabulary-heavy. Outcome-driven development, Jira Product Discovery, and portfolio-management terminology still frame the planning side, but JetBrains Central, announced on 2026-03-24, is now the clearest explicit early-access control-plane entrant for agent-driven software production, with governance, execution infrastructure, and cross-project context as first-class surfaces.

## Notable Categories

### Spec-first workflow

- Spec Kit
- OpenSpec
- Kiro Specs

These still define the practical spec-authoring layer, with OpenSpec emphasizing repo-native specs and Kiro making brownfield and bugfix paths explicit.

### Coding-agent execution and supervision

- Codex
- Claude Code
- GitHub Copilot cloud agent
- Jules
- OpenHands

This layer still mixes local interactive agents with remote or background agents that can research, plan, edit, and return code changes.

### Agent runtimes and frameworks

- LangGraph
- Deep Agents
- OpenAI Agents SDK
- Google ADK
- Microsoft Agent Framework

LangGraph remains the low-level orchestration runtime. Deep Agents, OpenAI Agents SDK, Google ADK, and Microsoft Agent Framework are the higher-level build surfaces.

### Interoperability and coordination surfaces

- MCP
- ACP
- A2A
- AG-UI
- AGENTS.md

The important correction is to treat agent-to-user-interface interaction as its own open coordination boundary alongside tool, editor, agent, and repo-local guidance boundaries.

### Outcome and portfolio steering

- Outcome-driven development terminology
- Jira Product Discovery
- JetBrains Central
- Portfolio management terminology

This layer is still not standardized around one neutral control plane, but it is no longer only vocabulary plus workflow. JetBrains Central is early-access rather than dominant, but it is now the clearest explicit product surface to watch.

## Current Conclusion

The strongest correction is interoperability. The observatory should no longer model open coordination as only MCP, ACP, A2A, and AGENTS.md; AG-UI is now credible enough to treat agent-to-user-interface interaction as a separate open boundary. A second correction is at the steering layer: there is still no dominant neutral control plane for outcome and portfolio management, but the category is no longer just terminology and workflow software. JetBrains Central is now the clearest explicit control-plane entrant for governance, execution, cost, and context management across agent-driven software production.

## Sources

- 2026-04-27 access: Spec Kit, https://github.github.com/spec-kit/index.html
- 2026-04-27 access: OpenSpec, https://openspec.dev/
- 2026-02-18 update: Kiro Specs, https://kiro.dev/docs/specs/
- 2026-02-18 update: Kiro Bugfix Specs, https://kiro.dev/docs/specs/bugfix-specs/
- 2026-02-02 publication with 2026-03-04 update: Introducing the Codex app, https://openai.com/index/introducing-the-codex-app/
- 2026-04-27 access: Claude Code overview, https://code.claude.com/docs/en/overview
- 2026-04-27 access: GitHub Copilot cloud agent, https://docs.github.com/en/copilot/concepts/agents/cloud-agent/about-cloud-agent
- 2026-04-27 access: Jules getting started, https://jules.google/docs/
- 2026-04-27 access: OpenHands ACP overview, https://docs.openhands.dev/openhands/usage/cli/ide/overview
- 2026-04-27 access: LangGraph overview, https://docs.langchain.com/oss/python/langgraph
- 2026-04-27 access: Deep Agents overview, https://docs.langchain.com/oss/python/deepagents/overview
- 2026-04-27 access: OpenAI Agents SDK, https://openai.github.io/openai-agents-python/
- 2026-04-27 access: Google ADK technical overview, https://adk.dev/get-started/about/
- 2026-04-06 update: Microsoft Agent Framework overview, https://learn.microsoft.com/en-us/agent-framework/overview/
- 2026-04-27 access: MCP specification 2025-11-25, https://modelcontextprotocol.io/specification/2025-11-25/basic
- 2026-04-27 access: ACP overview, https://agentclientprotocol.com/protocol/overview
- 2026-04-27 access: A2A Protocol v1.0 announcement, https://a2a-protocol.org/latest/announcing-1.0/
- 2026-04-27 access: AG-UI overview, https://docs.ag-ui.com/introduction
- 2026-04-09 update: Microsoft Agent Framework AG-UI integration, https://learn.microsoft.com/en-us/agent-framework/integrations/ag-ui/
- 2025-12-09 publication: Linux Foundation announces the formation of the Agentic AI Foundation, https://aaif.io/press/linux-foundation-announces-the-formation-of-the-agentic-ai-foundation-aaif-anchored-by-new-project-contributions-including-model-context-protocol-mcp-goose-and-agents-md/
- 2026-04-27 access: AGENTS.md, https://agents.md/index
- 2026-03-24 publication: Introducing JetBrains Central, https://blog.jetbrains.com/blog/2026/03/24/introducing-jetbrains-central-an-open-system-for-agentic-software-development/
- 2026-04-27 access: Outcome Driven Development, https://www.atlassian.com/software-development/practices/outcome-driven-development
- 2026-04-27 access: Jira Product Discovery ideas overview, https://www.atlassian.com/software/jira/product-discovery/guides/ideas/overview
- 2017-11 publication: The Standard for Portfolio Management - Fourth Edition, https://www.pmi.org/standards/for-portfolio-management
<!-- state-of-the-art:managed:end -->
