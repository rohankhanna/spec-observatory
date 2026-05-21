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

2026-05-21

## Scope

This document tracks the state of the art for:

- spec-driven development
- outcome-driven development
- coding-agent execution
- vendor agent harnesses and managed lifecycle surfaces
- general agent build, deploy, runtime, and operating surfaces
- orchestration and interoperability
- software portfolio and project steering
- agent governance and control planes

## Current View

As of 2026-05-21, the ecosystem is still layered rather than consolidated into one end-to-end winner. The material correction from fresh official research is that ACP now deserves first-class tracking in `orchestration and interoperability`, not as a vendor-specific integration detail.

- Published on 2026-03-09 and accessed on 2026-05-21, the ACP project says the ACP Registry is stabilized and gives ACP clients a standard way to discover, install, and configure compatible agents through a curated catalog and shared manifest format.
- Accessed on 2026-05-21, JetBrains AI Assistant documents ACP as the standard way to connect external agents inside the IDE, including registry-based installation and optional MCP pass-through to installed agents.
- Accessed on 2026-05-21, GitHub documents GitHub Copilot CLI as an ACP server in public preview for IDE integrations, CI/CD pipelines, custom frontends, and multi-agent systems.
- Accessed on 2026-05-21, Google documents Gemini CLI ACP mode and explicitly describes ACP clients handing MCP server connection details to the agent during initialization.
- Published on 2026-05-20 and accessed on 2026-05-21, JetBrains documents Junie CLI ACP mode for editors and IDEs.
- Accessed on 2026-05-21, the official MCP Registry still describes itself as preview metadata and discovery infrastructure for MCP servers and says host applications should usually consume downstream registries rather than the official registry directly.

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
- Kiro
- OpenHands
- Rovo Dev

### Vendor agent harnesses and managed lifecycle surfaces

- OpenAI Agents SDK and ChatGPT workspace agents
- GitHub Copilot cloud agent, custom agents, and AI Controls
- Google Gemini API managed agents, Gemini Enterprise Agent Platform, Google Agents CLI, and ADK
- Amazon Bedrock AgentCore managed harness, CLI, Agent Registry, and multi-agent collaboration
- Microsoft Agent 365 and Windows 365 for Agents
- Atlassian Rovo, Teamwork Graph CLI, and Rovo MCP

### Host-facing execution, discovery, and build surfaces

- GitHub Copilot CLI
- GitHub MCP Registry and configurable MCP server access
- GitHub cloud-agent repository MCP configuration and agent management
- Google Agents CLI
- Gemini CLI
- Gemini API Antigravity agent and AI Studio Playground
- AWS AgentCore CLI
- Atlassian Teamwork Graph CLI
- Atlassian Rovo MCP
- Kiro IDE, CLI, Web, steering files, and agent hooks
- ChatGPT workspace agent builder, directory, schedules, and Slack channels
- Linear Agent delegation, integrations directory, and MCP connections
- AWS Agent Registry

### Open interoperability and metadata backbones

- MCP
- official MCP Registry
- ACP
- ACP Registry
- A2A
- AG-UI
- `AGENTS.md`

### Work operating systems, shared context backbones, code intelligence, and portfolio steering

- Atlassian Teamwork Graph
- Atlassian Teamwork Collection
- Jira Product Discovery
- Rovo
- Linear Agent
- Linear Code Intelligence
- Linear Releases
- Linear MCP

### Agent governance and control planes

- GitHub Copilot AI Controls
- Microsoft Agent 365
- Google Gemini Enterprise Agent Platform
- Amazon Bedrock AgentCore Policy and Agent Registry
- OpenAI workspace-agent admin controls and agent analytics surfaces
- managed execution environments, approval workflows, registry sync, runtime blocking, network policy, and agent analytics as a now-common enterprise pattern

## Current Conclusion

The stronger practical inference for 2026-05-21 is not a new end-to-end winner but a cleaner protocol map. The observatory should explicitly track `ACP` and `ACP Registry` alongside `MCP`, the official `MCP Registry`, `A2A`, `AG-UI`, and `AGENTS.md`. The better abstraction boundary is: `ACP` for client or editor-to-agent control, `MCP` for agent-to-tool or server access, and `A2A` for agent-to-agent coordination.

## Sources

- Published 2026-03-09 and accessed 2026-05-21: [ACP Registry is stabilized](https://agentclientprotocol.com/announcements/acp-agent-registry-stabilized)
- Accessed 2026-05-21: [Agent Client Protocol Introduction](https://agentclientprotocol.com/get-started/introduction)
- Accessed 2026-05-21: [ACP Registry](https://agentclientprotocol.com/get-started/registry)
- Accessed 2026-05-21: [JetBrains AI Assistant: Agent Client Protocol (ACP)](https://www.jetbrains.com/help/ai-assistant/acp.html)
- Accessed 2026-05-21: [GitHub Copilot CLI ACP server](https://docs.github.com/en/copilot/reference/copilot-cli-reference/acp-server)
- Accessed 2026-05-21: [Gemini CLI ACP mode](https://github.com/google-gemini/gemini-cli/blob/main/docs/cli/acp-mode.md)
- Published 2026-05-20 and accessed 2026-05-21: [Junie for ACP clients](https://junie.jetbrains.com/docs/junie-cli-acp.html)
- Accessed 2026-05-21: [The MCP Registry](https://modelcontextprotocol.io/registry/about)
<!-- state-of-the-art:managed:end -->
