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

2026-05-22

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

As of 2026-05-22, the ecosystem is still layered rather than consolidated into one end-to-end winner, but the material refinement from fresh official research is no longer only protocol-level. The spec-driven layer itself now has a clearer split between portable repo-native planning systems and integrated spec-execution surfaces inside agent harnesses.

- Accessed on 2026-05-22, GitHub Spec Kit describes a spec-driven `Spec -> Plan -> Tasks -> Implement` workflow, 30 agent integrations, and a large extensions and presets ecosystem. That makes it a portable planning layer, not just a single-agent template pack.
- Accessed on 2026-05-22, OpenSpec positions itself as a lightweight, universal planning layer where specs live in the repository, persist across sessions, and remain useful when teams switch coding agents.
- Published on 2026-05-05 and accessed on 2026-05-22, Kiro documents specs as an integrated three-phase workflow with requirements, design, tasks, quick-plan shortcuts, and parallel task execution. That places Kiro Specs closer to a vendor harness feature than to a neutral planning layer.
- Accessed on 2026-05-22, Kiro steering and Kiro Powers show an adjacent vendor pattern: persistent markdown steering, `AGENTS.md` support, hooks, MCP, and installable bundles are being packaged into one governed execution surface.
- Published on 2026-03-09 and accessed on 2026-05-22, ACP still merits first-class tracking because the ACP Registry is stabilized and official agent docs continue to position ACP as the editor or client-to-agent interoperability layer.
- Accessed on 2026-05-22, the official MCP Registry still describes itself as preview metadata and says host applications should usually consume downstream registries rather than the official registry directly.

## Notable Categories

### Portable repo-native spec and planning layers

- Spec Kit
- OpenSpec

### Integrated spec-execution surfaces inside agent harnesses

- Kiro Specs
- Kiro steering
- Kiro Powers

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
- Kiro IDE, CLI, Web, steering files, hooks, and powers
- ChatGPT workspace agent builder, directory, schedules, and Slack channels
- Linear Agent delegation, integrations directory, and MCP connections
- AWS Agent Registry

### Interoperability protocols

- MCP
- ACP
- A2A
- AG-UI

### Discovery, registry, and instruction surfaces

- ACP Registry
- official MCP Registry
- GitHub MCP Registry
- AWS Agent Registry
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

The stronger practical inference for 2026-05-22 is a two-part map.

- In spec-driven development, separate portable repo-native planning layers from integrated spec-execution surfaces inside agent harnesses. Spec Kit and OpenSpec are increasingly about durable, agent-agnostic planning artifacts checked into the repo. Kiro Specs are increasingly about executing that planning model inside a bundled harness that also includes steering, hooks, MCP, and installable capability packs.
- In interoperability, keep the protocol boundary explicit: `ACP` for editor or client-to-agent control, `MCP` for agent-to-tool or server access, and `A2A` for agent-to-agent coordination. Treat registries and instruction files as a discovery layer above those protocols, not as interchangeable with them.

## Sources

- Accessed 2026-05-22: [GitHub Spec Kit](https://github.github.com/spec-kit/)
- Accessed 2026-05-22: [OpenSpec](https://openspec.dev/)
- Published 2026-05-05 and accessed 2026-05-22: [Kiro Specs](https://kiro.dev/docs/specs/)
- Published 2026-01-08 and accessed 2026-05-22: [Kiro Steering](https://kiro.dev/docs/cli/steering/)
- Accessed 2026-05-22: [Kiro Powers](https://kiro.dev/powers/)
- Published 2026-03-09 and accessed 2026-05-22: [ACP Registry is stabilized](https://agentclientprotocol.com/announcements/acp-agent-registry-stabilized)
- Accessed 2026-05-22: [Agent Client Protocol Introduction](https://agentclientprotocol.com/get-started/introduction)
- Accessed 2026-05-22: [ACP Registry](https://agentclientprotocol.com/get-started/registry)
- Accessed 2026-05-22: [GitHub Copilot CLI ACP server](https://docs.github.com/en/copilot/reference/copilot-cli-reference/acp-server)
- Accessed 2026-05-22: [Gemini CLI ACP mode](https://github.com/google-gemini/gemini-cli/blob/main/docs/cli/acp-mode.md)
- Accessed 2026-05-22: [The MCP Registry](https://modelcontextprotocol.io/registry/about)
<!-- state-of-the-art:managed:end -->
