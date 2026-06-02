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

2026-06-02

## Scope

This document tracks the state of the art for:

- spec-driven development
- outcome-driven development and product discovery
- coding-agent execution
- repo-owned instruction, context, and workflow files
- vendor agent harnesses and managed lifecycle surfaces
- general agent build, deploy, runtime, and operating surfaces
- orchestration and interoperability
- shared context backbones
- work-control planes for software delivery
- software portfolio and project steering
- agent governance and control planes

## Current View

As of 2026-06-02, the 2026-06-01 layer split still mostly holds across Spec Kit, OpenSpec, Kiro, OpenAI, Atlassian, Linear, AWS, MCP, ACP, and A2A. Portable planning layers, harness-native execution and orchestration, managed harnesses, protocol boundaries, and the split between shared context, work control, discovery, and portfolio steering remain intact.

The material correction is inside the `work-control plane` layer. GitHub now belongs there explicitly, not only in `coding-agent execution`, `harness-native surfaces`, or `managed harnesses`. Current official GitHub materials describe one GitHub-owned operational surface where humans and agents can start and steer work from issues, pull requests, projects, the Agents UI, and automations; switch among Copilot, Codex, Claude, and partner agent apps; and govern that work through AI Controls, policy gates, session visibility, and audit events. The better abstraction boundary is therefore not `issue trackers versus everything else`, but `work systems where tickets, pull requests, projects, and agent sessions are the active control object`.

Teamwork Graph and Linear Code Intelligence still read as context fabrics rather than work systems. Symphony still expresses the same pattern from the orchestrator side by turning a tracker into an always-on agent supervisor. Atlassian and Linear still keep discovery and portfolio layers distinct above active work systems. AWS AgentCore, MCP, ACP, and A2A still support the prior reading.

- Accessed on 2026-06-02, Spec Kit still defines the portable `Spec -> Plan -> Tasks -> Implement` workflow plus repo-native workflow automation.
- Accessed on 2026-06-02, OpenSpec still positions checked-in specs, proposals, design notes, tasks, and spec deltas as the lightweight agent-agnostic planning layer.
- Published on 2026-05-06 and 2026-05-29, then accessed on 2026-06-02, Kiro's Quick Plan, requirements analysis, parallel task execution, and subagent review loops strengthen but do not change its placement as an integrated spec-execution harness.
- Published on 2026-04-15 and 2026-04-22, then accessed on 2026-06-02, OpenAI's Agents SDK and workspace agents still define model-native and managed harness surfaces; published on 2026-04-27 and accessed on 2026-06-02, Symphony still makes the tracker-as-control-plane pattern explicit above them.
- Published on 2026-05-06 and accessed on 2026-06-02, Atlassian still separates Teamwork Graph from Teamwork Collection, Product Collection, and Strategy Collection.
- Published on 2026-03-24 and 2026-05-14, then accessed on 2026-06-02, Linear still separates Linear Agent from Code Intelligence and keeps Customer Requests plus Releases as distinct discovery and feedback surfaces.
- Published on 2026-02-04, 2026-02-26, and 2026-04-23, then accessed on 2026-06-02, GitHub now makes the same control-plane layer explicit from the repo side: agents run inside GitHub with shared context and governance, sessions are visible and steerable from issues and projects, and third-party agents plus agent apps reuse the same issue, pull-request, and Agents entry points. Accessed on 2026-06-02, GitHub docs also show Copilot cloud agent, the Copilot SDK, and cloud and local sandboxes as an increasingly complete managed harness stack beneath that control surface.
- Published on 2026-04-09 and 2026-04-22, then accessed on 2026-06-02, AWS AgentCore and Agent Registry still span governed harness surfaces and broader operating-surface layers.
- Accessed on 2026-06-02, official protocol materials still support the existing split: MCP core plus Tasks and Registry surfaces, ACP for client-to-agent control, and A2A v1.0 for agent-to-agent coordination.

This is a bounded hierarchy correction, not a stack reset. The observatory should stop treating GitHub mostly as a coding-agent or harness surface and start treating it as a first-class repo-native `work-control plane`.

## Notable Categories

### Portable repo-native spec and planning layers

- Spec Kit
- OpenSpec

### Portable repo-native workflow automation

- Spec Kit workflows

### Repo-owned instruction, context, and workflow files

- `AGENTS.md`
- `CLAUDE.md`
- `GEMINI.md`
- `SKILL.md`
- repo-owned workflow contracts such as `WORKFLOW.md`

### Harness-native instruction and capability surfaces

- GitHub custom agents
- OpenAI `Manifest` workspace abstraction
- Claude Code skills
- Kiro steering surfaces
- Google Antigravity configuration, hook, plugin, and skills surfaces
- AgentCore harness configs and skills

### Harness-native orchestration surfaces

- GitHub Copilot sub-agent orchestration
- Claude Code subagents, agent view, and agent teams
- Kiro parallel task execution and subagent review loops
- Antigravity CLI subagents

### Integrated spec-execution surfaces inside agent harnesses

- Kiro Specs
- Kiro Quick Plan
- Kiro requirements analysis
- Kiro Web autonomous workflows

### Coding-agent execution

- Codex
- GitHub Copilot
- Claude Code
- Kiro
- Antigravity CLI

### Managed agent harnesses and lifecycle surfaces

- OpenAI Agents SDK and ChatGPT workspace agents
- GitHub Copilot cloud agent, third-party coding agents, agent apps, and Copilot SDK
- Google Antigravity 2.0 and managed agents in the Gemini API
- Amazon Bedrock AgentCore Harness, Managed Agents on Bedrock, and Agent Registry

### General agent platforms and operating surfaces

- GitHub cloud and local sandboxes
- Amazon Bedrock AgentCore Runtime
- Amazon Bedrock AgentCore Gateway
- Amazon Bedrock AgentCore Identity
- Amazon Bedrock AgentCore Observability
- Amazon Bedrock AgentCore Browser
- Amazon Bedrock AgentCore Code Interpreter
- Amazon Bedrock AgentCore Evaluations
- Amazon Bedrock AgentCore Policy

### Interoperability protocols and extension surfaces

- MCP core
- MCP Tasks
- MCP Registry
- ACP
- A2A v1.0

### Shared context backbones

- Atlassian Teamwork Graph
- Linear Code Intelligence

### Work-control planes

- OpenAI Symphony
- Atlassian Teamwork Collection
- Atlassian Agents in Jira
- Linear Agent
- AI Agents in Linear
- GitHub Agents, Issues/Projects session surfaces, pull-request agent loops, and Copilot automations

### Product discovery, feedback, and decision surfaces

- Atlassian Product Collection
- Jira Product Discovery
- Linear Customer Requests
- Linear Releases

### Software portfolio and project steering

- Atlassian Strategy Collection
- Atlassian Focus

### Agent governance and control planes

- GitHub AI Controls / Agent Control Plane
- AWS Agent Registry approval workflows
- AWS AgentCore Policy
- isolated sandboxes, approval flows, and auditable agent activity as a now-common enterprise pattern

## Current Conclusion

The practical map for 2026-06-02 is still layered, but the `work-control plane` category is broader than the current report stated.

- Keep portable repo-native planning layers distinct from portable repo-native workflow automation.
- Keep repo-owned markdown contracts and procedural workflow files distinct from harness-native instruction and capability surfaces.
- Keep harness-native orchestration distinct from both repo-native workflow automation and higher-level work-control planes.
- Split `shared context backbones` from `work-control planes`.
- Treat Teamwork Graph and Linear Code Intelligence as context fabrics, not as the same layer as GitHub-, Jira-, Linear-, or Symphony-style control surfaces.
- Treat Symphony, Teamwork Collection and Agents in Jira, Linear Agent and AI Agents in Linear, and GitHub's agentic GitHub surfaces as the clearest current work-control planes.
- Do not reserve the `work-control plane` reading only for standalone issue trackers; a repository platform can occupy the same layer when it unifies delegation, steering, review, and audit around active work items.
- Keep `product discovery, feedback, and decision` distinct from both context backbones and work-control planes, even when a vendor bundles them together in one product surface.
- Keep Atlassian Product Collection plus Linear Customer Requests and Releases as the clearest official examples of that discovery layer.
- Keep Strategy Collection and Focus above that layer.
- Keep GitHub AI Controls / Agent Control Plane and AWS approval and policy surfaces in the governance layer.
- Keep asynchronous cloud coding agents as a distinct execution subtype alongside terminal and IDE agents.

## Sources

- Accessed 2026-06-02: [GitHub Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-06-02: [Spec Kit workflows](https://github.github.com/spec-kit/reference/workflows.html)
- Accessed 2026-06-02: [OpenSpec](https://openspec.dev/)
- Published 2026-05-06 and accessed 2026-06-02: [Kiro 0.12 changelog](https://kiro.dev/changelog/ide/0-12/)
- Published 2026-05-29 and accessed 2026-06-02: [Kiro 2.5 changelog](https://kiro.dev/changelog/cli/2-5/)
- Published 2026-04-15 and accessed 2026-06-02: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- Published 2026-04-22 and accessed 2026-06-02: [Introducing workspace agents in ChatGPT](https://openai.com/index/introducing-workspace-agents-in-chatgpt/)
- Published 2026-04-27 and accessed 2026-06-02: [An open-source spec for Codex orchestration: Symphony](https://openai.com/index/open-source-codex-orchestration-symphony/)
- Accessed 2026-06-02: [Atlassian Teamwork Graph](https://www.atlassian.com/platform/teamwork-graph)
- Published 2026-05-06 and accessed 2026-06-02: [Built for the Next Era of Teamwork: What's New in Teamwork Collection](https://www.atlassian.com/blog/company-news/teamwork-collection-team-26)
- Published 2026-05-06 and accessed 2026-06-02: [Introducing Product Collection](https://www.atlassian.com/blog/company-news/introducing-product-collection)
- Published 2026-05-06 and accessed 2026-06-02: [Strategy Collection your executive command center](https://www.atlassian.com/blog/company-news/strategy-collection-team-26)
- Published 2026-03-24 and accessed 2026-06-02: [Introducing Linear Agent](https://linear.app/changelog/2026-03-24-introducing-linear-agent)
- Accessed 2026-06-02: [Linear Agent docs](https://linear.app/docs/linear-agent)
- Accessed 2026-06-02: [AI Agents in Linear](https://linear.app/docs/agents-in-linear)
- Published 2026-05-14 and accessed 2026-06-02: [Code Intelligence for Linear Agent](https://linear.app/now/code-intelligence-for-linear-agent)
- Accessed 2026-06-02: [Linear Customer Requests](https://linear.app/docs/customer-requests)
- Accessed 2026-06-02: [Linear Releases](https://linear.app/docs/releases)
- Published 2026-02-04 and accessed 2026-06-02: [Pick your agent: Use Claude and Codex on Agent HQ](https://github.blog/news-insights/company-news/pick-your-agent-use-claude-and-codex-on-agent-hq/)
- Published 2026-02-26 and accessed 2026-06-02: [Claude and Codex now available for Copilot Business & Pro users](https://github.blog/changelog/2026-02-26-claude-and-codex-now-available-for-copilot-business-pro-users/)
- Published 2026-04-23 and accessed 2026-06-02: [View and manage agent sessions from issues and projects](https://github.blog/changelog/2026-04-23-view-and-manage-agent-sessions-from-issues-and-projects/)
- Accessed 2026-06-02: [About GitHub Copilot cloud agent](https://docs.github.com/en/copilot/concepts/agents/cloud-agent/about-cloud-agent)
- Accessed 2026-06-02: [About third-party coding agents](https://docs.github.com/en/copilot/concepts/agents/about-third-party-coding-agents)
- Accessed 2026-06-02: [About agent apps](https://docs.github.com/en/copilot/concepts/agents/agent-apps)
- Accessed 2026-06-02: [Agent management for enterprises](https://docs.github.com/en/copilot/concepts/agents/enterprise-management)
- Accessed 2026-06-02: [About Copilot automations](https://docs.github.com/en/copilot/concepts/agents/cloud-agent/about-automations)
- Accessed 2026-06-02: [About cloud and local sandboxes for GitHub Copilot](https://docs.github.com/en/copilot/concepts/about-cloud-and-local-sandboxes)
- Published 2026-04-22 and accessed 2026-06-02: [Amazon Bedrock AgentCore update](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- Published 2026-04-09 and accessed 2026-06-02: [AWS Agent Registry](https://aws.amazon.com/about-aws/whats-new/2026/04/aws-agent-registry-in-agentcore-preview/)
- Accessed 2026-06-02: [MCP Tasks](https://modelcontextprotocol.io/extensions/tasks/overview)
- Accessed 2026-06-02: [MCP Registry](https://modelcontextprotocol.io/registry/about)
- Published 2026-05-21 and accessed 2026-06-02: [Logout Method is stabilized](https://agentclientprotocol.com/announcements/logout-method-stabilized)
- Accessed 2026-06-02: [A2A Protocol ships v1.0](https://a2a-protocol.org/latest/announcing-1.0/)
<!-- state-of-the-art:managed:end -->
