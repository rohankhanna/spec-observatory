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

2026-05-31

## Scope

This document tracks the state of the art for:

- spec-driven development
- outcome-driven development and product discovery
- coding-agent execution
- repo-owned instruction, context, and workflow files
- vendor agent harnesses and managed lifecycle surfaces
- general agent build, deploy, runtime, and operating surfaces
- orchestration and interoperability
- software portfolio and project steering
- agent governance and control planes

## Current View

As of 2026-05-31, the 2026-05-30 split between portable planning, repo-owned instruction surfaces, harness-native instruction surfaces, and local orchestration surfaces still holds. Fresh official-source review across Spec Kit, OpenSpec, Kiro, OpenAI, Claude Code, GitHub Copilot, Google Antigravity, AWS AgentCore, MCP, ACP, and A2A did not overturn the current reading of planning layers, harness-native orchestration, or protocol boundaries.

The material correction is higher in the stack. Official Atlassian Product Collection materials and current Linear docs make a distinct `product discovery, feedback, and decision` layer explicit between `shared context backbones` and `portfolio or executive steering`. This layer joins customer-signal capture, prioritization, AI-assisted analysis, release tracking, and delivery feedback. Atlassian Strategy Collection and Focus still sit above it as executive control planes; Teamwork Graph-like shared context systems still sit below it.

- Accessed on 2026-05-31, Spec Kit still pairs `Spec -> Plan -> Tasks -> Implement` with portable workflow automation.
- Accessed on 2026-05-31, OpenSpec still positions checked-in proposals, design notes, tasks, and spec deltas as the lightweight agent-agnostic planning layer.
- Published on 2026-05-29 and accessed on 2026-05-31, Kiro's latest official materials still combine Specs, autonomous web pull-request flows, and parallel or review-loop execution.
- Published on 2026-04-15 and accessed on 2026-05-31, OpenAI's Agents SDK still defines a model-native harness with sandbox execution and portable `Manifest`; workspace agents, last updated on 2026-05-29 and accessed on 2026-05-31, still provide the managed cloud counterpart.
- Accessed on 2026-05-31, Claude Code and GitHub Copilot still make subagents, agent teams, or parallel delegation first-class local orchestration primitives.
- Published on 2026-05-19 and accessed on 2026-05-31, Google explicitly transitions Gemini CLI toward Antigravity CLI, reinforcing Antigravity as the canonical local Google harness rather than a parallel sibling.
- Published on 2026-04-22 and accessed on 2026-05-31, AWS AgentCore still spans both the managed harness layer and the broader agent platform layer.
- Accessed on 2026-05-31, official protocol materials still support the existing split: `MCP core plus official extensions`, `ACP` for client-to-agent control, and `A2A v1.0` for agent-to-agent coordination.
- Accessed on 2026-05-31, Atlassian Product Collection packages feedback capture, Jira Product Discovery, and Rovo around product decisions that stay connected to delivery.
- Accessed on 2026-05-31, Linear Customer Requests and Releases reinforce the same layer from a second vendor by linking customer feedback directly to issues or projects and by recording what shipped and when.
- Published on 2026-05-06 and accessed on 2026-05-31, Atlassian Strategy Collection still presents Focus as the executive command center over goals, budgets, delivery health, and human or AI capital.

This is a bounded hierarchy update, not a stack reset. The observatory should stop collapsing `product discovery and decision surfaces` into the broader `software portfolio and project steering` bucket.

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

- GitHub Copilot subagents
- Claude Code subagents and agent teams
- Kiro parallel task execution, autonomous web flows, and CLI review loops
- Antigravity CLI subagents

### Integrated spec-execution surfaces inside agent harnesses

- Kiro Specs
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
- MCP Apps
- MCP Tasks
- MCP Registry
- ACP
- A2A v1.0

### Shared context backbones and agent control planes

- OpenAI Symphony
- Atlassian Teamwork Collection
- Atlassian Teamwork Graph
- Linear Agent

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

The practical map for 2026-05-31 is still layered, but the top of the stack now needs the same kind of split that the middle of the stack needed on 2026-05-30.

- Keep portable repo-native planning layers distinct from portable repo-native workflow automation.
- Keep repo-owned markdown contracts and procedural workflow files distinct from harness-native instruction and capability surfaces.
- Keep harness-native orchestration distinct from both repo-native workflow automation and external work-control planes.
- Add a distinct `product discovery, feedback, and decision` layer between shared context backbones and executive portfolio steering.
- Treat Atlassian Product Collection plus Linear Customer Requests and Releases as the clearest official examples of that layer.
- Keep Strategy Collection and Focus above that layer, and Teamwork Graph-like shared context systems below it.
- Keep the AWS reading from 2026-05-29: AWS spans both managed harness and broader operating-surface layers.
- Keep the protocol split from 2026-05-29: `MCP core plus official extensions`, `ACP` for client-to-agent control, and `A2A v1.0` for agent-to-agent coordination.
- Keep asynchronous cloud coding agents as a distinct execution subtype alongside terminal and IDE agents.

## Sources

- Accessed 2026-05-31: [GitHub Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-05-31: [Spec Kit workflows](https://github.github.com/spec-kit/reference/workflows.html)
- Accessed 2026-05-31: [OpenSpec](https://openspec.dev/)
- Accessed 2026-05-31: [Kiro changelog](https://kiro.dev/changelog/)
- Published 2026-04-15 and accessed 2026-05-31: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- Published 2026-04-09 and last updated 2026-05-29, accessed 2026-05-31: [Workspace agents](https://academy.openai.com/public/clubs/work-users-ynjqu/resources/workspace-agents)
- Accessed 2026-05-31: [Claude Code features overview](https://code.claude.com/docs/en/features-overview)
- Accessed 2026-05-31: [Run agents in parallel](https://code.claude.com/docs/en/agents)
- Accessed 2026-05-31: [Custom agents and sub-agent orchestration](https://docs.github.com/en/copilot/how-tos/copilot-sdk/features/custom-agents)
- Accessed 2026-05-31: [About custom agents](https://docs.github.com/en/copilot/concepts/agents/copilot-cli/about-custom-agents)
- Published 2026-05-19 and accessed 2026-05-31: [An important update: Transitioning Gemini CLI to Antigravity CLI](https://developers.googleblog.com/an-important-update-transitioning-gemini-cli-to-antigravity-cli/)
- Published 2026-05-19 and accessed 2026-05-31: [All the news from the Google I/O 2026 Developer keynote](https://developers.googleblog.com/en/all-the-news-from-the-google-io-2026-developer-keynote/)
- Published 2026-04-22 and accessed 2026-05-31: [Amazon Bedrock AgentCore adds new features to help developers build agents faster](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- Accessed 2026-05-31: [MCP Tasks](https://modelcontextprotocol.io/extensions/tasks/overview)
- Accessed 2026-05-31: [The MCP Registry](https://modelcontextprotocol.io/registry/about)
- Published 2026-05-21 and accessed 2026-05-31: [Logout Method is stabilized](https://agentclientprotocol.com/announcements/logout-method-stabilized)
- Accessed 2026-05-31: [A2A Protocol Ships v1.0](https://a2a-protocol.org/latest/announcing-1.0/)
- Accessed 2026-05-31: [Atlassian Product Collection](https://www.atlassian.com/collections/product)
- Published 2026-05-06 and accessed 2026-05-31: [Introducing Product Collection: Built for better decisions, in the AI era](https://www.atlassian.com/blog/company-news/introducing-product-collection)
- Published 2026-05-06 and accessed 2026-05-31: [Built for the next era of teamwork: What's new in Teamwork Collection](https://www.atlassian.com/blog/company-news/teamwork-collection-team-26)
- Published 2026-05-06 and accessed 2026-05-31: [Strategy Collection your executive command center: From insight to action](https://www.atlassian.com/blog/company-news/strategy-collection-team-26)
- Accessed 2026-05-31: [Customer Requests](https://linear.app/docs/customer-requests)
- Accessed 2026-05-31: [Releases](https://linear.app/docs/releases)
- Accessed 2026-05-31: [Linear Agent](https://linear.app/docs/linear-agent)
- Published 2026-04-27 and accessed 2026-05-31: [Symphony](https://openai.com/index/open-source-codex-orchestration-symphony/)
<!-- state-of-the-art:managed:end -->
