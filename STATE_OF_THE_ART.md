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

2026-05-14

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

As of 2026-05-14, the ecosystem is still layered rather than consolidated into one end-to-end winner. The material correction from fresh official research is that `registry/discovery` is no longer a precise enough single layer for the agent stack. A better practical split is now visible between host-facing access surfaces and neutral protocol or metadata backbones.

- GitHub is the clearest correction. Copilot cloud agent still runs in an ephemeral GitHub Actions-powered environment and the Copilot SDK still supports automatic sub-agent delegation, but GitHub now documents that private MCP registries and allowlists apply to Copilot CLI and supported IDEs, not to cloud agents. For cloud agents, MCP servers are configured at the repository or custom-agent-profile layer instead.
- Atlassian makes the same host distinction explicit. Teamwork Graph CLI and Rovo MCP are documented as complementary rather than interchangeable: the CLI is for terminal and CI environments, while Rovo MCP is for MCP-capable web, IDE, and sandbox hosts.
- Google is moving in the same direction. Agents CLI is now positioned as the programmatic backbone for AI coding agents reaching the Google Cloud agent stack, while Gemini Enterprise Agent Gallery and the admin Agents page remain the discovery and lifecycle surfaces for end users and administrators.
- The official MCP Registry remains important, but its role is more precise than the current report implied. Official docs describe it as a preview metadata backbone for downstream registries and marketplaces, and explicitly say host applications should consume downstream registries conforming to its API rather than the official registry directly.
- OpenAI, AWS, Microsoft, and Linear otherwise reinforce the broader picture already recorded on 2026-05-13: code-first orchestration plus workspace distribution for OpenAI; governed catalog plus multi-agent infrastructure for AWS; cross-platform control plane plus managed compute for Microsoft; and work-context steering plus MCP expansion for Linear.

## Notable Categories

### Spec-first workflow

- Spec Kit
- OpenSpec
- Kiro Specs

### Coding-agent execution

- Codex
- Claude Code
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
- Amazon Bedrock Agents, multi-agent collaboration, and AgentCore
- Microsoft Agent 365 and Windows 365 for Agents
- Atlassian Rovo, Teamwork Graph CLI, and Rovo MCP

### Host-facing access and discovery surfaces

- GitHub private MCP registries for Copilot CLI and supported IDEs
- GitHub repository and custom-agent-profile MCP configuration for Copilot cloud agent
- Google Agents CLI
- Gemini Enterprise Agent Gallery and Agents page
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

### Shared work context, outcome framing, and portfolio steering

- Atlassian Teamwork Graph
- Atlassian Teamwork Collection
- Jira Product Discovery
- Linear Agent and Linear MCP

### Agent governance and control planes

- GitHub Copilot AI Controls
- Microsoft Agent 365
- Amazon Bedrock AgentCore Policy and Agent Registry
- OpenAI workspace-agent admin controls
- managed execution environments, approval workflows, registry sync, and runtime blocking as a now-common enterprise pattern

## Current Conclusion

The practical inference for 2026-05-14 is that the observatory should stop treating `registry/discovery` as one uniform layer. The stronger boundary is now: shared context and planning surfaces, execution or runtime surfaces, orchestration, host-facing access and discovery surfaces, neutral protocol and metadata backbones, and governance or control. GitHub is less unified on MCP governance than the 2026-05-13 report implied because enterprise MCP registries stop at CLI and IDE use, while cloud-agent MCP access is configured separately. Atlassian and Google strengthen the same pattern by pairing terminal-native agent CLIs with MCP or gallery surfaces. The bounded update for this run is the observatory report only.

## Sources

- Accessed 2026-05-14: [Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-05-14: [OpenSpec](https://openspec.dev/)
- Accessed 2026-05-14: [Kiro Specs](https://kiro.dev/docs/specs/)
- Accessed 2026-05-14: [OpenAI Agents SDK handoffs](https://openai.github.io/openai-agents-python/handoffs/)
- Accessed 2026-05-14: [ChatGPT Workspace Agents for Enterprise and Business](https://help.openai.com/en/articles/20001143/)
- Accessed 2026-05-14: [GitHub Copilot enterprise agent management](https://docs.github.com/en/enterprise-cloud%40latest/copilot/concepts/agents/enterprise-management)
- Accessed 2026-05-14: [GitHub MCP server usage in your company](https://docs.github.com/en/copilot/concepts/mcp-management)
- Accessed 2026-05-14: [GitHub custom agents and sub-agent orchestration](https://docs.github.com/en/enterprise-cloud%40latest/copilot/how-tos/copilot-sdk/use-copilot-sdk/custom-agents)
- Published 2026-04-22, accessed 2026-05-14: [Agents CLI in Agent Platform: create to production in one CLI](https://developers.googleblog.com/agents-cli-in-agent-platform-create-to-production-in-one-cli/)
- Accessed 2026-05-14: [Multi-Agent Systems in ADK](https://adk.dev/agents/multi-agents/)
- Accessed 2026-05-14: [Gemini Enterprise agents overview](https://docs.cloud.google.com/gemini/enterprise/docs/agents-overview)
- Accessed 2026-05-14: [Browse agents with Agent Gallery](https://docs.cloud.google.com/gemini/enterprise/docs/agents-gallery)
- Accessed 2026-05-14: [AWS Agent Registry](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/registry.html)
- Accessed 2026-05-14: [Windows 365 for Agents in Agent 365](https://learn.microsoft.com/en-us/windows-365/agents/w365a-availability-a365)
- Published 2026-05-01, accessed 2026-05-14: [Microsoft Agent 365, now generally available, expands capabilities and integrations](https://www.microsoft.com/en-us/security/blog/2026/05/01/microsoft-agent-365-now-generally-available-expands-capabilities-and-integrations/)
- Accessed 2026-05-14: [Teamwork Graph CLI and Rovo MCP decision guide](https://support.atlassian.com/rovo/docs/teamwork-graph-cli-and-rovo-mcp-decision-guide/)
- Accessed 2026-05-14: [Atlassian Teamwork Graph](https://www.atlassian.com/platform/teamwork-graph)
- Published 2026-04-23, accessed 2026-05-14: [Linear Agent MCP support](https://linear.app/changelog/2026-04-23-linear-agent-mcp-support)
- Accessed 2026-05-14: [The MCP Registry](https://modelcontextprotocol.io/registry/about)
- Accessed 2026-05-14: [A2A Protocol Ships v1.0](https://a2a-protocol.org/latest/announcing-1.0/)
- Accessed 2026-05-14: [AG-UI Overview](https://docs.ag-ui.com/introduction)
- Accessed 2026-05-14: [AGENTS.md](https://agents.md/)
<!-- state-of-the-art:managed:end -->
