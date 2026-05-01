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

2026-05-01

## Scope

This document tracks the state of the art for:

- spec-driven development
- outcome-driven development
- coding-agent execution
- vendor agent harnesses and customization surfaces
- orchestration and interoperability
- software portfolio, project steering, and agent control planes

## Current View

As of 2026-05-01, the practical stack is still distributed across layers rather than consolidated into one dominant end-to-end product. The steering-layer split added on 2026-04-29 still holds, and the middle-layer boundary correction added on 2026-04-30 still holds, but the coding-agent tier now needs one material correction.

- Spec-first workflow tools still define the repo-local planning layer. Spec Kit, OpenSpec, and Kiro continue to cover greenfield feature work, repo-native living specs, brownfield iteration, and explicit bugfix flows.
- Coding-agent execution is now better described as a six-tool first tier. Codex, Claude Code, GitHub Copilot cloud agent, Jules, Junie, and OpenHands define the practical set to watch.
- Junie is the new material addition. JetBrains now presents Junie as a standalone, LLM-agnostic coding agent across terminal, IDEs, GitHub, GitLab, Air, and Zed, with planning, custom subagents, agent skills, `AGENTS.md`-based guidance, MCP integration, human-in-the-loop control, and a dedicated code review agent. The practical inference is that JetBrains no longer belongs only in the steering/control-plane layer.
- A separate vendor-harness layer still deserves first-class treatment. OpenAI, Anthropic, and GitHub still make the pattern clear: major coding-agent products increasingly expose programmable SDKs plus repo-configurable customization surfaces.
- The next layer is still not well described as one flat `agent runtimes and frameworks` bucket. LangGraph remains the low-level orchestration runtime. Deep Agents remains an opinionated harness on top of LangGraph. OpenAI's broader agent surface now explicitly spans an upgraded Agents SDK, Agent Builder, ChatKit, and evaluation surfaces. Google ADK similarly remains a build, manage, evaluate, and deploy environment. Microsoft Agent Framework remains the clearest code-first framework with an explicit agent-versus-workflow split.
- The interoperability layer is still best understood across five open boundaries: MCP for model-to-tool and context connectivity, ACP for editor-to-agent integration, A2A for agent-to-agent communication, AG-UI for agent-to-UI interaction, and `AGENTS.md` for repo-local agent guidance.
- The steering layer split remains correct. Outcome framing and product discovery stay distinct from open-system software-production control and execution, which in turn stay distinct from enterprise agent governance. JetBrains Central remains the clearest open-system software-production control and execution entrant. The practical inference now is that JetBrains spans both execution through Junie and higher-level coordination through Central and Air. Microsoft Agent 365 and GitHub Copilot enterprise AI Controls remain the clearest governance surfaces to watch.

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
- Junie
- OpenHands

This layer still mixes local interactive agents with remote or background agents that can research, plan, edit, review, remember repo context, and run on schedules or triggers. Junie is the new material addition because JetBrains now ships it as a cross-environment agent rather than only an IDE-adjacent assistant.

### Vendor agent harnesses and customization surfaces

- OpenAI agent SDK surfaces
- Claude Agent SDK
- GitHub Copilot SDK
- GitHub custom agents

The practical pattern still holds: the main coding-agent vendors increasingly expose programmable harnesses, reusable skills or customization layers, and repo-configurable guidance rather than only end-user chat surfaces.

### General agent build surfaces, runtimes, and harnesses

- LangGraph
- Deep Agents
- OpenAI agent build surface
- Google ADK
- Microsoft Agent Framework

This layer still needs an internal split. LangGraph is the low-level orchestration runtime. Deep Agents is a higher-level harness on top of that runtime. OpenAI's agent build surface and Google ADK are broader build, deployment, and evaluation environments. Microsoft Agent Framework remains a code-first framework that makes workflow orchestration an explicit alternative to autonomous-agent execution.

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

JetBrains Central remains the clearest open-system entrant for running, monitoring, governing, and routing agent work across tools and infrastructure. The practical refinement is that JetBrains should now be read across two layers: Junie at execution, Central and Air above it.

### Enterprise agent governance and control planes

- Microsoft Agent 365
- GitHub Copilot enterprise agent management

These remain the clearest governance surfaces for observing, governing, and securing agents across an organization.

## Current Conclusion

The strongest new correction is at the boundary between execution and steering. As of 2026-05-01, JetBrains should no longer be tracked only as a control-plane entrant: Junie now belongs in the first-tier coding-agent set, while Central and Air remain the higher control-and-coordination surfaces above it. The existing middle-layer split still holds, but the observatory should now read JetBrains as spanning both coding-agent execution and software-production control rather than only the latter.

## Sources

- 2026-05-01 access: [Spec Kit](https://github.github.com/spec-kit/index.html)
- 2026-05-01 access: [OpenSpec](https://openspec.dev/)
- 2026-05-01 access: [Kiro Specs](https://kiro.dev/docs/specs/)
- 2026-04-16 publication: [Codex for (almost) everything](https://openai.com/index/codex-for-almost-everything/)
- 2026-04-15 publication: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- 2026-05-01 access: [OpenAI Agents SDK](https://developers.openai.com/api/docs/guides/agents)
- 2026-05-01 access: [Agent Builder](https://developers.openai.com/api/docs/guides/agent-builder)
- 2026-04-20 to 2026-04-24 publication: [Claude Code week 17 updates](https://code.claude.com/docs/en/whats-new/2026-w17)
- 2026-05-01 access: [Claude Agent SDK overview](https://code.claude.com/docs/en/agent-sdk/overview)
- 2026-05-01 access: [About GitHub Copilot coding agent](https://docs.github.com/en/copilot/concepts/coding-agent/coding-agent)
- 2026-05-01 access: [GitHub Copilot SDK custom agents and sub-agent orchestration](https://docs.github.com/en/copilot/how-tos/copilot-sdk/use-copilot-sdk/custom-agents)
- 2026-05-01 access: [GitHub enterprise agent management](https://docs.github.com/en/copilot/concepts/agents/enterprise-management)
- 2026-05-01 access: [Jules scheduled tasks](https://jules.google/docs/scheduled-tasks/)
- 2026-03 publication, accessed 2026-05-01: [Junie CLI beta](https://blog.jetbrains.com/junie/2026/03/junie-cli-the-llm-agnostic-coding-agent-is-now-in-beta/)
- 2026-05-01 access: [Junie](https://junie.jetbrains.com/)
- 2026-04-29 publication, accessed 2026-05-01: [Junie code review agent](https://junie.jetbrains.com/docs/junie-review-agent.html)
- 2026-04-29 publication, accessed 2026-05-01: [Junie guidelines and memory](https://junie.jetbrains.com/docs/guidelines-and-memory.html)
- 2026-05-01 access: [Junie custom subagents](https://junie.jetbrains.com/docs/junie-cli-subagents.html)
- 2026-05-01 access: [Junie agent skills](https://junie.jetbrains.com/docs/agent-skills.html)
- 2026-05-01 access: [OpenHands IDE overview](https://docs.openhands.dev/openhands/usage/cli/ide/overview)
- 2026-05-01 access: [LangGraph overview](https://docs.langchain.com/oss/python/langgraph)
- 2026-05-01 access: [Deep Agents overview](https://docs.langchain.com/oss/python/deepagents/overview)
- 2026-05-01 access: [Google ADK technical overview](https://adk.dev/get-started/about/)
- 2026-02-20 last updated, accessed 2026-05-01: [Microsoft Agent Framework overview](https://learn.microsoft.com/en-us/agent-framework/overview/)
- 2026-05-01 access: [MCP specification 2025-11-25](https://modelcontextprotocol.io/specification/2025-11-25)
- 2026-05-01 access: [ACP introduction](https://agentclientprotocol.com/get-started/introduction)
- 2026-05-01 access: [A2A v1.0 announcement](https://a2a-protocol.org/latest/announcing-1.0/)
- 2026-05-01 access: [AG-UI overview](https://docs.ag-ui.com/introduction)
- 2026-05-01 access: [AGENTS.md](https://agents.md/)
- 2026-03-24 publication: [Introducing JetBrains Central](https://blog.jetbrains.com/blog/2026/03/24/introducing-jetbrains-central-an-open-system-for-agentic-software-development/)
- 2026-03-13 last updated, accessed 2026-05-01: [Microsoft Agent 365 overview](https://learn.microsoft.com/en-us/microsoft-agent-365/overview)
- 2026-05-01 access: [Outcome Driven Development](https://www.atlassian.com/software-development/practices/outcome-driven-development)
- 2026-05-01 access: [About Jira Product Discovery](https://support.atlassian.com/jira-product-discovery/docs/about-jira-product-discovery/)
<!-- state-of-the-art:managed:end -->
