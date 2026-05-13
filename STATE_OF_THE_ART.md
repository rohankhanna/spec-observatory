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

2026-05-13

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

As of 2026-05-13, the ecosystem is still layered rather than consolidated into one end-to-end winner. The material correction from fresh official research is that registry and directory surfaces are not the only important new boundary inside the vendor-managed layer. A clearer practical split is now visible across four first-party surfaces that increasingly ship together: execution substrates, orchestration surfaces, registry or directory surfaces, and governance or control surfaces.

- GitHub makes execution plus orchestration explicit. Copilot cloud agent runs in a GitHub Actions-powered ephemeral environment, while the Copilot SDK can define custom agents that the runtime automatically delegates to as sub-agents. Enterprise MCP policy and private registries then govern tool discovery and use.
- Microsoft makes execution plus governance explicit. Agent 365 is a cross-platform registry and control plane, and Windows 365 for Agents is now the managed execution layer for computer-using agents that need a full operating environment rather than API-only tool use.
- Google makes orchestration plus distribution explicit. ADK formalizes multi-agent hierarchies plus sequential and parallel workflows, while Gemini Enterprise exposes Agent Gallery and admin-managed registration for ADK, A2A, and Dialogflow agents.
- AWS makes governed orchestration plus catalog explicit. Amazon Bedrock supports supervisor and collaborator multi-agent teams, and Agent Registry adds approval-driven discovery for agents, tools, skills, MCP servers, and custom resources.
- OpenAI makes code-first orchestration plus application distribution explicit. The Agents SDK now treats orchestration and handoffs as core surfaces, while ChatGPT workspace agents add templates, directories, schedules, analytics, skills, and custom MCP servers inside a workspace operating surface.
- Atlassian and Linear remain strongest on work context and steering rather than raw runtime infrastructure. Atlassian now formalizes both CLI and MCP access to Teamwork Graph for agents, while Linear Agent plus MCP support pulls external context into planning, specs, releases, and updates.
- Open standards still matter most at the cross-vendor boundary. MCP remains the dominant tool and context surface, the official MCP Registry remains the neutral metadata backbone in preview, A2A v1.0 remains the clearest agent-to-agent standard, AG-UI remains the clearest agent-to-user interaction standard, and `AGENTS.md` remains the clearest lightweight repo-local instruction surface.

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

### Registry, directory, and discovery surfaces

- AWS Agent Registry
- Microsoft Agent 365 registry sync
- GitHub MCP registries and allowlists
- Gemini Enterprise Agent Gallery and Agents page
- ChatGPT workspace directory
- Atlassian agent libraries and Marketplace agents

### Open interoperability surfaces

- MCP
- MCP Registry
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
- managed execution environments, approval workflows, and registry sync as a now-common enterprise pattern

## Current Conclusion

The practical inference for 2026-05-13 is that the observatory should not treat orchestration and interoperability as the same layer, and should not treat registry surfaces as the whole story inside the vendor-managed layer. The stronger abstraction boundary is now: shared context and planning surfaces, execution or runtime surfaces, vendor-local orchestration, registry or directory distribution, and governance or control. Microsoft is the clearest managed compute plus control-plane signal because Agent 365 is now paired with Windows 365 for Agents. GitHub is the clearest coding-specific managed execution signal because Copilot cloud agent, custom agents, and enterprise MCP policy live on one platform. OpenAI and Google remain the clearest code-first orchestration signals. AWS is strongest where governed catalog and multi-agent infrastructure meet. Atlassian remains the clearest context-to-delivery stack. The bounded update for this run is the observatory report only.

## Sources

- Accessed 2026-05-13: [Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-05-13: [OpenSpec](https://openspec.dev/)
- Accessed 2026-05-13: [Kiro Specs](https://kiro.dev/docs/specs/)
- Accessed 2026-05-13: [OpenAI Agents SDK](https://developers.openai.com/api/docs/guides/agents)
- Accessed 2026-05-13: [Handoffs | OpenAI Agents SDK](https://openai.github.io/openai-agents-python/handoffs/)
- Updated 2026-05-07, accessed 2026-05-13: [ChatGPT Workspace Agents for Enterprise and Business](https://help.openai.com/en/articles/20001143-chatgpt-workspace-agents-for-enterprise-and-business)
- Accessed 2026-05-13: [About GitHub Copilot cloud agent](https://docs.github.com/en/copilot/concepts/agents/cloud-agent/about-cloud-agent)
- Accessed 2026-05-13: [Custom agents and sub-agent orchestration](https://docs.github.com/en/enterprise-cloud%40latest/copilot/how-tos/copilot-sdk/use-copilot-sdk/custom-agents)
- Accessed 2026-05-13: [Agent management for enterprises](https://docs.github.com/en/copilot/concepts/agents/enterprise-management)
- Accessed 2026-05-13: [Configure an MCP registry for your organization or enterprise](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-mcp-usage/configure-mcp-registry)
- Published 2026-04-22, accessed 2026-05-13: [Agents CLI in Agent Platform: create to production in one CLI](https://developers.googleblog.com/agents-cli-in-agent-platform-create-to-production-in-one-cli/)
- Accessed 2026-05-13: [Multi-Agent Systems in ADK](https://adk.dev/agents/multi-agents/)
- Accessed 2026-05-13: [Browse agents with Agent Gallery](https://docs.cloud.google.com/gemini/enterprise/docs/agents-gallery)
- Accessed 2026-05-13: [Agents overview | Gemini Enterprise](https://docs.cloud.google.com/gemini/enterprise/docs/agents-overview)
- Published 2026-04-09, accessed 2026-05-13: [AWS Agent Registry for centralized agent discovery and governance is now available in Preview](https://aws.amazon.com/about-aws/whats-new/2026/04/aws-agent-registry-in-agentcore-preview/)
- Accessed 2026-05-13: [Use multi-agent collaboration with Amazon Bedrock Agents](https://docs.aws.amazon.com/bedrock/latest/userguide/agents-multi-agent-collaboration.html)
- Published 2026-05-01, accessed 2026-05-13: [Microsoft Agent 365, now generally available, expands capabilities and integrations](https://www.microsoft.com/en-us/security/blog/2026/05/01/microsoft-agent-365-now-generally-available-expands-capabilities-and-integrations/)
- Last updated 2026-05-01, accessed 2026-05-13: [Windows 365 for Agents in Agent 365](https://learn.microsoft.com/en-us/windows-365/agents/w365a-availability-a365)
- Accessed 2026-05-13: [Teamwork Graph CLI and Rovo MCP decision guide](https://support.atlassian.com/rovo/docs/teamwork-graph-cli-and-rovo-mcp-decision-guide/)
- Accessed 2026-05-13: [Atlassian Teamwork Graph](https://www.atlassian.com/platform/teamwork-graph)
- Published 2026-04-23, accessed 2026-05-13: [Changelog | Linear](https://linear.app/changelog)
- Accessed 2026-05-13: [The MCP Registry](https://modelcontextprotocol.io/registry/about)
- Accessed 2026-05-13: [A2A Protocol Ships v1.0: Production-Ready Standard for Agent-to-Agent Communication](https://a2a-protocol.org/latest/announcing-1.0/)
- Accessed 2026-05-13: [AG-UI Overview](https://docs.ag-ui.com/)
- Accessed 2026-05-13: [AGENTS.md](https://agents.md/)
<!-- state-of-the-art:managed:end -->
