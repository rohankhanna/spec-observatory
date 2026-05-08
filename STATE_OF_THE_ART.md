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

2026-05-08

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

As of 2026-05-08, the ecosystem is still layered rather than consolidated into one end-to-end winner. The material change from fresh official research is not another frontier coding agent or another protocol. It is a sharper steering layer between product discovery and agent runtime: product systems, issue trackers, and shared work-management surfaces are being turned into agent control planes that connect intent, backlog context, and execution.

- Spec-first workflow tools still define the planning layer. Spec Kit, OpenSpec, and Kiro continue to cover greenfield scaffolding, repo-native living specs, and structured feature or bugfix workflows. OpenSpec still positions workspaces as in development, so the planning-layer conclusion does not change.
- The first-tier coding-agent set is unchanged in practical terms. No fresh official source from this review displaced the established front group of tools such as Codex, Claude Code, GitHub Copilot cloud agent, Gemini CLI, Jules, Junie, and OpenHands.
- Vendor harnesses, managed runtimes, and governance surfaces continue to converge on the same bundle: shared instructions, tools, memory or state, evaluation, secure execution, observability, and enterprise controls. OpenAI Agents SDK, GitHub AI Controls, Google Agents CLI plus Gemini Enterprise Agent Platform, AWS AgentCore, and Microsoft Agent 365 still anchor that layer.
- The material update is above that layer. Atlassian launched Product Collection on 2026-05-06 as an AI-powered product operating system that connects feedback, prioritization, Rovo, and delivery in Jira. Jira Product Discovery Enterprise adds centralized portfolio visibility and enterprise controls, and Teamwork Graph CLI adds a beta agent skill surface over Atlassian's work graph. Linear Agent is now public beta inside the issue tracker, with reusable skills, automations, and MCP-based extension points. OpenAI Symphony explicitly turns a project board such as Linear into an always-on orchestrator for coding agents. JetBrains Central remains the clearest dedicated software-production execution plane, but it is no longer the only notable steering surface tied directly to agentic delivery.
- Interoperability still looks strongest across open boundaries. MCP remains the tool and context substrate. MCP Apps remains the first official MCP UI extension. A2A v1.0 remains the clearest agent-to-agent standard. AG-UI remains the clearest open agent-to-user interaction layer. `AGENTS.md` remains the clearest lightweight repo-local instruction surface.
- Cross-vendor governance still matters as a distinct market layer. Microsoft Agent 365, GitHub AI Controls, Okta for AI Agents, and the newer governance products from AvePoint, IBM, WSO2, and Collibra keep reinforcing that control and oversight are now first-class layers, not just features buried inside model vendors or cloud runtimes.

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

The material change for 2026-05-08 is a better abstraction boundary above specs, coding agents, and runtimes. Product systems and issue trackers are no longer just adjacent planning tools. Atlassian, Linear, and OpenAI now each show a different version of the same pattern: the place where teams capture intent and manage work is becoming the place where agents get context, pick up tasks, run continuously, and stay measurable under human supervision. This layer is still less mature than the coding-agent layer, because Product Collection is early access, Jira Product Discovery Enterprise is not yet generally available, and Linear Agent is still in public beta. But the practical conclusion is materially stronger than before. The observatory should treat decision-to-delivery control planes as a first-class layer beside product discovery, not as a thin footnote to coding agents. The repository's current managed shape can already express that boundary, so the bounded update for this run is the report only.

## Sources

- Accessed 2026-05-08: [Spec Kit](https://github.github.com/spec-kit/)
- Accessed 2026-05-08: [OpenSpec](https://openspec.dev/)
- Page updated 2026-02-18, accessed 2026-05-08: [Kiro Specs](https://kiro.dev/docs/specs/)
- Published 2026-04-16, accessed 2026-05-08: [Codex for (almost) everything](https://openai.com/index/codex-for-almost-everything/)
- Published 2026-04-15, accessed 2026-05-08: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- Accessed 2026-05-08: [About GitHub Copilot cloud agent](https://docs.github.com/en/copilot/concepts/agents/cloud-agent/about-cloud-agent)
- Accessed 2026-05-08: [Agent management for enterprises](https://docs.github.com/en/copilot/concepts/agents/enterprise-management)
- Accessed 2026-05-08: [Gemini CLI](https://github.com/google-gemini/gemini-cli)
- Published 2026-04-22, accessed 2026-05-08: [Agents CLI in Agent Platform: create to production in one CLI](https://developers.googleblog.com/agents-cli-in-agent-platform-create-to-production-in-one-cli/)
- Last updated 2026-04-22, accessed 2026-05-08: [Scale your agents](https://docs.cloud.google.com/gemini-enterprise-agent-platform/scale)
- Posted 2026-04-22, accessed 2026-05-08: [Amazon Bedrock AgentCore adds new features to help developers build agents faster](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- Published 2026-05-01, accessed 2026-05-08: [Microsoft Agent 365, now generally available, expands capabilities and integrations](https://www.microsoft.com/en-us/security/blog/2026/05/01/microsoft-agent-365-now-generally-available-expands-capabilities-and-integrations/)
- Accessed 2026-05-08: [Jira Product Discovery](https://www.atlassian.com/software/jira/product-discovery)
- Published 2026-05-06, accessed 2026-05-08: [Introducing Product Collection: Built for better decisions, in the AI era](https://www.atlassian.com/blog/company-news/introducing-product-collection)
- Last updated 2026-05-06, accessed 2026-05-08: [Teamwork Graph CLI FAQ](https://developer.atlassian.com/cloud/twg-cli/faq/)
- Published 2026-03-24, accessed 2026-05-08: [Introducing Linear Agent](https://linear.app/changelog/2026-03-24-introducing-linear-agent)
- Published 2026-04-23, accessed 2026-05-08: [Linear Agent MCP support](https://linear.app/changelog/2026-04-23-linear-agent-mcp-support)
- Published 2026-04-27, accessed 2026-05-08: [An open-source spec for Codex orchestration: Symphony](https://openai.com/index/open-source-codex-orchestration-symphony/)
- Published 2026-03-24, accessed 2026-05-08: [Introducing JetBrains Central: An Open System for Agentic Software Development](https://blog.jetbrains.com/blog/2026/03/24/introducing-jetbrains-central-an-open-system-for-agentic-software-development/)
- Accessed 2026-05-08: [Architecture overview - Model Context Protocol](https://modelcontextprotocol.io/docs/learn/architecture)
- Published 2026-01-26, accessed 2026-05-08: [MCP Apps - Bringing UI Capabilities To MCP Clients](https://blog.modelcontextprotocol.io/posts/2026-01-26-mcp-apps/)
- Accessed 2026-05-08: [A2A Protocol Ships v1.0: Production-Ready Standard for Agent-to-Agent Communication](https://a2a-protocol.org/latest/announcing-1.0/)
- Accessed 2026-05-08: [AG-UI Overview](https://docs.ag-ui.com/)
- Accessed 2026-05-08: [AGENTS.md](https://agents.md/)
- Published 2026-03-16, accessed 2026-05-08: [Okta Announces New Blueprint for the Secure Agentic Enterprise](https://investor.okta.com/news-and-events/news-releases/news-details/2026/Okta-Announces-New-Blueprint-for-the-Secure-Agentic-Enterprise/default.aspx)
- Published 2026-03-09, accessed 2026-05-08: [AvePoint Announces General Availability of AgentPulse Command Center, with Multicloud Agentic AI Governance](https://www.avepoint.com/news/avepoint-announces-general-availability-of-agent-pulse-command-center-with-multicloud-agentic-ai-governance-260309)
- Published 2026-05-05, accessed 2026-05-08: [Manage all your AI agents in one place with watsonx Orchestrate](https://www.ibm.com/new/announcements/manage-all-your-ai-agents-in-one-place-with-watsonx-orchestrate)
- Published 2026-05-05, accessed 2026-05-08: [WSO2 Launches Agent Manager to Bring Identity, Governance and Scale to Enterprise AI Agents](https://wso2.com/about/news/wso2-launches-agent-manager/)
- Published 2026-05-06, accessed 2026-05-08: [Collibra Launches AI Command Center to Scale Agentic AI with Real-Time Oversight and Continuous Control](https://www.collibra.com/company/newsroom/press-releases/collibra-launches-ai-command-center-to-scale-agentic-ai)
<!-- state-of-the-art:managed:end -->
