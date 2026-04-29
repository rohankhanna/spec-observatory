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

2026-04-29

## Scope

This document tracks the state of the art for:

- spec-driven development
- outcome-driven development
- coding-agent execution
- vendor agent harnesses and customization surfaces
- orchestration and interoperability
- software portfolio, project steering, and agent control planes

## Current View

As of 2026-04-29, the practical stack is still distributed across layers rather than consolidated into one dominant end-to-end product, but the steering layer now needs a sharper split than the current report gives it.

- Spec-first workflow tools still define the repo-local planning layer. Spec Kit, OpenSpec, and Kiro continue to cover greenfield feature work, repo-native living specs, brownfield iteration, and explicit bugfix flows.
- Coding-agent execution remains a broad first tier. Codex, Claude Code, GitHub Copilot cloud agent, Jules, and OpenHands still define the practical set to watch. Product movement is increasingly toward background execution, scheduled or event-driven routines, persistent repo context, and built-in review or repair loops.
- A separate vendor-harness layer still deserves first-class treatment. Codex SDK, Claude Agent SDK, and GitHub custom agents show that major coding-agent products now expose programmable or repo-configurable build surfaces instead of forcing teams to start from a general-purpose framework.
- The runtime and framework layer is still best split into low-level orchestration and higher-level general agent systems. LangGraph remains the low-level runtime, while Deep Agents, OpenAI Agents SDK, Google ADK, and Microsoft Agent Framework remain the main higher-level build surfaces.
- The interoperability layer is still best understood across five open boundaries: MCP for model-to-tool and context connectivity, ACP for editor-to-agent integration, A2A for agent-to-agent communication, AG-UI for agent-to-user-interface interaction, and AGENTS.md for repo-local agent guidance.
- The material change is at the steering layer. Outcome framing and product discovery remain distinct from agent control planes. JetBrains Central remains the clearest open-system software-production control and execution plane, while Microsoft Agent 365 is now a major enterprise agent-governance control plane with explicit cross-agent positioning. GitHub Copilot enterprise AI Controls reinforce the broader trend, but remain tied to GitHub's own agent suite.

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

This layer still mixes local interactive agents with remote or background agents that can research, plan, edit, review, integrate external context, and run on schedules or triggers.

### Vendor agent harnesses and customization surfaces

- Codex SDK and Codex automations
- Claude Agent SDK
- GitHub custom agents

Product-native agent harnesses remain a credible alternative to starting from a general-purpose framework, especially when teams want repo-configurable behavior, built-in integrations, or vendor-managed execution.

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

The practical open stack still spans tool connectivity, editor integration, agent-to-agent exchange, agent-to-UI interaction, and repo-local guidance.

### Outcome framing and product discovery

- Outcome-driven development terminology
- Jira Product Discovery

This remains the vocabulary and product-planning slice, not the same thing as an agent control plane.

### Software-production control and execution planes

- JetBrains Central

JetBrains Central remains the clearest open-system entrant for running, monitoring, governing, and routing agent work across tools and infrastructure.

### Enterprise agent governance and control planes

- Microsoft Agent 365
- GitHub Copilot enterprise agent management

This is the material update. Microsoft Agent 365, announced on 2026-03-09 and scheduled for general availability on 2026-05-01, is now an explicit cross-agent governance surface for observing, governing, and securing agents across an organization. GitHub is also adding enterprise policy, session, and audit surfaces around its own agent suite.

## Current Conclusion

The strongest correction is at the steering layer. The observatory should no longer treat agent control as mainly a JetBrains Central-style entrant plus vague overlap from coding-agent products. As of 2026-04-29, the practical landscape is better understood as three adjacent but distinct slices: outcome framing and product discovery, open-system software-production control and execution, and enterprise agent governance control planes. JetBrains Central still anchors the middle slice. Microsoft Agent 365 is now the clearest new entrant in the last slice, and GitHub Copilot enterprise AI Controls reinforce the broader trend that governance surfaces are becoming first-class products rather than side features.

## Sources

- 2026-04-29 access: [Spec Kit](https://github.github.com/spec-kit/index.html)
- 2026-04-29 access: [OpenSpec](https://openspec.dev/)
- 2026-04-29 access: [Kiro Specs](https://kiro.dev/docs/specs/)
- 2026-04-29 access: [Kiro Bugfix Specs](https://kiro.dev/docs/specs/bugfix-specs/)
- 2026-04-16 publication: [Codex for (almost) everything](https://openai.com/index/codex-for-almost-everything/)
- 2026-04-29 access: [Codex SDK](https://developers.openai.com/codex/sdk)
- 2026-04-13 to 2026-04-17 release week: [Claude Code week 16 updates](https://code.claude.com/docs/en/whats-new/2026-w16)
- 2026-04-29 access: [Claude Agent SDK](https://code.claude.com/docs/en/agent-sdk)
- 2026-04-29 access: [GitHub Copilot agent concepts](https://docs.github.com/en/copilot/concepts/agents)
- 2026-04-29 access: [GitHub custom agents](https://docs.github.com/en/copilot/concepts/agents/coding-agent/about-custom-agents)
- 2026-04-29 access: [GitHub enterprise agent management](https://docs.github.com/en/copilot/concepts/agents/enterprise-management)
- 2026-04-29 access: [Jules scheduled tasks](https://jules.google/docs/scheduled-tasks/)
- 2026-04-29 access: [OpenHands IDE overview](https://docs.openhands.dev/openhands/usage/cli/ide/overview)
- 2026-04-29 access: [LangGraph overview](https://docs.langchain.com/oss/python/langgraph)
- 2026-04-29 access: [Deep Agents overview](https://docs.langchain.com/oss/python/deepagents/overview)
- 2026-04-29 access: [OpenAI Agents SDK](https://platform.openai.com/docs/guides/agents-sdk)
- 2026-04-29 access: [Google ADK technical overview](https://adk.dev/get-started/about/)
- 2026-02-20 update accessed 2026-04-29: [Microsoft Agent Framework overview](https://learn.microsoft.com/en-us/agent-framework/overview/)
- 2026-04-29 access: [MCP specification 2025-11-25](https://modelcontextprotocol.io/specification/2025-11-25/basic)
- 2026-04-29 access: [ACP overview](https://agentclientprotocol.com/protocol/overview)
- 2026-04-29 access: [A2A Protocol v1.0 announcement](https://a2a-protocol.org/latest/announcing-1.0/)
- 2026-04-29 access: [AG-UI overview](https://docs.ag-ui.com/)
- 2026-04-29 access: [AGENTS.md](https://agents.md/)
- 2026-03-24 publication: [Introducing JetBrains Central](https://blog.jetbrains.com/blog/2026/03/24/introducing-jetbrains-central-an-open-system-for-agentic-software-development/)
- 2026-03-09 publication: [Introducing the First Frontier Suite built on Intelligence + Trust](https://blogs.microsoft.com/blog/2026/03/09/introducing-the-first-frontier-suite-built-on-intelligence-trust/)
- 2026-04-29 access: [Microsoft Agent 365 documentation](https://learn.microsoft.com/en-us/microsoft-agent-365/)
- 2026-04-29 access: [Microsoft Agent 365 product page](https://www.microsoft.com/en-us/microsoft-agent-365)
- 2026-04-29 access: [Outcome Driven Development](https://www.atlassian.com/software-development/practices/outcome-driven-development)
- 2026-04-29 access: [Jira Product Discovery](https://www.atlassian.com/en/software/jira/product-discovery)
<!-- state-of-the-art:managed:end -->
