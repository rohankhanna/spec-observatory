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

2026-05-12

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

As of 2026-05-12, the ecosystem is still layered rather than consolidated into one end-to-end winner. The material change from fresh official research is a sharper boundary inside the vendor-managed layer: agent registry, directory, and gallery surfaces are no longer just supporting UX. They are becoming a first-party control-plane primitive for publishing, discovering, approving, sharing, and governing agents and MCP servers.

- AWS makes the pattern explicit. On 2026-04-09, AWS launched Agent Registry in preview as a governed catalog and discovery layer for agents, tools, skills, MCP servers, and custom resources, with approval workflows and audit trails. This means AWS is not only a runtime and evaluation vendor; it is also shipping a first-party registry surface.
- Microsoft makes the cross-platform case explicit. On 2026-05-01, Microsoft Agent 365 announced a unified agent registry, local-agent discovery, and public-preview registry sync with AWS Bedrock and Google Cloud. Cross-cloud agent inventory and basic lifecycle control are now productized, not hypothetical.
- GitHub shows the same shape in developer tooling. AI Controls governs cloud agents, custom agents, third-party agents, sessions, audit events, and MCP policy. GitHub also supports enterprise MCP registries and registry-based allowlists, which turns agent and tool discovery into an admin surface.
- Google now has both user-facing and admin-facing discovery layers. Gemini Enterprise Agent Gallery is the central hub for discovering, using, and managing agents, while Gemini Enterprise admins can register ADK, A2A, and Dialogflow agents and manage lifecycle from the Agents page.
- OpenAI and Atlassian are converging from application-first directions. ChatGPT workspace agents expose organization directories, publishing controls, analytics, schedules, and custom MCP servers. Atlassian exposes browsable agent libraries, marketplace agents, Studio agent libraries, and Teamwork Graph distribution surfaces.
- Interoperability still looks strongest across open boundaries. MCP now also has an official public registry API in preview, A2A v1.0 remains the clearest agent-to-agent standard, AG-UI remains the clearest agent-to-user interaction layer, and `AGENTS.md` remains the clearest lightweight repo-local instruction surface.

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
- Rovo Dev

### Vendor agent harnesses and managed lifecycle surfaces

- OpenAI Agents SDK, Codex, and ChatGPT workspace agents
- GitHub Copilot custom agents and AI Controls
- Google Agents CLI, ADK, and Gemini Enterprise Agent Platform
- Amazon Bedrock Managed Agents and AgentCore
- Atlassian Rovo Studio, Rovo MCP, and Teamwork Graph CLI

### Agent registry, discovery, and distribution surfaces

- AWS Agent Registry
- Microsoft Agent 365 registry
- GitHub MCP Registry and enterprise MCP allowlists
- Gemini Enterprise Agent Gallery and Agents page
- ChatGPT workspace agent directory
- Atlassian Rovo agent library and Marketplace agents

### Interoperability and coordination surfaces

- MCP
- MCP Registry
- A2A
- AG-UI
- `AGENTS.md`

### Shared work context, outcome framing, and portfolio steering

- Atlassian Teamwork Graph
- Jira Product Discovery
- Atlassian Teamwork Collection
- Linear Agent and Linear MCP

### Agent governance and control planes

- GitHub Copilot AI Controls
- Microsoft Agent 365
- Amazon Bedrock AgentCore Policy and Agent Registry
- OpenAI workspace-agent admin controls
- approval workflows, agent directories, and registry sync as a now-common control-plane pattern

## Current Conclusion

The material update for 2026-05-12 is a stronger abstraction boundary, not a new coding-agent winner. The leading vendors are converging on a recurring managed shape: build and runtime surfaces, then registry or directory surfaces for discovery and distribution, then governance and control surfaces for policy, audit, and lifecycle management. Atlassian remains the clearest context-to-delivery stack. Microsoft remains the clearest cross-platform governance signal. AWS now looks more important to the control-plane conversation than the current report captured because registry and policy are both first-party AgentCore surfaces. The bounded update for this run is the observatory report only.

## Sources

- Accessed 2026-05-12: [Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-05-12: [OpenSpec](https://openspec.dev/)
- Page updated 2026-05-05, accessed 2026-05-12: [Kiro Specs](https://kiro.dev/docs/specs/)
- Published 2026-04-09, accessed 2026-05-12: [AWS Agent Registry for centralized agent discovery and governance is now available in Preview](https://aws.amazon.com/about-aws/whats-new/2026/04/aws-agent-registry-in-agentcore-preview/)
- Published 2026-03-03, accessed 2026-05-12: [Policy in Amazon Bedrock AgentCore is now generally available](https://aws.amazon.com/about-aws/whats-new/2026/03/policy-amazon-bedrock-agentcore-generally-available/)
- Published 2026-05-01, accessed 2026-05-12: [Microsoft Agent 365, now generally available, expands capabilities and integrations](https://www.microsoft.com/en-us/security/blog/2026/05/01/microsoft-agent-365-now-generally-available-expands-capabilities-and-integrations/)
- Accessed 2026-05-12: [Microsoft Agent 365](https://www.microsoft.com/en-us/microsoft-agent-365)
- Accessed 2026-05-12: [Agent management for enterprises](https://docs.github.com/en/enterprise-cloud%40latest/copilot/concepts/agents/enterprise-management)
- Accessed 2026-05-12: [Configure an MCP registry for your organization or enterprise](https://docs.github.com/en/copilot/how-tos/administer-copilot/manage-mcp-usage/configure-mcp-registry)
- Published 2026-04-22, accessed 2026-05-12: [Agents CLI in Agent Platform: create to production in one CLI](https://developers.googleblog.com/agents-cli-in-agent-platform-create-to-production-in-one-cli/)
- Last updated 2026-05-08, accessed 2026-05-12: [Agents overview | Gemini Enterprise](https://docs.cloud.google.com/gemini/enterprise/docs/agents-overview)
- Accessed 2026-05-12: [Browse agents with Agent Gallery | Gemini Enterprise](https://docs.cloud.google.com/gemini/enterprise/docs/agent-gallery)
- Updated 2026-05-07, accessed 2026-05-12: [ChatGPT Workspace Agents for Enterprise and Business](https://help.openai.com/en/articles/20001143/)
- Accessed 2026-05-12: [Browse Rovo agents](https://support.atlassian.com/rovo/docs/browse-agents/)
- Accessed 2026-05-12: [What is Rovo Studio?](https://support.atlassian.com/studio/docs/what-is-rovo-studio/)
- Accessed 2026-05-12: [Teamwork Graph CLI and Rovo MCP decision guide](https://support.atlassian.com/rovo/docs/teamwork-graph-cli-and-rovo-mcp-decision-guide/)
- Accessed 2026-05-12: [Atlassian Teamwork Graph](https://www.atlassian.com/platform/teamwork-graph)
- Accessed 2026-05-12: [Atlassian Teamwork Collection](https://www.atlassian.com/collections/teamwork)
- Accessed 2026-05-12: [Jira Product Discovery](https://www.atlassian.com/software/jira/product-discovery)
- Accessed 2026-05-12: [Changelog | Linear](https://linear.app/changelog)
- Accessed 2026-05-12: [The MCP Registry](https://modelcontextprotocol.io/registry/about)
- Accessed 2026-05-12: [A2A Protocol Ships v1.0: Production-Ready Standard for Agent-to-Agent Communication](https://a2a-protocol.org/latest/announcing-1.0/)
- Accessed 2026-05-12: [AG-UI Overview](https://docs.ag-ui.com/)
- Accessed 2026-05-12: [AGENTS.md](https://agents.md/index)
<!-- state-of-the-art:managed:end -->
