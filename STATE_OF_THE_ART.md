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

2026-04-30

## Scope

This document tracks the state of the art for:

- spec-driven development
- outcome-driven development
- coding-agent execution
- vendor agent harnesses and customization surfaces
- orchestration and interoperability
- software portfolio, project steering, and agent control planes

## Current View

As of 2026-04-30, the practical stack is still distributed across layers rather than consolidated into one dominant end-to-end product. The steering-layer split added on 2026-04-29 still holds, but the layer beneath it needs a material correction.

- Spec-first workflow tools still define the repo-local planning layer. Spec Kit, OpenSpec, and Kiro continue to cover greenfield feature work, repo-native living specs, brownfield iteration, and explicit bugfix flows.
- Coding-agent execution remains a broad first tier. Codex, Claude Code, GitHub Copilot cloud agent, Jules, and OpenHands still define the practical set to watch. Product movement continues toward background or scheduled execution, persistent repo context, and explicit review or supervision loops.
- A separate vendor-harness layer still deserves first-class treatment, but the current report understates GitHub's position in it. Codex SDK, Claude Agent SDK, GitHub Copilot SDK, and GitHub custom agents now make the pattern clearer: major coding-agent products increasingly expose programmable SDKs plus repo-configurable customization surfaces, not just end-user task UIs.
- The next layer is no longer well described as one flat `agent runtimes and frameworks` bucket. LangGraph remains the low-level orchestration runtime. Deep Agents is best understood as an opinionated harness on top of LangGraph. OpenAI's general agents docs now span a code-first SDK path plus hosted builder and chat-deployment surfaces, and Google ADK similarly positions itself around building, managing, evaluating, and deploying agents. Microsoft Agent Framework remains the clearest code-first framework with an explicit agent-versus-workflow split.
- The interoperability layer is still best understood across five open boundaries: MCP for model-to-tool and context connectivity, ACP for editor-to-agent integration, A2A for agent-to-agent communication, AG-UI for agent-to-UI interaction, and AGENTS.md for repo-local agent guidance.
- The steering layer split remains correct. Outcome framing and product discovery stay distinct from open-system software-production control and execution, which in turn stay distinct from enterprise agent governance. JetBrains Central remains the clearest open-system software-production control and execution entrant. Microsoft Agent 365 and GitHub Copilot enterprise AI Controls remain the clearest governance surfaces to watch.

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

This layer still mixes local interactive agents with remote or background agents that can research, plan, edit, review, remember repo context, and run on schedules or triggers.

### Vendor agent harnesses and customization surfaces

- Codex SDK and Codex automations
- Claude Agent SDK
- GitHub Copilot SDK
- GitHub custom agents

This is a material correction. GitHub now belongs in the same programmable harness set as OpenAI and Anthropic, not only in the repo-configurable custom-agent subset.

### General agent build surfaces, runtimes, and harnesses

- LangGraph
- Deep Agents
- OpenAI general agents surface
- Google ADK
- Microsoft Agent Framework

This layer now needs an internal split. LangGraph is the low-level orchestration runtime. Deep Agents is a higher-level harness on top of that runtime. OpenAI's general agents surface and Google ADK are broader build, deployment, and evaluation environments. Microsoft Agent Framework remains a code-first framework that makes workflow orchestration an explicit alternative to autonomous-agent execution.

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

These remain the clearest governance surfaces for observing, governing, and securing agents across an organization.

## Current Conclusion

The strongest new correction is below the steering layer. The observatory should no longer flatten general agent-building surfaces into one `frameworks` bucket or treat GitHub's harness layer as mainly custom-agent profiles. As of 2026-04-30, the more accurate picture is: coding-agent products; vendor-native harness and customization surfaces; a separate general layer that splits into low-level runtimes, higher-level harnesses, and broader build/deploy/evaluation surfaces; open interoperability protocols; and distinct steering and governance planes. The repo's current steering split still holds, but the middle of the stack should now be read with finer boundaries.

## Sources

- 2026-04-30 access: [Spec Kit](https://github.github.com/spec-kit/index.html)
- 2026-04-30 access: [OpenSpec](https://openspec.dev/)
- 2026-04-30 access: [Kiro Specs](https://kiro.dev/docs/specs/)
- 2026-04-16 publication: [Codex for (almost) everything](https://openai.com/index/codex-for-almost-everything/)
- 2026-04-30 access: [OpenAI agents docs](https://developers.openai.com/api/docs/guides/agents)
- 2026-04-30 access: [Codex SDK](https://developers.openai.com/codex/sdk)
- 2026-04-20 to 2026-04-24 publication: [Claude Code week 17 updates](https://code.claude.com/docs/en/whats-new/2026-w17)
- 2026-04-30 access: [Claude Agent SDK overview](https://code.claude.com/docs/en/agent-sdk/overview)
- 2026-04-30 access: [GitHub Copilot agents concepts](https://docs.github.com/en/copilot/concepts/agents)
- 2026-04-30 access: [GitHub Copilot SDK](https://docs.github.com/en/copilot/how-tos/copilot-sdk)
- 2026-04-30 access: [GitHub custom agents](https://docs.github.com/en/copilot/concepts/agents/coding-agent/about-custom-agents)
- 2026-04-30 access: [GitHub enterprise agent management](https://docs.github.com/en/copilot/concepts/agents/enterprise-management)
- 2026-04-30 access: [Jules scheduled tasks](https://jules.google/docs/scheduled-tasks/)
- 2026-04-30 access: [OpenHands IDE overview](https://docs.openhands.dev/openhands/usage/cli/ide/overview)
- 2026-04-30 access: [LangGraph overview](https://docs.langchain.com/oss/python/langgraph/overview)
- 2026-04-30 access: [Deep Agents overview](https://docs.langchain.com/oss/python/deepagents/overview)
- 2026-04-30 access: [Google ADK technical overview](https://adk.dev/get-started/about/)
- 2026-04-06 last updated page accessed 2026-04-30: [Microsoft Agent Framework overview](https://learn.microsoft.com/en-us/agent-framework/overview/)
- 2026-04-30 access: [MCP specification 2025-11-25](https://modelcontextprotocol.io/specification/2025-11-25/basic)
- 2026-04-30 access: [ACP overview](https://agentclientprotocol.com/protocol/overview)
- 2026-04-30 access: [A2A Protocol v1.0 announcement](https://a2a-protocol.org/latest/announcing-1.0/)
- 2026-04-30 access: [AG-UI overview](https://docs.ag-ui.com/introduction)
- 2026-04-30 access: [AGENTS.md](https://agents.md/)
- 2026-03-24 publication: [Introducing JetBrains Central](https://blog.jetbrains.com/blog/2026/03/24/introducing-jetbrains-central-an-open-system-for-agentic-software-development/)
- 2026-03-09 publication: [Secure agentic AI for your Frontier transformation](https://www.microsoft.com/en-us/security/blog/2026/03/09/secure-agentic-ai-for-your-frontier-transformation/)
- 2026-04-30 access: [Microsoft Agent 365 overview](https://learn.microsoft.com/en-us/microsoft-agent-365/overview)
- 2026-04-30 access: [Outcome Driven Development](https://www.atlassian.com/software-development/practices/outcome-driven-development)
- 2026-04-30 access: [Jira Product Discovery](https://support.atlassian.com/jira-product-discovery/docs/what-is-jira-product-discovery/)
<!-- state-of-the-art:managed:end -->
