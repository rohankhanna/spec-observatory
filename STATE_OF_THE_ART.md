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

2026-05-11

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

As of 2026-05-11, the ecosystem is still layered rather than consolidated into one end-to-end winner. The material change from fresh official research is a better abstraction boundary inside the vendor-managed layer: the leading vendors are no longer just shipping coding agents, SDKs, or shared runtimes. They are increasingly shipping managed lifecycle and control surfaces that cover build, deploy, observe, improve, and govern.

- OpenAI's 2026-04-22 workspace-agent launch still matters, but it now looks like part of a broader pattern rather than a one-off correction. ChatGPT workspace agents, plus the 2026-05-06 admin-console expansion and 2026-05-07 EKM support, place OpenAI in a shared agent-operations layer, not only a coding-agent and SDK layer.
- AWS made the lifecycle shift explicit. On 2026-04-22, AgentCore added a managed harness, CLI, and coding-assistant skills with full agent lifecycle positioning. On 2026-04-30, AgentCore added recommendations, batch evaluations, and A/B tests, making observe-evaluate-improve a first-party managed surface rather than only an external practice.
- Google is framing the same layer differently. On 2026-04-22, Google described Agents CLI as the backbone for the Agent Development Lifecycle on Google Cloud, linking coding agents to Agent Platform, Cloud Run, and A2A integration. Gemini Enterprise continues to package discovery, deployment, and governance of Google-made, partner, and customer-built agents.
- GitHub and Microsoft make the governance layer sharper than the current report captured. GitHub AI Controls governs cloud agents, custom agents, third-party agents, MCP discovery, and agent-session audits. Microsoft Agent 365 now explicitly syncs with AWS Bedrock and Google Cloud, making cross-platform agent registry and governance a live category rather than a theoretical one.
- Atlassian still has the strongest context-to-delivery stack. The correction is that Teamwork Graph is now more clearly a dual access surface: Rovo MCP for MCP-capable hosts such as web LLMs and IDEs, and Teamwork Graph CLI for terminal and CI runtimes. That makes Atlassian stronger not just in steering, but in agent context distribution.
- Interoperability still looks strongest across open boundaries. MCP remains the tool and context substrate. A2A v1.0 remains the clearest agent-to-agent standard. AG-UI remains the clearest agent-to-user interaction layer. `AGENTS.md` remains the clearest lightweight repo-local instruction surface.

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

### Interoperability and coordination surfaces

- MCP
- MCP Apps
- A2A
- AG-UI
- `AGENTS.md`

### Shared work context, outcome framing, and portfolio steering

- Atlassian Teamwork Graph
- Jira Product Discovery
- Atlassian Product Collection and Teamwork Collection
- Linear Agent and Linear MCP
- OpenAI Symphony

### Agent governance and control planes

- GitHub Copilot AI Controls
- Microsoft Agent 365
- OpenAI workspace-agent admin controls
- cross-platform agent registry and governance as an emerging market layer

## Current Conclusion

The material update for 2026-05-11 is a stronger abstraction boundary, not a new coding-agent winner. The front edge of the market is no longer only agent plus SDK or agent plus runtime. It is managed agent lifecycle and control surfaces: build and deploy surfaces from Google and AWS, shared agent operations from OpenAI, context distribution from Atlassian, and increasingly explicit governance planes from GitHub and Microsoft. Atlassian remains the clearest decision-to-delivery stack. Microsoft now looks like the clearest cross-platform governance signal. The bounded update for this run is the observatory report only.

## Sources

- Accessed 2026-05-11: [Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-05-11: [OpenSpec](https://openspec.dev/)
- Page updated 2026-05-05, accessed 2026-05-11: [Kiro Specs](https://kiro.dev/docs/specs/)
- Published 2026-04-22, accessed 2026-05-11: [Introducing workspace agents in ChatGPT](https://openai.com/index/introducing-workspace-agents-in-chatgpt/)
- Accessed 2026-05-11: [ChatGPT Enterprise & Edu - Release Notes](https://help.openai.com/en/articles/10128477-chatgpt-enterprise-edu-release-notes)
- Accessed 2026-05-11: [Agent management for enterprises](https://docs.github.com/en/copilot/concepts/agents/enterprise-management)
- Published 2026-04-22, accessed 2026-05-11: [Agents CLI in Agent Platform: create to production in one CLI](https://developers.googleblog.com/agents-cli-in-agent-platform-create-to-production-in-one-cli/)
- Accessed 2026-05-11: [AI Agents for Gemini Enterprise](https://cloud.google.com/gemini-enterprise/agents)
- Published 2026-04-22, accessed 2026-05-11: [Amazon Bedrock AgentCore adds new features to help developers build agents faster](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- Published 2026-04-30, accessed 2026-05-11: [Amazon Bedrock AgentCore launches capabilities for optimizing agent performance in preview](https://aws.amazon.com/about-aws/whats-new/2026/05/bedrock-agentcore-optimization-preview/)
- Accessed 2026-05-11: [Atlassian Teamwork Graph](https://www.atlassian.com/platform/teamwork-graph)
- Accessed 2026-05-11: [Teamwork Graph CLI and Rovo MCP decision guide](https://support.atlassian.com/rovo/docs/teamwork-graph-cli-and-rovo-mcp-decision-guide/)
- Published 2026-05-06, accessed 2026-05-11: [Introducing Product Collection: Built for better decisions, in the AI era](https://www.atlassian.com/blog/company-news/introducing-product-collection)
- Accessed 2026-05-11: [Atlassian Teamwork Collection](https://www.atlassian.com/collections/teamwork)
- Accessed 2026-05-11: [Architecture overview - Model Context Protocol](https://modelcontextprotocol.io/docs/learn/architecture)
- Published 2026-01-26, accessed 2026-05-11: [MCP Apps - Bringing UI Capabilities To MCP Clients](https://blog.modelcontextprotocol.io/posts/2026-01-26-mcp-apps/)
- Accessed 2026-05-11: [A2A Protocol Ships v1.0: Production-Ready Standard for Agent-to-Agent Communication](https://a2a-protocol.org/latest/announcing-1.0/)
- Accessed 2026-05-11: [AG-UI Overview](https://docs.ag-ui.com/)
- Accessed 2026-05-11: [AGENTS.md](https://agents.md/index)
- Published 2026-05-01, accessed 2026-05-11: [Microsoft Agent 365, now generally available, expands capabilities and integrations](https://www.microsoft.com/en-us/security/blog/2026/05/01/microsoft-agent-365-now-generally-available-expands-capabilities-and-integrations/)
<!-- state-of-the-art:managed:end -->
