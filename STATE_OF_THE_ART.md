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

2026-05-16

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

As of 2026-05-16, the ecosystem is still layered rather than consolidated into one end-to-end winner. The material correction from fresh official research is that the observatory should update two abstraction boundaries it currently understates.

- As accessed on 2026-05-16, GitHub Docs present Copilot CLI as a first-class local agent surface with autopilot execution, `/delegate` handoff to Copilot cloud agent, `/fleet` parallel subagent execution, remote control from GitHub surfaces, plugins, and MCP. GitHub is no longer best described mainly through a cloud-agent-versus-registry split.
- As accessed on 2026-05-16, GitHub Docs also describe the GitHub MCP Registry as a curated registry in public preview while allowing organization and enterprise admins to configure MCP server access separately. That makes GitHub a clearer example of a vendor host layering its own registry and policy surfaces on top of the neutral official MCP Registry, and it corrects the previous report's too-narrow `private registries` wording.
- As accessed on 2026-05-16, GitHub Spec Kit docs describe integrations, extensions, presets, and workflows with conditional logic, loops, fan-out or fan-in, and pause or resume. Kiro docs show dependency-aware parallel task execution directly from spec tasks. Leading spec-first tools are increasingly process and orchestration layers, not only planning or documentation aids.
- Google Agents CLI, AWS AgentCore CLI plus harness, Atlassian Teamwork Graph CLI plus Rovo MCP, OpenAI workspace agents, Microsoft Agent 365, and Linear Code Intelligence otherwise preserve the layered picture already recorded: vendor host surfaces, managed execution and governance layers, neutral protocols, and shared work context remain distinct.

## Notable Categories

### Spec-first workflow and process layers

- Spec Kit
- OpenSpec
- Kiro Specs

### Coding-agent execution

- Codex
- Claude Code
- GitHub Copilot CLI
- GitHub Copilot cloud agent
- Gemini CLI
- Jules
- Junie
- OpenHands
- Rovo Dev

### Vendor agent harnesses and managed lifecycle surfaces

- OpenAI Agents SDK and ChatGPT workspace agents
- GitHub Copilot cloud agent, custom agents, and AI Controls
- Google Agents CLI, ADK, and Gemini Enterprise
- Amazon Bedrock AgentCore managed harness, CLI, Agent Registry, and multi-agent collaboration
- Microsoft Agent 365 and Windows 365 for Agents
- Atlassian Rovo, Teamwork Graph CLI, and Rovo MCP

### Host-facing execution, discovery, and build surfaces

- GitHub Copilot CLI
- GitHub MCP Registry and configurable MCP server access
- GitHub cloud-agent repository MCP configuration and agent management
- Google Agents CLI
- Gemini Enterprise Agent Gallery and Agents page
- AWS AgentCore CLI
- Atlassian Teamwork Graph CLI
- Atlassian Rovo MCP
- ChatGPT workspace directory
- AWS Agent Registry

### Open interoperability and metadata backbones

- MCP
- official MCP Registry
- A2A
- AG-UI
- `AGENTS.md`

### Shared work context, code intelligence, outcome framing, and portfolio steering

- Atlassian Teamwork Graph
- Atlassian Teamwork Collection
- Jira Product Discovery
- Linear Agent
- Linear Code Intelligence
- Linear MCP

### Agent governance and control planes

- GitHub Copilot AI Controls
- Microsoft Agent 365
- Amazon Bedrock AgentCore Policy and Agent Registry
- OpenAI workspace-agent admin controls
- managed execution environments, approval workflows, registry sync, and runtime blocking as a now-common enterprise pattern

## Current Conclusion

The stronger practical inference for 2026-05-16 is that the observatory should make two bounded corrections. First, `host-facing access, discovery, and build surfaces` should be treated as `host-facing execution, discovery, and build surfaces` because GitHub now joins Google, AWS, and Atlassian with an official CLI and session-control layer that can execute locally, delegate to cloud agents, parallelize subagent work, and expose registry-backed extensions. Second, `spec-first workflow` should be treated as `spec-first workflow and process layers` because Spec Kit and Kiro now expose programmable execution and orchestration behavior around the spec artifacts themselves. This is a material correction to the current report's GitHub and spec-layer framing. The bounded update for this run is the observatory report only.

## Sources

- Accessed 2026-05-16: [Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-05-16: [Spec Kit CLI Reference](https://github.github.com/spec-kit/reference/overview.html)
- Accessed 2026-05-16: [OpenSpec](https://openspec.dev/)
- Page updated 2026-05-05, accessed 2026-05-16: [Kiro Specs](https://kiro.dev/docs/specs/)
- Accessed 2026-05-16: [OpenAI Agents SDK handoffs](https://openai.github.io/openai-agents-python/handoffs/)
- Accessed 2026-05-16: [ChatGPT Workspace Agents for Enterprise and Business](https://help.openai.com/en/articles/20001143/)
- Accessed 2026-05-16: [ChatGPT agent workspace controls](https://help.openai.com/en/articles/11752874-chatgpt-agent)
- Accessed 2026-05-16: [GitHub Copilot CLI](https://docs.github.com/en/copilot/concepts/agents/copilot-cli/about-copilot-cli)
- Accessed 2026-05-16: [Delegating tasks to Copilot](https://docs.github.com/en/copilot/how-tos/copilot-cli/use-copilot-cli/delegate-tasks-to-cca)
- Accessed 2026-05-16: [Running tasks in parallel with the /fleet command](https://docs.github.com/en/copilot/concepts/agents/copilot-cli/fleet)
- Accessed 2026-05-16: [About remote control of GitHub Copilot CLI sessions](https://docs.github.com/en/copilot/concepts/agents/copilot-cli/about-remote-control)
- Accessed 2026-05-16: [About plugins for GitHub Copilot CLI](https://docs.github.com/en/copilot/concepts/agents/copilot-cli/about-cli-plugins)
- Accessed 2026-05-16: [About Model Context Protocol for GitHub Copilot](https://docs.github.com/en/copilot/concepts/context/mcp)
- Accessed 2026-05-16: [Configure MCP server access for your organization or enterprise](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-mcp-usage/configure-mcp-server-access)
- Accessed 2026-05-16: [GitHub custom agents](https://docs.github.com/en/enterprise-cloud@latest/copilot/concepts/agents/cloud-agent/about-custom-agents)
- Accessed 2026-05-16: [GitHub agent management for enterprises](https://docs.github.com/en/enterprise-cloud@latest/copilot/concepts/agents/enterprise-management)
- Published 2026-04-22, accessed 2026-05-16: [Agents CLI in Agent Platform: create to production in one CLI](https://developers.googleblog.com/agents-cli-in-agent-platform-create-to-production-in-one-cli/)
- Accessed 2026-05-16: [Gemini Enterprise agents overview](https://docs.cloud.google.com/gemini/enterprise/docs/agents-overview)
- Accessed 2026-05-16: [Browse agents with Agent Gallery](https://docs.cloud.google.com/gemini/enterprise/docs/agent-gallery)
- Published 2026-04-22, accessed 2026-05-16: [Amazon Bedrock AgentCore adds new features to help developers build agents faster](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- Accessed 2026-05-16: [Get started with the AgentCore CLI](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/runtime-get-started-cli.html)
- Accessed 2026-05-16: [AWS Agent Registry](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/registry.html)
- Accessed 2026-05-16: [Teamwork Graph CLI and Rovo MCP decision guide](https://support.atlassian.com/rovo/docs/teamwork-graph-cli-and-rovo-mcp-decision-guide/)
- Published 2026-05-14, accessed 2026-05-16: [Linear Code Intelligence](https://linear.app/changelog/2026-05-14-code-intelligence)
- Accessed 2026-05-16: [Linear AI Agents](https://linear.app/docs/agents-in-linear)
- Accessed 2026-05-16: [Linear MCP server](https://linear.app/docs/mcp)
- Published 2026-05-01, accessed 2026-05-16: [Microsoft Agent 365, now generally available, expands capabilities and integrations](https://www.microsoft.com/en-us/security/blog/2026/05/01/microsoft-agent-365-now-generally-available-expands-capabilities-and-integrations/)
- Accessed 2026-05-16: [Windows 365 for Agents in Agent 365](https://learn.microsoft.com/en-us/windows-365/agents/w365a-availability-a365)
- Accessed 2026-05-16: [The MCP Registry](https://modelcontextprotocol.io/registry/about)
- Accessed 2026-05-16: [A2A Protocol v1.0 announcement](https://a2a-protocol.org/latest/announcing-1.0/)
- Accessed 2026-05-16: [AG-UI overview](https://docs.ag-ui.com/introduction)
- Accessed 2026-05-16: [AGENTS.md](https://agents.md/)
<!-- state-of-the-art:managed:end -->
