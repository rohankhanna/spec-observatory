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

2026-05-02

## Scope

This document tracks the state of the art for:

- spec-driven development
- outcome-driven development
- coding-agent execution
- vendor agent harnesses and customization surfaces
- general agent build, deploy, runtime, and operating surfaces
- orchestration and interoperability
- software portfolio, project steering, and agent control planes

## Current View

As of 2026-05-02, the practical stack is still distributed across layers rather than consolidated into one dominant end-to-end product. The 2026-04-29 steering-layer split still holds, and the 2026-04-30 middle-layer boundary correction still holds, but the middle layer now needs a stronger rewrite because major vendors are shipping full agent build, deploy, and operating platforms rather than only runtimes and frameworks.

- Spec-first workflow tools still define the repo-local planning layer. Spec Kit, OpenSpec, and Kiro continue to cover greenfield feature work, repo-native living specs, brownfield iteration, and explicit bugfix flows.
- The first-tier coding-agent set still reads as Codex, Claude Code, GitHub Copilot cloud agent, Jules, Junie, and OpenHands. No newly researched entrant displaced that practical tier in this review.
- A separate vendor-harness layer still deserves first-class treatment. OpenAI, Anthropic, and GitHub continue to expose programmable SDKs plus repo-configurable customization surfaces rather than only end-user chat products.
- The biggest correction is now in the general agent platform layer. It is no longer credible to summarize that layer mainly as `agent runtimes and frameworks`. Microsoft Foundry Agent Service and AWS Bedrock AgentCore are full build, deploy, observe, evaluate, and publish platforms. LangGraph remains the low-level runtime. Deep Agents remains a higher-level harness on top of LangGraph. Microsoft Agent Framework remains the clearest code-first framework with an explicit agent-versus-workflow split. OpenAI's broader agent surface and Google ADK remain important build environments, but the practical picture is now a mixed layer of runtimes, harnesses, frameworks, and managed operating platforms.
- AWS is the material new entrant in that layer. AgentCore now combines a managed harness, CLI, MCP server, registry, coding-assistant skills, and evaluation-plus-optimization surfaces. AWS and OpenAI also now position Bedrock as a distribution and operating surface for OpenAI models, Codex, and Managed Agents powered by OpenAI.
- The interoperability layer is still best understood across open boundaries rather than one winner-take-all standard. MCP remains the tool and context substrate. ACP now has a stabilized registry for distributing compatible agents across editors. A2A v1.0 remains the clearest agent-to-agent standard. AG-UI remains the clearest agent-to-user interaction protocol. `AGENTS.md` remains the main repo-local guidance surface.
- The steering-layer split remains correct. Outcome framing and product discovery stay distinct from software-production control and execution, which in turn stay distinct from enterprise agent governance. JetBrains Central remains a key open-system software-production control entrant. GitHub AI Controls and Microsoft Agent 365 remain the clearest enterprise governance surfaces.

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

This layer still mixes local interactive agents with remote or background agents that can research, plan, edit, review, remember repo context, and run on schedules or triggers.

### Vendor agent harnesses and customization surfaces

- OpenAI Agents SDK
- Claude Agent SDK and Claude Code routines
- GitHub Copilot SDK and custom agents

The practical pattern still holds: the main coding-agent vendors increasingly expose programmable harnesses, reusable skills or customization layers, and repo-configurable guidance rather than only end-user chat surfaces.

### General agent build, deploy, runtime, and operating surfaces

- LangGraph
- Deep Agents
- OpenAI agent surface
- Google ADK
- Microsoft Agent Framework
- Microsoft Foundry Agent Service
- AWS Bedrock AgentCore

This layer now needs an explicit internal split. LangGraph is the low-level runtime. Deep Agents is a harness on top of that runtime. Microsoft Agent Framework is a code-first framework. OpenAI's broader agent surface, Google ADK, Microsoft Foundry Agent Service, and AWS Bedrock AgentCore increasingly act as broader build, deploy, and operating environments.

### Interoperability and coordination surfaces

- MCP
- ACP
- A2A
- AG-UI
- AGENTS.md

The practical open stack still spans tool connectivity, editor integration, agent-to-agent exchange, agent-to-user interaction, and repo-local guidance.

### Outcome framing and product discovery

- Outcome-driven development terminology
- Jira Product Discovery

This remains the vocabulary and product-planning slice, not the same thing as an agent control plane.

### Software-production control and execution planes

- JetBrains Central

JetBrains Central remains a key open-system entrant for running, monitoring, governing, and routing agent work across tools and infrastructure.

### Enterprise agent governance and control planes

- Microsoft Agent 365
- GitHub Copilot AI Controls

These remain the clearest governance surfaces for observing, governing, and securing agents across an organization.

## Current Conclusion

The material update is not a new first-tier coding agent. It is a stronger boundary correction in the layer above them. As of 2026-05-02, the observatory should explicitly track general agent build, deploy, runtime, and operating surfaces rather than implying a mostly framework-shaped middle layer. AWS Bedrock AgentCore is now a first-class entrant there, Microsoft Foundry Agent Service reinforces the same platform pattern, and AWS/OpenAI Bedrock distribution makes the stack look even more like a layered ecosystem of coding agents, vendor harnesses, open protocols, and managed operating platforms.

## Sources

- 2026-05-02 access: [Spec Kit](https://github.github.com/spec-kit/index.html)
- 2026-05-02 access: [OpenSpec](https://openspec.dev/)
- 2026-05-02 access: [Kiro Specs](https://kiro.dev/docs/specs/)
- 2026-04-16 publication: [Codex for (almost) everything](https://openai.com/index/codex-for-almost-everything/)
- 2026-05-02 access: [OpenAI Agents SDK](https://developers.openai.com/api/docs/guides/agents)
- 2026-04-13 to 2026-04-17 publication: [Claude Code week 16 updates](https://code.claude.com/docs/en/whats-new/2026-w16)
- 2026-05-02 access: [GitHub Copilot cloud agent](https://docs.github.com/en/copilot/concepts/agents/cloud-agent/about-cloud-agent)
- 2026-05-02 access: [GitHub Copilot SDK custom agents](https://docs.github.com/en/copilot/how-tos/copilot-sdk/use-copilot-sdk/custom-agents)
- 2026-05-02 access: [Jules scheduled tasks](https://jules.google/docs/scheduled-tasks/)
- 2026-05-02 access: [Junie](https://junie.jetbrains.com/)
- 2026-05-02 access: [OpenHands IDE overview](https://docs.openhands.dev/openhands/usage/cli/ide/overview)
- 2026-05-02 access: [Deep Agents overview](https://docs.langchain.com/oss/python/deepagents/overview)
- 2026-05-02 access: [Google ADK](https://adk.dev/)
- 2026-05-02 access: [Microsoft Agent Framework overview](https://learn.microsoft.com/en-us/agent-framework/overview/)
- 2026-04-28 last updated, accessed 2026-05-02: [Microsoft Foundry Agent Service overview](https://learn.microsoft.com/en-us/azure/foundry/agents/overview?view=foundry-classic)
- 2026-04-22 publication: [Amazon Bedrock AgentCore adds new features](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- 2026-04-30 publication: [Amazon Bedrock AgentCore optimization preview](https://aws.amazon.com/about-aws/whats-new/2026/05/bedrock-agentcore-optimization-preview/)
- 2026-04-28 publication: [Amazon Bedrock now offers OpenAI models, Codex, and Managed Agents](https://aws.amazon.com/about-aws/whats-new/2026/04/bedrock-openai-models-codex-managed-agents/)
- 2026-05-02 access: [Amazon Bedrock AgentCore overview](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/what-is-bedrock-agentcore.html)
- 2026-05-02 access: [MCP specification](https://modelcontextprotocol.io/specification)
- 2026-05-02 access: [ACP introduction](https://agentclientprotocol.com/get-started/introduction)
- 2026-03-09 publication, accessed 2026-05-02: [ACP Registry is stabilized](https://agentclientprotocol.com/announcements/acp-agent-registry-stabilized)
- 2026-05-02 access: [A2A v1.0 announcement](https://a2a-protocol.org/latest/announcing-1.0/)
- 2026-05-02 access: [AG-UI overview](https://docs.ag-ui.com/introduction)
- 2026-05-02 access: [AGENTS.md](https://agents.md/)
- 2026-03-24 publication: [Introducing JetBrains Central](https://blog.jetbrains.com/blog/2026/03/24/introducing-jetbrains-central-an-open-system-for-agentic-software-development/)
- 2026-05-02 access: [GitHub enterprise agent management](https://docs.github.com/en/copilot/concepts/agents/enterprise-management)
- 2026-03-13 last updated, accessed 2026-05-02: [Microsoft Agent 365 overview](https://learn.microsoft.com/en-us/microsoft-agent-365/overview)
- 2026-05-02 access: [Outcome Driven Development](https://www.atlassian.com/software-development/practices/outcome-driven-development)
- 2026-05-02 access: [What is Jira Product Discovery?](https://support.atlassian.com/jira-product-discovery/docs/what-is-jira-product-discovery/)
<!-- state-of-the-art:managed:end -->
