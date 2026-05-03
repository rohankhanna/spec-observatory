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

2026-05-03

## Scope

This document tracks the state of the art for:

- spec-driven development
- outcome-driven development
- coding-agent execution
- vendor agent harnesses and customization surfaces
- general agent build, deploy, runtime, and operating surfaces
- orchestration and interoperability
- software portfolio and project steering
- agent governance and control planes

## Current View

As of 2026-05-03, the stack is still layered rather than consolidated into one end-to-end winner. The 2026-04-29 steering-layer split and the 2026-04-30 middle-layer correction still hold, but fresh official Google material creates a material correction: Google no longer fits mainly as `ADK as a build environment`.

- Spec-first workflow tools still define the planning layer. Spec Kit, OpenSpec, and Kiro continue to cover greenfield work, repo-native living specs, and structured brownfield or bugfix flows.
- The first-tier coding-agent set still includes Codex, Claude Code, GitHub Copilot cloud agent, Jules, Junie, and OpenHands. Fresh official Google evidence now makes Gemini CLI hard to exclude from that same tier: it is a general terminal coding agent with built-in subagents and explicit remote A2A delegation.
- A separate vendor-harness layer still deserves first-class treatment. OpenAI, Anthropic, GitHub, and now Google expose programmable SDK, agent, plugin, and subagent surfaces rather than only end-user chat products.
- The biggest correction is the Google platform layer. Google now documents Gemini Enterprise Agent Platform as a unified platform to build, deploy, govern, and optimize enterprise-grade agents. ADK is only one component inside that stack, alongside Agent Studio, Agent Runtime, Agent Registry, Agent Identity, Agent Gateway, evaluation, observability, and optimization.
- The middle layer is therefore better understood as mixed platforms plus open runtimes beneath them. Microsoft Foundry Agent Service, AWS Bedrock AgentCore, and Google Gemini Enterprise Agent Platform are full managed operating platforms. LangGraph remains the clearest low-level runtime. Deep Agents remains a higher-level harness on top of LangGraph. Microsoft Agent Framework remains the clearest code-first framework with an explicit agent-versus-workflow split.
- Google also now deserves explicit mention in the enterprise distribution and management picture. Gemini Enterprise provides centralized oversight and lifecycle management for Google-built agents plus organization-built ADK and A2A agents, with Agent Designer and Agent Gallery as user-facing distribution surfaces.
- The interoperability layer still looks best across open boundaries rather than one winner-take-all standard. MCP remains the tool and context substrate. ACP remains the clearest editor-facing discovery surface. A2A v1.0 remains the clearest agent-to-agent standard. AG-UI remains the clearest agent-to-user protocol. `AGENTS.md` remains the main repo-local guidance surface.

## Notable Categories

### Spec-first workflow

- Spec Kit
- OpenSpec
- Kiro Specs

### Coding-agent execution and supervision

- Codex
- Claude Code
- GitHub Copilot cloud agent
- Gemini CLI
- Jules
- Junie
- OpenHands

### Vendor agent harnesses and customization surfaces

- OpenAI Agents SDK
- Claude Agent SDK and Claude Code routines/plugins
- GitHub Copilot custom agents
- Google Agents CLI and Gemini CLI subagents

### General agent build, deploy, runtime, and operating surfaces

- LangGraph
- Deep Agents
- Microsoft Agent Framework
- Microsoft Foundry Agent Service
- AWS Bedrock AgentCore
- Google Gemini Enterprise Agent Platform

### Interoperability and coordination surfaces

- MCP
- ACP
- A2A
- AG-UI
- AGENTS.md

### Outcome framing and product discovery

- Outcome-driven development terminology
- Jira Product Discovery

### Software-production control and execution planes

- JetBrains Central

### Enterprise agent governance and control planes

- Microsoft Agent 365
- GitHub Copilot AI Controls
- Gemini Enterprise

## Current Conclusion

The material update is a Google correction, not a new protocol and not a displacement of AWS or Microsoft. As of 2026-05-03, it is no longer accurate to represent Google mainly through ADK or Jules. The current picture is a layered ecosystem in which Google now spans Gemini CLI at the coding-agent layer, Agents CLI and ADK at the build layer, Gemini Enterprise Agent Platform at the managed operating-platform layer, and Gemini Enterprise at the enterprise distribution and management layer. The observatory's current repo shape already accommodates that layered model, so the bounded change for this run is the report itself.

## Sources

- 2026-05-03 access: [Spec Kit](https://github.github.com/spec-kit/index.html)
- 2026-05-03 access: [OpenSpec](https://openspec.dev/)
- 2026-05-03 access: [Kiro Specs](https://kiro.dev/docs/specs/)
- 2026-04-16 publication, accessed 2026-05-03: [Codex for (almost) everything](https://openai.com/index/codex-for-almost-everything/)
- 2026-04-20 to 2026-04-24 publication, accessed 2026-05-03: [Claude Code week 17 updates](https://code.claude.com/docs/en/whats-new/2026-w17)
- 2026-05-03 access: [GitHub Copilot cloud agent](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/cloud-agent)
- 2026-05-03 access: [Gemini CLI get started](https://github.com/google-gemini/gemini-cli/blob/main/docs/get-started/index.md)
- 2026-04-15 publication, accessed 2026-05-03: [Subagents have arrived in Gemini CLI](https://developers.googleblog.com/subagents-have-arrived-in-gemini-cli/)
- 2026-04-22 publication, accessed 2026-05-03: [Agents CLI in Agent Platform](https://developers.googleblog.com/agents-cli-in-agent-platform-create-to-production-in-one-cli/)
- 2026-05-01 last updated, accessed 2026-05-03: [Gemini Enterprise Agent Platform overview](https://docs.cloud.google.com/gemini-enterprise-agent-platform/overview)
- 2026-05-03 access: [ADK CLI reference](https://google.github.io/adk-docs/api-reference/cli/cli.html)
- 2026-05-01 last updated, accessed 2026-05-03: [Gemini Enterprise agents overview](https://docs.cloud.google.com/gemini/enterprise/docs/agents-overview)
- 2026-05-01 last updated, accessed 2026-05-03: [Agent Designer overview](https://docs.cloud.google.com/gemini/enterprise/docs/agent-designer)
- 2026-02-20 last updated, accessed 2026-05-03: [Microsoft Agent Framework overview](https://learn.microsoft.com/en-us/agent-framework/overview/)
- 2026-03-13 last updated, accessed 2026-05-03: [Microsoft Foundry Agent Service overview](https://learn.microsoft.com/azure/ai-foundry/agents/overview)
- 2026-04-22 publication, accessed 2026-05-03: [Amazon Bedrock AgentCore adds new features](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- 2026-04-30 publication, accessed 2026-05-03: [Amazon Bedrock AgentCore optimization preview](https://aws.amazon.com/about-aws/whats-new/2026/05/bedrock-agentcore-optimization-preview/)
- 2026-04-28 publication, accessed 2026-05-03: [Amazon Bedrock now offers OpenAI models, Codex, and Managed Agents](https://aws.amazon.com/about-aws/whats-new/2026/04/bedrock-openai-models-codex-managed-agents/)
- 2026-03-09 publication, accessed 2026-05-03: [ACP Registry is stabilized](https://agentclientprotocol.com/announcements/acp-agent-registry-stabilized)
- 2026-05-03 access: [A2A v1.0 announcement](https://a2a-protocol.org/latest/announcing-1.0/)
- 2026-05-03 access: [AG-UI overview](https://docs.ag-ui.com/)
- 2026-05-03 access: [AGENTS.md](https://agents.md/)
- 2026-03-24 publication, accessed 2026-05-03: [Introducing JetBrains Central](https://blog.jetbrains.com/blog/2026/03/24/introducing-jetbrains-central-an-open-system-for-agentic-software-development/)
- 2026-05-03 access: [GitHub enterprise agent management](https://docs.github.com/en/copilot/concepts/agents/enterprise-management)
- 2026-03-13 last updated, accessed 2026-05-03: [Microsoft Agent 365 overview](https://learn.microsoft.com/en-us/microsoft-agent-365/overview)
<!-- state-of-the-art:managed:end -->
