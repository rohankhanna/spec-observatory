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

2026-05-10

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

As of 2026-05-10, the ecosystem is still layered rather than consolidated into one end-to-end winner. The material change from fresh official research is a correction in the managed team-agent layer: OpenAI should no longer be represented mainly as a coding-agent plus SDK or orchestration vendor. Its official surfaces now include ChatGPT workspace agents, which add shared agent building, schedules, Slack deployment, skills, custom MCP servers, analytics, and admin controls. The May 6, 2026 admin-console expansion and May 7, 2026 EKM support make that layer harder to treat as incidental.

- Spec-first workflow tools still define the planning layer. Spec Kit, OpenSpec, and Kiro remain the clearest examples of greenfield scaffolding, repo-native living specs, and structured feature or bugfix workflows. Kiro's current specs docs continue to reinforce explicit requirements, design, tasks, and dependency-aware parallel execution.
- The first-tier coding-agent set remains Codex, Claude Code, GitHub Copilot cloud agent, Gemini CLI, Jules, Junie, OpenHands, and Atlassian Rovo Dev. No fresh official source reviewed on 2026-05-10 displaced that front group.
- The practical correction sits above the coding-agent layer. OpenAI now has a first-party shared agent operating surface in ChatGPT, not just Codex and the Agents SDK. That places OpenAI more directly beside GitHub custom agents plus AI Controls, Google Gemini Enterprise Agent Platform, AWS Managed Agents and AgentCore, and Atlassian's Rovo surfaces.
- Atlassian still has the strongest decision-to-delivery stack. Rovo Dev is tied to Jira work items and Teamwork Graph; Rovo Studio broadens Atlassian into governed agent, automation, and app building; Product Collection and Jira Product Discovery connect feedback, prioritization, roadmapping, and delivery. The correction is not that Atlassian became weaker. It is that OpenAI moved higher into the shared-agent operating layer than the 2026-05-09 report captured.
- Interoperability still looks strongest across open boundaries. MCP remains the tool and context substrate. MCP Apps remains the clearest official UI extension. A2A v1.0 remains the clearest agent-to-agent standard. AG-UI remains the clearest open agent-to-user interaction layer. `AGENTS.md` remains the clearest lightweight repo-local instruction surface.
- Steering and governance remain distinct layers. Linear Agent plus MCP, OpenAI Symphony, and JetBrains Central show project systems becoming orchestration and software-production control planes. GitHub AI Controls, Microsoft Agent 365, and OpenAI's workspace-agent admin surfaces keep reinforcing that enterprise governance is now a first-class layer rather than a buried vendor feature.

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

### Vendor agent harnesses and managed operating surfaces

- OpenAI Agents SDK, Codex plugins or skills, and ChatGPT workspace agents
- GitHub Copilot custom agents and AI Controls
- Google Agents CLI, ADK, and Gemini Enterprise Agent Platform
- Amazon Bedrock Managed Agents powered by OpenAI
- Amazon Bedrock AgentCore managed harness, CLI, and skills
- Atlassian Rovo Studio

### Interoperability and coordination surfaces

- MCP
- MCP Apps
- A2A
- AG-UI
- `AGENTS.md`

### Shared work context, outcome framing, and portfolio steering

- Atlassian Teamwork Graph
- Teamwork Graph CLI
- Jira Product Discovery
- Atlassian Product Collection
- Linear Agent and Linear MCP
- OpenAI Symphony
- JetBrains Central

### Agent governance and control planes

- GitHub Copilot AI Controls
- Microsoft Agent 365
- OpenAI workspace-agent admin controls
- enterprise agent governance as a distinct market layer

## Current Conclusion

The material update for 2026-05-10 is a correction to the vendor-stack picture. OpenAI now clearly spans more of the stack than the 2026-05-09 report acknowledged: Codex as a coding agent, Agents SDK as a harness, ChatGPT workspace agents as a shared managed operating surface, and Symphony as an orchestration pattern tied to task systems. Atlassian remains the clearest product-steering stack because it connects feedback, prioritization, shared work-graph context, and coding-agent execution. The ecosystem is still not consolidated into one winner, but the prior report understated how far OpenAI had already moved upward from coding agent and SDK into enterprise agent operations. The bounded update for this run is the report only.

## Sources

- Accessed 2026-05-10: [Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-05-10: [OpenSpec](https://openspec.dev/)
- Page updated 2026-05-05, accessed 2026-05-10: [Kiro Specs](https://kiro.dev/docs/specs/)
- Published 2026-04-16, accessed 2026-05-10: [Codex for almost everything](https://openai.com/index/codex-for-almost-everything/)
- Published 2026-04-15, accessed 2026-05-10: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- Published 2026-04-22, accessed 2026-05-10: [Introducing workspace agents in ChatGPT](https://openai.com/index/introducing-workspace-agents-in-chatgpt/)
- Updated 2026-05-09, accessed 2026-05-10: [ChatGPT Enterprise & Edu - Release Notes](https://help.openai.com/en/articles/10128477-chatgpt-enterprise-edu-release-notes)
- Published 2026-04-27, accessed 2026-05-10: [An open-source spec for Codex orchestration: Symphony](https://openai.com/index/open-source-codex-orchestration-symphony/)
- Accessed 2026-05-10: [About GitHub Copilot cloud agent](https://docs.github.com/en/copilot/concepts/agents/cloud-agent/about-cloud-agent)
- Accessed 2026-05-10: [Agent management for enterprises](https://docs.github.com/en/copilot/concepts/agents/enterprise-management)
- Published 2026-04-22, accessed 2026-05-10: [Agents CLI in Agent Platform: create to production in one CLI](https://developers.googleblog.com/agents-cli-in-agent-platform-create-to-production-in-one-cli/)
- Accessed 2026-05-10: [AI Agents for Gemini Enterprise app](https://cloud.google.com/gemini-enterprise/agents)
- Published 2026-04-28, accessed 2026-05-10: [Amazon Bedrock now offers OpenAI models, Codex, and Managed Agents (Limited Preview)](https://aws.amazon.com/about-aws/whats-new/2026/04/bedrock-openai-models-codex-managed-agents/)
- Published 2026-04-22, accessed 2026-05-10: [Amazon Bedrock AgentCore adds new features to help developers build agents faster](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- Accessed 2026-05-10: [Rovo Dev](https://www.atlassian.com/software/rovo-dev)
- Published 2026-05-06, accessed 2026-05-10: [Rovo makes AI-native teamwork real for the enterprise](https://www.atlassian.com/blog/company-news/rovo-team-26)
- Published 2026-05-06, accessed 2026-05-10: [Introducing Product Collection: Built for better decisions, in the AI era](https://www.atlassian.com/blog/company-news/introducing-product-collection)
- Published 2026-05-06, accessed 2026-05-10: [Atlassian Teamwork Graph: The context engine behind your AI-everywhere](https://www.atlassian.com/blog/company-news/teamwork-graph-team-26)
- Last updated 2026-05-07, accessed 2026-05-10: [Teamwork Graph CLI](https://developer.atlassian.com/cloud/twg-cli/)
- Accessed 2026-05-10: [Jira Product Discovery](https://www.atlassian.com/software/jira/product-discovery)
- Published 2026-04-23, accessed 2026-05-10: [Linear Agent MCP support](https://linear.app/changelog/2026-04-23-linear-agent-mcp-support)
- Published 2026-03-24, accessed 2026-05-10: [Introducing JetBrains Central: An Open System for Agentic Software Development](https://blog.jetbrains.com/blog/2026/03/24/introducing-jetbrains-central-an-open-system-for-agentic-software-development/)
- Accessed 2026-05-10: [Architecture overview - Model Context Protocol](https://modelcontextprotocol.io/docs/learn/architecture)
- Published 2026-01-26, accessed 2026-05-10: [MCP Apps - Bringing UI Capabilities To MCP Clients](https://blog.modelcontextprotocol.io/posts/2026-01-26-mcp-apps/)
- Accessed 2026-05-10: [A2A Protocol Ships v1.0: Production-Ready Standard for Agent-to-Agent Communication](https://a2a-protocol.org/latest/announcing-1.0/)
- Accessed 2026-05-10: [AG-UI Overview](https://docs.ag-ui.com/)
- Accessed 2026-05-10: [AGENTS.md](https://agents.md/index)
- Published 2026-05-01, accessed 2026-05-10: [Microsoft Agent 365, now generally available, expands capabilities and integrations](https://www.microsoft.com/en-us/security/blog/2026/05/01/microsoft-agent-365-now-generally-available-expands-capabilities-and-integrations/)
<!-- state-of-the-art:managed:end -->
