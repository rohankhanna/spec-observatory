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

2026-05-09

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

As of 2026-05-09, the ecosystem is still layered rather than consolidated into one end-to-end winner. The material change from fresh official research is a correction inside the coding-agent layer and a stronger cross-layer conclusion about Atlassian. Atlassian should no longer be treated only as a product-steering example above the agent layer. Its current official surfaces now span a generally available coding agent, a shared work-context graph, and a product operating system tied directly to delivery.

- Spec-first workflow tools still define the planning layer. Spec Kit, OpenSpec, and Kiro continue to cover greenfield scaffolding, repo-native living specs, and structured feature or bugfix workflows. Kiro's requirements-first, design-first, and bugfix paths strengthen the brownfield conclusion rather than changing the planning-layer boundary.
- The first-tier coding-agent set is not unchanged. Atlassian Rovo Dev now merits inclusion in the practical front group beside Codex, Claude Code, GitHub Copilot cloud agent, Gemini CLI, Jules, Junie, and OpenHands. As accessed on 2026-05-09, Atlassian positions Rovo Dev Standard as generally available, with terminal, IDE, Jira, GitHub, and Bitbucket surfaces plus documented sessions, memory, subagents, MCP, server mode, and worktree mode.
- Vendor harnesses, managed runtimes, and governance surfaces continue to converge on the same bundle: shared instructions, tools, memory or state, evaluation, secure execution, observability, and enterprise controls. OpenAI Agents SDK, GitHub AI Controls, Google Agents CLI plus Gemini Enterprise Agent Platform, AWS AgentCore, and Microsoft Agent 365 still anchor that layer.
- The sharper steering layer identified on 2026-05-08 still matters, but it now looks more like a connected stack than a thin layer above coding agents. Atlassian Product Collection launched on 2026-05-06 as an AI-powered product operating system, Jira Product Discovery Enterprise adds portfolio and governance surfaces, and Teamwork Graph CLI puts shared cross-tool context into coding agents. Linear Agent plus MCP support and OpenAI Symphony still show the project board becoming an orchestrator for coding agents. JetBrains Central remains the clearest dedicated software-production control plane.
- Interoperability still looks strongest across open boundaries. MCP remains the tool and context substrate. MCP Apps remains the first official MCP UI extension. A2A v1.0 remains the clearest agent-to-agent standard. AG-UI remains the clearest open agent-to-user interaction layer. `AGENTS.md` remains the clearest lightweight repo-local instruction surface.
- Cross-vendor governance still matters as a distinct market layer. Microsoft Agent 365, GitHub Copilot AI Controls, Okta for AI Agents, and the newer governance products from AvePoint, IBM, WSO2, and Collibra keep reinforcing that control and oversight are first-class layers, not just features buried inside model vendors or cloud runtimes.

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

### Vendor agent harnesses and customization surfaces

- OpenAI Agents SDK and Codex surfaces
- Claude Agent SDK and Claude Code plugins or skills
- GitHub Copilot custom agents and AI Controls
- Google Agents CLI, ADK, and Gemini Enterprise Agent Platform
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

### Shared work context and graph substrates

- Atlassian Teamwork Graph
- Teamwork Graph CLI

### Outcome framing, product discovery, and product operating systems

- outcome-driven development terminology
- Jira Product Discovery
- Atlassian Product Collection

### Decision-to-delivery steering and software-production control planes

- Linear Agent and Linear MCP
- OpenAI Symphony
- JetBrains Central

### Agent governance and control planes

- GitHub Copilot AI Controls
- Microsoft Agent 365
- Okta for AI Agents
- AvePoint AgentPulse Command Center
- IBM watsonx Orchestrate agentic control plane
- WSO2 Agent Manager
- Collibra AI Command Center

## Current Conclusion

The material update for 2026-05-09 is a correction and a sharper abstraction boundary. Atlassian is no longer just evidence that product systems and issue trackers are becoming agent control planes. As of 2026-05-09, its official surfaces show one connected stack: Rovo Dev as a first-tier coding agent, Teamwork Graph as shared enterprise context, and Product Collection plus Jira Product Discovery as decision surfaces tied to delivery. The ecosystem is still not consolidated into one winner, because Linear, OpenAI, JetBrains, and open protocols still define meaningful alternatives. But the previous claim that the coding-agent front group was unchanged is now too weak. The observatory should explicitly treat shared work-context substrates as part of the steering story while keeping the repository's current managed shape intact. The bounded update for this run is the report only.

## Sources

- Accessed 2026-05-09: [Spec Kit](https://github.github.com/spec-kit/)
- Accessed 2026-05-09: [OpenSpec](https://openspec.dev/)
- Page updated 2026-05-05, accessed 2026-05-09: [Kiro Feature Specs](https://kiro.dev/docs/specs/feature-specs/)
- Published 2026-04-16, accessed 2026-05-09: [Codex for almost everything](https://openai.com/index/codex-for-almost-everything/)
- Published 2026-04-15, accessed 2026-05-09: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- Accessed 2026-05-09: [About GitHub Copilot cloud agent](https://docs.github.com/en/copilot/concepts/agents/cloud-agent/about-cloud-agent)
- Accessed 2026-05-09: [Agent management for enterprises](https://docs.github.com/en/copilot/concepts/agents/enterprise-management)
- Published 2026-04-22, accessed 2026-05-09: [Agents CLI in Agent Platform: create to production in one CLI](https://developers.googleblog.com/agents-cli-in-agent-platform-create-to-production-in-one-cli/)
- Last updated 2026-04-22, accessed 2026-05-09: [Scale your agents](https://docs.cloud.google.com/gemini-enterprise-agent-platform/scale)
- Published 2026-04-22, accessed 2026-05-09: [Amazon Bedrock AgentCore adds new features to help developers build agents faster](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- Published 2026-05-01, accessed 2026-05-09: [Microsoft Agent 365, now generally available, expands capabilities and integrations](https://www.microsoft.com/en-us/security/blog/2026/05/01/microsoft-agent-365-now-generally-available-expands-capabilities-and-integrations/)
- Accessed 2026-05-09: [Rovo Dev](https://www.atlassian.com/software/rovo-dev)
- Accessed 2026-05-09: [Use Rovo Dev CLI](https://support.atlassian.com/rovo/docs/use-rovo-dev-cli/)
- Published 2026-05-06, accessed 2026-05-09: [Introducing Product Collection: Built for better decisions, in the AI era](https://www.atlassian.com/blog/company-news/introducing-product-collection)
- Published 2026-05-06, accessed 2026-05-09: [Atlassian Teamwork Graph: The context engine behind your AI everywhere](https://www.atlassian.com/blog/company-news/teamwork-graph-team-26)
- Last updated 2026-05-07, accessed 2026-05-09: [Teamwork Graph CLI](https://developer.atlassian.com/cloud/twg-cli/)
- Published 2026-03-24, accessed 2026-05-09: [Introducing Linear Agent](https://linear.app/changelog/2026-03-24-introducing-linear-agent)
- Published 2026-04-23, accessed 2026-05-09: [Linear Agent MCP support](https://linear.app/changelog/2026-04-23-linear-agent-mcp-support)
- Published 2026-04-27, accessed 2026-05-09: [An open-source spec for Codex orchestration: Symphony](https://openai.com/index/open-source-codex-orchestration-symphony/)
- Published 2026-03-24, accessed 2026-05-09: [Introducing JetBrains Central: An Open System for Agentic Software Development](https://blog.jetbrains.com/blog/2026/03/24/introducing-jetbrains-central-an-open-system-for-agentic-software-development/)
- Accessed 2026-05-09: [Architecture overview - Model Context Protocol](https://modelcontextprotocol.io/docs/learn/architecture)
- Published 2026-01-26, accessed 2026-05-09: [MCP Apps - Bringing UI Capabilities To MCP Clients](https://blog.modelcontextprotocol.io/posts/2026-01-26-mcp-apps/)
- Accessed 2026-05-09: [A2A Protocol Ships v1.0: Production-Ready Standard for Agent-to-Agent Communication](https://a2a-protocol.org/latest/announcing-1.0/)
- Accessed 2026-05-09: [AG-UI Overview](https://docs.ag-ui.com/)
- Accessed 2026-05-09: [AGENTS.md](https://agents.md/index)
- Published 2026-03-16, accessed 2026-05-09: [Okta Announces New Blueprint for the Secure Agentic Enterprise](https://investor.okta.com/news-and-events/news-releases/news-details/2026/Okta-Announces-New-Blueprint-for-the-Secure-Agentic-Enterprise/default.aspx)
- Published 2026-03-09, accessed 2026-05-09: [AvePoint Announces General Availability of AgentPulse Command Center, with Multicloud Agentic AI Governance](https://www.avepoint.com/news/avepoint-announces-general-availability-of-agent-pulse-command-center-with-multicloud-agentic-ai-governance-260309)
- Published 2026-05-05, accessed 2026-05-09: [Manage all your AI agents in one place with watsonx Orchestrate](https://www.ibm.com/new/announcements/manage-all-your-ai-agents-in-one-place-with-watsonx-orchestrate)
- Published 2026-05-05, accessed 2026-05-09: [WSO2 Launches Agent Manager to Bring Identity, Governance and Scale to Enterprise AI Agents](https://wso2.com/about/news/wso2-launches-agent-manager/)
- Published 2026-05-06, accessed 2026-05-09: [Collibra Launches AI Command Center to Scale Agentic AI with Real-Time Oversight and Continuous Control](https://www.collibra.com/company/newsroom/press-releases/collibra-launches-ai-command-center-to-scale-agentic-ai)
<!-- state-of-the-art:managed:end -->
