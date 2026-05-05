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

2026-05-05

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

As of 2026-05-05, the ecosystem is still layered rather than consolidated into one end-to-end winner. The material correction from fresh official research is not another protocol change. It is a stronger cross-vendor composition boundary: leading agent stacks are becoming deployable through other vendors' operating and governance layers, not just converging on similar shapes inside separate silos.

- Spec-first workflow tools still define the planning layer. Spec Kit, OpenSpec, and Kiro continue to cover greenfield scaffolding, repo-native living specs, and structured feature or bugfix workflows. OpenSpec still positions workspaces as in development, so the planning-layer conclusion does not change.
- The first-tier coding-agent set still includes Codex, Claude Code, GitHub Copilot cloud agent, Gemini CLI, Jules, Junie, and OpenHands. The material change is distribution: OpenAI now positions Codex as runnable through Amazon Bedrock with AWS credentials, billing, and governance, so frontier coding agents are no longer cleanly tied to their home vendor surfaces.
- Vendor harnesses and customization surfaces still deserve first-class treatment. OpenAI continues to expose a model-native Agents SDK with memory, MCP, skills, `AGENTS.md`, and native sandbox execution. Claude Code continues to expose plugins, skills, agents, hooks, and MCP servers. GitHub continues to position cloud agents, custom agents, and AI Controls as enterprise-managed surfaces. Google continues to span Gemini CLI, Agents CLI, ADK, and Agent Platform. AWS now also belongs in this layer directly through AgentCore's managed harness, CLI, and skills, plus Amazon Bedrock Managed Agents powered by OpenAI.
- The middle layer is now better understood as a managed agent operating platform, not just a runtime with attached sandboxes. AWS pairs OpenAI-powered managed agents with Bedrock and AgentCore. Google Agent Platform combines runtime, memory, evaluation, and secure sandbox execution. OpenAI's Agents SDK adds a portable workspace manifest across multiple sandbox providers. The stronger abstraction is hostable agent operating platforms that can carry first-party or cross-vendor agent layers.
- Continuous improvement is becoming part of that same platform layer. Google Agent Platform explicitly includes evaluation services in its production surface, and AWS AgentCore now adds recommendations, batch evaluations, and A/B tests. The practical platform is increasingly an observe/evaluate/improve surface, not only a place to run long-lived agents.
- Interoperability still looks strongest across open boundaries. MCP remains the tool and context substrate. A2A v1.0 remains the clearest agent-to-agent standard. `AGENTS.md` remains the clearest lightweight repo-local instruction surface. MCP Apps is now worth tracking as an official UI extension because it lets one MCP tool ship interactive experiences across multiple clients, which slightly softens the boundary between tool/context protocols and user-interface protocols without displacing AG-UI outright.
- Governance and control planes are also becoming more cross-vendor. GitHub AI Controls remains an enterprise surface for Copilot agents. Microsoft Agent 365 is now generally available and explicitly adds registry sync with AWS Bedrock and Google Cloud, which makes cross-cloud agent inventory and governance part of the live landscape. JetBrains Central remains notable as a software-production control and execution plane.

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
- GitHub Copilot custom agents and AI Controls
- Google Agents CLI, ADK, and Gemini CLI subagents
- Amazon Bedrock Managed Agents powered by OpenAI
- Amazon Bedrock AgentCore managed harness, CLI, and skills

### Managed agent operating platforms, runtimes, execution, and improvement surfaces

- AWS Bedrock and AgentCore
- Google Gemini Enterprise Agent Platform
- Windows 365 for Agents
- LangGraph
- Deep Agents
- Microsoft Agent Framework

### Interoperability and coordination surfaces

- MCP
- MCP Apps
- A2A
- AG-UI
- `AGENTS.md`

### Outcome framing and product discovery

- outcome-driven development terminology
- Jira Product Discovery

### Software-production control and execution planes

- JetBrains Central

### Enterprise agent governance and control planes

- GitHub Copilot AI Controls
- Microsoft Agent 365
- Gemini Enterprise

## Current Conclusion

The material change for 2026-05-05 is a stronger practical boundary around cross-vendor composition. The market is not only converging on a common stack shape. It is making those layers swappable: OpenAI now ships Codex and Managed Agents through Amazon Bedrock, AWS AgentCore is adding its own harness and optimization loop, Google Agent Platform continues to host open runtimes and protocols, and Microsoft Agent 365 is beginning to inventory AWS and Google agents from one governance plane. The more accurate state-of-the-art picture is a layered ecosystem with increasingly porous vendor boundaries: planning layers on top, coding and harness layers above managed operating and improvement platforms, and cross-vendor governance above them. The repository's current managed shape already fits that picture, so the bounded update for this run is the report only.

## Sources

- Accessed 2026-05-05: [Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-05-05: [OpenSpec](https://openspec.dev/)
- Page updated 2026-02-18, accessed 2026-05-05: [Kiro Specs](https://kiro.dev/docs/specs/)
- Accessed 2026-05-05: [Gemini CLI](https://github.com/google-gemini/gemini-cli)
- Accessed 2026-05-05: [Jules](https://jules.google/docs)
- Accessed 2026-05-05: [Junie](https://junie.jetbrains.com/)
- Accessed 2026-05-05: [OpenHands](https://openhands.dev/)
- Published 2026-04-16, accessed 2026-05-05: [Codex for (almost) everything](https://openai.com/index/codex-for-almost-everything/)
- Published 2026-04-15, accessed 2026-05-05: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- Accessed 2026-05-05: [Claude Code Agent SDK plugins](https://code.claude.com/docs/en/agent-sdk/plugins)
- Accessed 2026-05-05: [About GitHub Copilot cloud agent](https://docs.github.com/en/copilot/concepts/agents/cloud-agent/about-cloud-agent)
- Accessed 2026-05-05: [GitHub agent management for enterprises](https://docs.github.com/en/enterprise-cloud%40latest/copilot/concepts/agents/enterprise-management)
- Published 2026-04-22, accessed 2026-05-05: [Agents CLI in Agent Platform: create to production in one CLI](https://developers.googleblog.com/agents-cli-in-agent-platform-create-to-production-in-one-cli/)
- Last updated 2026-04-22, accessed 2026-05-05: [Scale your agents](https://docs.cloud.google.com/gemini-enterprise-agent-platform/scale)
- Published 2026-04-22, accessed 2026-05-05: [Amazon Bedrock AgentCore adds new features to help developers build agents faster](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- Published 2026-04-30, accessed 2026-05-05: [Amazon Bedrock AgentCore launches capabilities for optimizing agent performance in preview](https://aws.amazon.com/about-aws/whats-new/2026/05/bedrock-agentcore-optimization-preview/)
- Published 2026-04-28, accessed 2026-05-05: [OpenAI models, Codex, and Managed Agents come to AWS](https://openai.com/index/openai-on-aws/)
- Published 2026-04-28, accessed 2026-05-05: [Amazon Bedrock now offers OpenAI models, Codex, and Managed Agents (Limited Preview)](https://aws.amazon.com/about-aws/whats-new/2026/04/bedrock-openai-models-codex-managed-agents/)
- Published 2026-05-01, accessed 2026-05-05: [Microsoft Agent 365, now generally available, expands capabilities and integrations](https://www.microsoft.com/en-us/security/blog/2026/05/01/microsoft-agent-365-now-generally-available-expands-capabilities-and-integrations/)
- Last updated 2026-05-01, accessed 2026-05-05: [Windows 365 for Agents in Agent 365](https://learn.microsoft.com/en-us/windows-365/agents/w365a-availability-a365)
- Accessed 2026-05-05: [Model Context Protocol overview](https://modelcontextprotocol.io/)
- Published 2026-01-26, accessed 2026-05-05: [MCP Apps - Bringing UI Capabilities To MCP Clients](https://blog.modelcontextprotocol.io/posts/2026-01-26-mcp-apps/)
- Accessed 2026-05-05: [A2A Protocol Ships v1.0: Production-Ready Standard for Agent-to-Agent Communication](https://a2a-protocol.org/latest/announcing-1.0/)
- Accessed 2026-05-05: [AG-UI introduction](https://docs.ag-ui.com/quickstart/introduction)
- Accessed 2026-05-05: [AGENTS.md](https://agents.md/)
- Published 2026-03-24, accessed 2026-05-05: [Introducing JetBrains Central: An Open System for Agentic Software Development](https://blog.jetbrains.com/blog/2026/03/24/introducing-jetbrains-central-an-open-system-for-agentic-software-development/)
- Accessed 2026-05-05: [Jira Product Discovery](https://www.atlassian.com/software/jira/product-discovery)
<!-- state-of-the-art:managed:end -->
