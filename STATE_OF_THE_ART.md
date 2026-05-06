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

2026-05-06

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

As of 2026-05-06, the ecosystem is still layered rather than consolidated into one end-to-end winner. The material change from fresh official research is not another protocol or coding agent. It is a stronger and broader governance boundary: cross-vendor agent control planes are becoming a distinct market layer, not just a feature of hyperscalers and developer-tool vendors.

- Spec-first workflow tools still define the planning layer. Spec Kit, OpenSpec, and Kiro continue to cover greenfield scaffolding, repo-native living specs, and structured feature or bugfix workflows. OpenSpec still positions workspaces as in development, so the planning-layer conclusion does not change.
- The first-tier coding-agent set is unchanged in practical terms. Codex, Claude Code, GitHub Copilot cloud agent, Gemini CLI, Jules, Junie, and OpenHands still define the frontier coding-agent landscape.
- Vendor harnesses and customization surfaces still deserve first-class treatment. OpenAI, Anthropic, GitHub, Google, and AWS each expose distinct ways to shape the agent loop through repo instructions, skills or plugins, custom agents, tool integration, evaluation, and managed execution surfaces.
- Managed agent operating platforms continue to converge on the same bundle: runtime, memory or state, evaluation, observability, secure execution, and tool or gateway surfaces. AWS AgentCore and Google Gemini Enterprise Agent Platform remain the clearest examples, while Windows 365 for Agents remains a notable execution substrate rather than a top-level control plane.
- The material update is above that layer. Microsoft Agent 365 now has company in the cross-vendor governance tier: Okta has made agent identity and lifecycle control generally available; AvePoint has made multicloud agent governance generally available across Microsoft 365 and Google Cloud; IBM now explicitly positions watsonx Orchestrate as an agentic control plane; WSO2 has launched an open control plane for governing agents across frameworks and environments; and Collibra has launched an AI Command Center that pairs continuous control with governed MCP-delivered context.
- Interoperability still looks strongest across open boundaries. MCP remains the tool and context substrate. A2A v1.0 remains the clearest agent-to-agent standard. MCP Apps remains notable as the first official MCP UI extension. `AGENTS.md` remains the clearest lightweight repo-local instruction surface.
- Outcome framing and portfolio steering remain thinner than the coding-agent stack. Jira Product Discovery remains the clearest product-discovery surface, and JetBrains Central remains the most notable software-production control and execution plane tied directly to agentic software delivery.

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

### Outcome framing and product discovery

- outcome-driven development terminology
- Jira Product Discovery

### Software-production control and execution planes

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

The material change for 2026-05-06 is a better abstraction boundary above the build and runtime layers. The market is no longer just converging on similar agent stacks or proving that cross-vendor composition is possible. It is also producing a distinct control-plane layer, with identity, governance, data, and orchestration vendors shipping products that discover, govern, secure, evaluate, and sometimes operate agents across heterogeneous stacks. The observatory should keep treating governance and control as a first-class layer above coding agents, harnesses, and runtimes. The repository's current managed shape already fits that picture, so the bounded update for this run is the report only.

## Sources

- Accessed 2026-05-06: [Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-05-06: [OpenSpec](https://openspec.dev/)
- Accessed 2026-05-06: [Kiro Specs](https://kiro.dev/docs/specs/)
- Published 2026-04-16, accessed 2026-05-06: [Codex for (almost) everything](https://openai.com/index/codex-for-almost-everything/)
- Published 2026-04-15, accessed 2026-05-06: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- Published 2026-04-28, accessed 2026-05-06: [OpenAI models, Codex, and Managed Agents come to AWS](https://openai.com/index/openai-on-aws/)
- Accessed 2026-05-06: [Plugins in the SDK](https://code.claude.com/docs/en/agent-sdk/plugins)
- Accessed 2026-05-06: [About GitHub Copilot cloud agent](https://docs.github.com/en/copilot/concepts/agents/cloud-agent/about-cloud-agent)
- Accessed 2026-05-06: [About custom agents](https://docs.github.com/en/copilot/concepts/agents/cloud-agent/about-custom-agents)
- Accessed 2026-05-06: [Agent management for enterprises](https://docs.github.com/en/copilot/concepts/agents/enterprise-management)
- Accessed 2026-05-06: [Gemini CLI](https://github.com/google-gemini/gemini-cli)
- Accessed 2026-05-06: [Jules](https://jules.google/docs)
- Accessed 2026-05-06: [Junie](https://junie.jetbrains.com/)
- Accessed 2026-05-06: [OpenHands](https://openhands.dev/)
- Published 2026-04-22, accessed 2026-05-06: [Agents CLI in Agent Platform: create to production in one CLI](https://developers.googleblog.com/agents-cli-in-agent-platform-create-to-production-in-one-cli/)
- Last updated 2026-04-22, accessed 2026-05-06: [Scale your agents](https://docs.cloud.google.com/gemini-enterprise-agent-platform/scale)
- Published 2026-04-22, accessed 2026-05-06: [Amazon Bedrock AgentCore adds new features to help developers build agents faster](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- Published 2026-04-30, accessed 2026-05-06: [Amazon Bedrock AgentCore launches capabilities for optimizing agent performance in preview](https://aws.amazon.com/about-aws/whats-new/2026/05/bedrock-agentcore-optimization-preview/)
- Published 2026-05-01, accessed 2026-05-06: [Microsoft Agent 365, now generally available, expands capabilities and integrations](https://www.microsoft.com/en-us/security/blog/2026/05/01/microsoft-agent-365-now-generally-available-expands-capabilities-and-integrations/)
- Last updated 2026-05-01, accessed 2026-05-06: [Windows 365 for Agents in Agent 365](https://learn.microsoft.com/en-us/windows-365/agents/w365a-availability-a365)
- Published 2026-03-16, accessed 2026-05-06: [Okta Announces New Blueprint for the Secure Agentic Enterprise](https://investor.okta.com/news-and-events/news-releases/news-details/2026/Okta-Announces-New-Blueprint-for-the-Secure-Agentic-Enterprise/default.aspx)
- Published 2026-03-09, accessed 2026-05-06: [AvePoint Announces General Availability of AgentPulse Command Center, with Multicloud Agentic AI Governance](https://www.avepoint.com/news/avepoint-announces-general-availability-of-agent-pulse-command-center-with-multicloud-agentic-ai-governance-260309)
- Published 2026-05-05, accessed 2026-05-06: [Manage all your AI agents in one place with watsonx Orchestrate](https://www.ibm.com/new/announcements/manage-all-your-ai-agents-in-one-place-with-watsonx-orchestrate)
- Published 2026-05-05, accessed 2026-05-06: [WSO2 Launches Agent Manager to Bring Identity, Governance and Scale to Enterprise AI Agents](https://wso2.com/about/news/wso2-launches-agent-manager/)
- Published 2026-05-06, accessed 2026-05-06: [Collibra Launches AI Command Center to Scale Agentic AI with Real-Time Oversight and Continuous Control](https://www.collibra.com/company/newsroom/press-releases/collibra-launches-ai-command-center-to-scale-agentic-ai)
- Accessed 2026-05-06: [Model Context Protocol overview](https://modelcontextprotocol.io/)
- Published 2026-01-26, accessed 2026-05-06: [MCP Apps - Bringing UI Capabilities To MCP Clients](https://blog.modelcontextprotocol.io/posts/2026-01-26-mcp-apps/)
- Accessed 2026-05-06: [A2A Protocol Ships v1.0: Production-Ready Standard for Agent-to-Agent Communication](https://a2a-protocol.org/latest/announcing-1.0/)
- Accessed 2026-05-06: [AG-UI introduction](https://docs.ag-ui.com/quickstart/introduction)
- Accessed 2026-05-06: [AGENTS.md](https://agents.md/)
- Published 2026-03-24, accessed 2026-05-06: [Introducing JetBrains Central: An Open System for Agentic Software Development](https://blog.jetbrains.com/blog/2026/03/24/introducing-jetbrains-central-an-open-system-for-agentic-software-development/)
- Accessed 2026-05-06: [Jira Product Discovery](https://www.atlassian.com/software/jira/product-discovery)
<!-- state-of-the-art:managed:end -->
