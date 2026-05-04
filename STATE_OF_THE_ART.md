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

2026-05-04

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

As of 2026-05-04, the ecosystem is still layered rather than consolidated into one end-to-end winner. The planning-layer and Google-platform corrections recorded on 2026-05-03 still hold. The material update from fresh official research is a stronger cross-vendor abstraction: secure execution substrates for long-running or computer-using agents are now first-class operating surfaces, not just incidental features.

- Spec-first workflow tools still define the planning layer. Spec Kit, OpenSpec, and Kiro continue to cover greenfield scaffolding, repo-native living specs, and structured feature or bugfix workflows. OpenSpec still positions team workspaces as in-development, so the planning-layer conclusion does not change.
- The first-tier coding-agent set still includes Codex, Claude Code, GitHub Copilot cloud agent, Gemini CLI, Jules, Junie, and OpenHands. OpenAI's 2026-04-16 Codex update strengthens the claim that leading coding agents are moving beyond code editing into background computer use, browser use, multi-terminal work, and repeatable delegated work.
- The vendor harness layer still deserves first-class treatment. OpenAI's 2026-04-15 Agents SDK update adds a model-native harness and native sandbox execution. Claude Code continues to expose plugins, skills, agents, hooks, and MCP servers. GitHub continues to position custom agents and AI Controls as enterprise-managed customization surfaces. Google continues to span Gemini CLI, Agents CLI, and ADK.
- The clearest middle-layer correction is now cross-vendor rather than Google-only. AWS AgentCore's managed harness gives each session a microVM with filesystem and shell access. Google Gemini Enterprise Agent Platform now documents secure sandbox execution through Code Execution and Computer Use inside Agent Runtime. Microsoft now pairs Agent 365 with Windows 365 for Agents, explicitly calling Windows 365 the execution layer for computer-using agents. These are not just orchestration runtimes; they are managed operating platforms with attached execution substrates.
- Open runtimes and frameworks still matter beneath or beside those platforms. LangGraph remains the clearest low-level runtime in this research set. Deep Agents remains a higher-level harness on top of LangGraph. Microsoft Agent Framework remains the clearest code-first framework with an explicit agent-versus-workflow split.
- The interoperability layer still looks strongest across open boundaries rather than a single winner-take-all stack. MCP remains the tool and context substrate. ACP remains the clearest editor-facing discovery surface. A2A v1.0 remains the clearest agent-to-agent standard. AG-UI remains the clearest agent-to-user protocol. OpenAI's updated Agents SDK explicitly integrates MCP, skills, and `AGENTS.md`, and Google's managed platform explicitly supports LangGraph and A2A agents, which reinforces the open-boundary conclusion.
- Steering and governance remain split from coding and runtime execution. Jira Product Discovery remains the clearest product-discovery surface in this scope. JetBrains Central remains notable as a software-production control surface. GitHub Copilot AI Controls, Microsoft Agent 365, and Gemini Enterprise remain notable governance surfaces for enterprise agent rollout.

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

- OpenAI Agents SDK and Codex surfaces
- Claude Agent SDK and Claude Code plugins/subagents
- GitHub Copilot custom agents
- Google Agents CLI, ADK, and Gemini CLI subagents

### Managed agent operating platforms, runtimes, and execution substrates

- LangGraph
- Deep Agents
- Microsoft Agent Framework
- AWS Bedrock AgentCore
- Google Gemini Enterprise Agent Platform
- Windows 365 for Agents

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

- GitHub Copilot AI Controls
- Microsoft Agent 365
- Gemini Enterprise

## Current Conclusion

The material change for 2026-05-04 is a stronger abstraction boundary, not a new protocol or a replacement winner. The strongest vendor stacks now converge on the same shape: a coding or orchestration surface on top, a managed platform in the middle, and an explicit secure execution substrate underneath for shell work, sandboxed code execution, or full desktop action. OpenAI's updated Agents SDK and Codex, AWS AgentCore, Google Gemini Enterprise Agent Platform, and Microsoft Agent 365 plus Windows 365 for Agents make that pattern clear enough that the report should say it directly. The repository's current managed shape already fits that picture, so the bounded update for this run is the report only.

## Sources

- 2026-05-04 access: [Spec Kit](https://github.github.com/spec-kit/index.html)
- 2026-05-04 access: [OpenSpec](https://openspec.dev/)
- 2026-02-18 page update, accessed 2026-05-04: [Kiro Specs](https://kiro.dev/docs/specs/)
- 2026-04-16 publication, accessed 2026-05-04: [Codex for (almost) everything](https://openai.com/index/codex-for-almost-everything/)
- 2026-04-15 publication, accessed 2026-05-04: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- 2026-05-04 access: [Claude Code Agent SDK plugins](https://code.claude.com/docs/en/agent-sdk/plugins)
- 2026-05-04 access: [GitHub Copilot cloud agent](https://docs.github.com/en/copilot/concepts/agents/cloud-agent/about-cloud-agent)
- 2026-05-04 access: [GitHub agent management for enterprises](https://docs.github.com/en/copilot/concepts/agents/enterprise-management)
- 2026-05-04 access: [Gemini CLI get started](https://github.com/google-gemini/gemini-cli/blob/main/docs/get-started/index.md)
- 2026-04-22 publication, accessed 2026-05-04: [Agents CLI in Agent Platform](https://developers.googleblog.com/agents-cli-in-agent-platform-create-to-production-in-one-cli/)
- 2026-05-04 access: [ADK CLI reference](https://google.github.io/adk-docs/api-reference/cli/cli.html)
- 2026-04-22 publication, accessed 2026-05-04: [Amazon Bedrock AgentCore adds new features to help developers build agents faster](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- 2026-04-22 last updated, accessed 2026-05-04: [Scale your agents](https://docs.cloud.google.com/gemini-enterprise-agent-platform/scale)
- 2026-02-20 last updated, accessed 2026-05-04: [Microsoft Agent Framework overview](https://learn.microsoft.com/en-us/agent-framework/overview/)
- 2026-05-04 access: [LangGraph overview](https://docs.langchain.com/langgraph)
- 2026-05-04 access: [Deep Agents overview](https://docs.langchain.com/oss/python/deepagents/overview)
- 2026-03-09 publication, accessed 2026-05-04: [Introducing the First Frontier Suite built on Intelligence + Trust](https://blogs.microsoft.com/blog/2026/03/09/introducing-the-first-frontier-suite-built-on-intelligence-trust/)
- 2026-05-01 last updated, accessed 2026-05-04: [Windows 365 for Agents in Agent 365](https://learn.microsoft.com/en-us/windows-365/agents/w365a-availability-a365)
- 2026-05-04 access: [OpenHands](https://openhands.dev/)
- 2026-05-04 access: [Jules getting started](https://jules.google/docs/)
- 2026-05-04 access: [Junie](https://junie.jetbrains.com/)
- 2026-05-04 access: [Model Context Protocol overview](https://modelcontextprotocol.io/)
- 2026-03-09 publication, accessed 2026-05-04: [ACP Registry is stabilized](https://agentclientprotocol.com/announcements/acp-agent-registry-stabilized)
- 2026-05-04 access: [A2A v1.0 announcement](https://a2a-protocol.org/latest/announcing-1.0/)
- 2026-05-04 access: [AG-UI overview](https://docs.ag-ui.com/introduction)
- 2026-05-04 access: [AGENTS.md](https://agents.md/)
- 2026-05-04 access: [Jira Product Discovery](https://www.atlassian.com/software/jira/product-discovery)
- 2026-03-24 publication, accessed 2026-05-04: [Introducing JetBrains Central](https://blog.jetbrains.com/blog/2026/03/24/introducing-jetbrains-central-an-open-system-for-agentic-software-development/)
<!-- state-of-the-art:managed:end -->
