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

2026-06-01

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

As of 2026-06-01, the 2026-05-30 and 2026-05-31 layer splits still mostly hold. Fresh official-source review across Spec Kit, OpenSpec, Kiro, OpenAI, Atlassian, Linear, AWS, MCP, ACP, and A2A did not overturn the current reading of portable planning layers, harness-native execution and orchestration, managed harnesses, or protocol boundaries.

The material correction is between shared context and higher-order product or portfolio surfaces. Current official Atlassian and Linear materials, together with OpenAI's Symphony specification, make `work-control planes` explicit enough to separate from `shared context backbones`.

Teamwork Graph and Linear Code Intelligence are context fabrics. They unify or expose the information that agents and humans need across code, issues, docs, and connected tools. Symphony, Teamwork Collection and Agents in Jira, Linear Agent, AI Agents in Linear, issue delegation, triage intelligence, triage automations, and one-click issue handoff into coding tools use issue or project systems as the operational surface where work is assigned, delegated, triaged, automated, and audited. Product discovery surfaces remain distinct: they feed feedback, prioritization, and release evidence into those work systems, but they are not the same layer.

- Accessed on 2026-06-01, Spec Kit still defines the portable `Spec -> Plan -> Tasks -> Implement` workflow plus repo-native workflow automation.
- Accessed on 2026-06-01, OpenSpec still positions checked-in specs, proposals, design notes, tasks, and spec deltas as the lightweight agent-agnostic planning layer.
- Published on 2026-05-06 and 2026-05-29, then accessed on 2026-06-01, Kiro's Quick Plan, requirements analysis, parallel task execution, and subagent review loops strengthen but do not change its placement as an integrated spec-execution harness.
- Published on 2026-04-15 and 2026-04-22, then accessed on 2026-06-01, OpenAI's Agents SDK and workspace agents still define model-native and managed harness surfaces; published on 2026-04-27 and accessed on 2026-06-01, Symphony adds a clearer reading above them by turning an issue tracker into a control plane for coding agents.
- Published on 2026-05-06 and accessed on 2026-06-01, Atlassian now draws the same split from the opposite direction: Teamwork Graph is the data layer, while Teamwork Collection and Agents in Jira place agents directly inside the work system with audit trails and admin controls.
- Published on 2026-03-24 and 2026-05-14, then accessed on 2026-06-01, Linear makes the boundary explicit too: Code Intelligence brings code into shared product context, while Linear Agent, AI Agents, delegation, triage intelligence, triage automations, and issue launches into Codex or Claude Code operate on the active project system itself.
- Published on 2026-05-06 and accessed on 2026-06-01, Atlassian Product Collection still sits above or alongside those layers as the connected `feedback -> prioritization -> delivery` decision surface, and Strategy Collection still sits above that as the executive steering surface.
- Accessed on 2026-06-01, Linear Customer Requests and Releases still reinforce the same discovery and feedback layer by linking external customer signal and shipped release facts back into issues and projects.
- Published on 2026-04-09 and 2026-04-22, then accessed on 2026-06-01, AWS Agent Registry and AgentCore still span both governed harness surfaces and broader operating-surface layers.
- Accessed on 2026-06-01, official protocol materials still support the existing split: MCP core plus official extensions and registry surfaces, ACP for client-to-agent control, and A2A v1.0 for agent-to-agent coordination.

This is a bounded hierarchy correction, not a stack reset. The observatory should stop combining `shared context backbones` and `work-control planes` in the same category.

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
- Google Antigravity 2.0 and managed agents in the Gemini API
- GitHub Copilot custom agent surface
- Amazon Bedrock AgentCore Harness, Managed Agents on Bedrock, and Agent Registry

### General agent platforms and operating surfaces

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

### Product discovery, feedback, and decision surfaces

- Atlassian Product Collection
- Jira Product Discovery
- Linear Customer Requests
- Linear Releases

### Software portfolio and project steering

- Atlassian Strategy Collection
- Atlassian Focus

### Agent governance and control planes

- AWS Agent Registry approval workflows
- AWS AgentCore Policy
- isolated sandboxes, approval flows, and auditable agent activity as a now-common enterprise pattern

## Current Conclusion

The practical map for 2026-06-01 is still layered, but the middle-top of the stack now needs one cleaner split.

- Keep portable repo-native planning layers distinct from portable repo-native workflow automation.
- Keep repo-owned markdown contracts and procedural workflow files distinct from harness-native instruction and capability surfaces.
- Keep harness-native orchestration distinct from both repo-native workflow automation and higher-level work-control planes.
- Split `shared context backbones` from `work-control planes`.
- Treat Teamwork Graph and Linear Code Intelligence as context fabrics, not as the same layer as Jira-, Linear-, or Symphony-style control planes.
- Treat Symphony, Teamwork Collection and Agents in Jira, and Linear Agent and AI Agents in Linear as the clearest current work-control planes.
- Keep `product discovery, feedback, and decision` distinct from both context backbones and work-control planes, even when a vendor bundles them together in the same product surface.
- Keep Atlassian Product Collection plus Linear Customer Requests and Releases as the clearest official examples of that discovery layer.
- Keep Strategy Collection and Focus above that layer, and keep the AWS and protocol readings from 2026-05-29 onward unchanged.
- Keep asynchronous cloud coding agents as a distinct execution subtype alongside terminal and IDE agents.

## Sources

- Accessed 2026-06-01: [GitHub Spec Kit](https://github.github.com/spec-kit/)
- Accessed 2026-06-01: [Spec Kit workflows](https://github.github.com/spec-kit/reference/workflows.html)
- Accessed 2026-06-01: [OpenSpec](https://openspec.dev/)
- Published 2026-05-06 and accessed 2026-06-01: [Kiro 0.12 changelog](https://kiro.dev/changelog/ide/0-12/)
- Published 2026-05-29 and accessed 2026-06-01: [Kiro 2.5 changelog](https://kiro.dev/changelog/cli/2-5/)
- Published 2026-04-15 and accessed 2026-06-01: [OpenAI Agents SDK update](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- Published 2026-04-22 and accessed 2026-06-01: [OpenAI Workspace agents](https://openai.com/academy/workspace-agents/)
- Published 2026-04-27 and accessed 2026-06-01: [OpenAI Symphony](https://openai.com/index/open-source-codex-orchestration-symphony/)
- Published 2026-05-06 and accessed 2026-06-01: [Atlassian Teamwork Graph blog](https://www.atlassian.com/blog/company-news/teamwork-graph-team-26)
- Published 2026-05-06 and accessed 2026-06-01: [Atlassian Teamwork Collection blog](https://www.atlassian.com/blog/company-news/teamwork-collection-team-26)
- Accessed 2026-06-01: [Atlassian Teamwork Graph product page](https://www.atlassian.com/platform/teamwork-graph)
- Published 2026-05-06 and accessed 2026-06-01: [Atlassian Product Collection](https://www.atlassian.com/blog/company-news/introducing-product-collection)
- Published 2026-05-06 and accessed 2026-06-01: [Atlassian Strategy Collection](https://www.atlassian.com/blog/company-news/strategy-collection-team-26)
- Published 2026-03-24 and accessed 2026-06-01: [Linear Agent launch](https://linear.app/changelog/2026-03-24-introducing-linear-agent)
- Accessed 2026-06-01: [Linear Agent docs](https://linear.app/docs/linear-agent)
- Published 2026-05-14 and accessed 2026-06-01: [Linear Code Intelligence](https://linear.app/now/code-intelligence-for-linear-agent)
- Accessed 2026-06-01: [Linear AI Agents](https://linear.app/docs/agents-in-linear)
- Accessed 2026-06-01: [Linear issue delegation](https://linear.app/docs/assigning-issues)
- Accessed 2026-06-01: [Linear Triage](https://linear.app/docs/triage)
- Accessed 2026-06-01: [Linear Triage Intelligence](https://linear.app/docs/triage-intelligence)
- Accessed 2026-06-01: [Linear Customer Requests](https://linear.app/docs/customer-requests)
- Accessed 2026-06-01: [Linear Releases](https://linear.app/docs/releases)
- Published 2026-04-22 and accessed 2026-06-01: [AWS AgentCore update](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- Published 2026-04-09 and accessed 2026-06-01: [AWS Agent Registry](https://aws.amazon.com/about-aws/whats-new/2026/04/aws-agent-registry-in-agentcore-preview/)
- Accessed 2026-06-01: [MCP Tasks](https://modelcontextprotocol.io/extensions/tasks/overview)
- Accessed 2026-06-01: [MCP Registry](https://modelcontextprotocol.io/registry/about)
- Published 2026-05-21 and accessed 2026-06-01: [ACP logout stabilization](https://agentclientprotocol.com/announcements/logout-method-stabilized)
- Accessed 2026-06-01: [A2A v1.0 announcement](https://a2a-protocol.org/latest/announcing-1.0/)
<!-- state-of-the-art:managed:end -->
