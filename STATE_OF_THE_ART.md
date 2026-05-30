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

2026-05-30

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

As of 2026-05-30, the layered map from 2026-05-29 still holds, but one further abstraction boundary is now material. Orchestration is no longer only a cloud control-plane or protocol story. Official materials across Spec Kit, Claude Code, GitHub Copilot CLI, Kiro, and Google Antigravity now expose first-class local orchestration primitives: portable workflow runners, parallel task execution, built-in or custom subagents, agent teams, and self-correcting review loops. The practical map is therefore sharper if it distinguishes `instruction and capability surfaces` from `orchestration surfaces` inside local harnesses, and `portable planning layers` from `portable repo-native workflow automation`.

- Accessed on 2026-05-30, GitHub Spec Kit still presents `Spec -> Plan -> Tasks -> Implement`, 30 integrations, 105 extensions, and 22 presets. The official workflows docs now make clear that Spec Kit also owns a portable workflow layer with conditional logic, loops, fan-out and fan-in, and pause or resume semantics.
- Accessed on 2026-05-30, OpenSpec still positions checked-in specs, proposals, design notes, tasks, and spec deltas as a lightweight agent-agnostic planning layer that survives agent switching.
- Accessed on 2026-05-30, Kiro Specs still package requirements, design, and tasks. Kiro's task executor now explicitly documents parallel wave execution, Kiro Web remains the browser-based autonomous multi-repo pull-request surface, and Kiro CLI 2.5.0 adds subagent review loops that let reviewer and implementer stages iterate before results return.
- Published on 2026-04-15 and accessed on 2026-05-30, OpenAI's updated Agents SDK still bundles a model-native harness with sandbox execution, `Manifest`, MCP, skills, and `AGENTS.md`.
- Published on 2026-04-22 and accessed on 2026-05-30, OpenAI workspace agents still provide the managed cloud counterpart: shared agents, repeatable workflows, connected tools, and organization-level controls.
- Accessed on 2026-05-30, Anthropic's Claude Code docs still treat skills as a reusable workflow surface, and the features overview now makes `agent teams` explicit as independent Claude sessions that coordinate through shared task lists and direct messaging.
- Accessed on 2026-05-30, GitHub Copilot docs still center version-controlled custom agents, skills, MCP servers, and delegated subagent execution, but the built-in agent set now makes local orchestration more legible as a first-class surface rather than a hidden implementation detail.
- Published on 2026-05-19 and accessed on 2026-05-30, Google still positions Antigravity 2.0, Antigravity CLI, Managed Agents in the Gemini API, and Jules as a platform family rather than a single assistant. Antigravity CLI now explicitly markets concurrent subagents as part of that family.
- Published on 2026-04-22 and accessed on 2026-05-30, AWS AgentCore still belongs in both the managed harness layer and the broader agent platform layer.
- Accessed on 2026-05-30, official MCP materials still support the 2026-05-29 correction: `MCP core plus official extensions` is the right summary, with production-ready Apps, official Tasks for long-running work, and registry metadata still in preview and aimed at downstream registries rather than direct host consumption.
- Accessed on 2026-05-30, ACP still reads as the client-to-agent control protocol, now including stabilized logout alongside registry, session list, session info update, session resume, session close, and config options.
- Accessed on 2026-05-30, official A2A v1.0 materials still position A2A as the stable agent-to-agent coordination protocol.
- Published on 2026-04-27 and accessed on 2026-05-30, OpenAI Symphony; published on 2026-05-06 and accessed on 2026-05-30, Atlassian Teamwork Collection and Strategy Collection; and accessed on 2026-05-30, Linear Agent, Code Intelligence, Customer Requests, Releases, and AI Agents still support the same broader conclusion: project systems are becoming agent control planes that combine shared context, customer signal, shipped-state telemetry, and executive steering.

This does not overturn the prior AWS or protocol corrections. It sharpens the middle of the stack. Between checked-in specs and top-down organizational control planes, there is now a distinct local orchestration layer inside agent harnesses, plus a clearer portable repo-native workflow layer beside portable planning.

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

- GitHub custom agent profiles in `.github/agents/*.md`
- OpenAI `Manifest` workspace abstraction
- Claude Code skills
- Kiro steering surfaces
- Antigravity project, permission, hook, and skills-loading surfaces
- AgentCore harness configs, coding-assistant skills, and MCP-server surfaces

### Harness-native orchestration surfaces

- GitHub Copilot built-in and custom subagents
- Claude Code subagents and agent teams
- Kiro task execution, Kiro Web autonomous mode, and Kiro CLI review loops
- Antigravity CLI subagents

### Integrated spec-execution surfaces inside agent harnesses

- Kiro Specs
- Kiro Web autonomous workflows

### Coding-agent execution

- Codex
- GitHub Copilot CLI and cloud agent
- Claude Code
- Antigravity CLI
- Jules
- Kiro
- Rovo Dev

### Managed agent harnesses and lifecycle surfaces

- OpenAI Agents SDK and ChatGPT workspace agents
- Google Antigravity 2.0 and Managed Agents in the Gemini API
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
- Atlassian Teamwork Graph CLI
- Atlassian Rovo MCP Server
- Linear Agent
- Linear Code Intelligence
- Linear AI Agents

### Software portfolio and project steering

- Atlassian Strategy Collection
- Atlassian Focus
- Linear Customer Requests
- Linear Releases

### Agent governance and control planes

- AWS Agent Registry approval and curation workflows
- AWS AgentCore Policy
- isolated sandboxes, approval flows, and auditable agent activity as a now-common enterprise pattern

## Current Conclusion

The practical map for 2026-05-30 is still layered, but the middle of the stack now needs a cleaner split.

- Keep portable repo-native planning layers distinct from portable repo-native workflow automation.
- Keep repo-owned markdown contracts and procedural workflow files distinct from harness-native instruction and capability surfaces.
- Add a distinct harness-native orchestration layer for subagents, agent teams, autonomous review loops, and parallel task execution.
- Keep external work-control planes distinct from local orchestration surfaces. Symphony, Atlassian, and Linear still sit above the local harness layer rather than replacing it.
- Keep the AWS reading from 2026-05-29: AWS spans both managed harness and broader operating-surface layers.
- Keep the protocol split from 2026-05-29: `MCP core plus official extensions`, `ACP` for client-to-agent control, and `A2A v1.0` for agent-to-agent coordination.
- Keep asynchronous cloud coding agents as a distinct execution subtype alongside terminal and IDE agents.

## Sources

- Accessed 2026-05-30: [GitHub Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-05-30: [Spec Kit workflows](https://github.github.com/spec-kit/reference/workflows.html)
- Accessed 2026-05-30: [OpenSpec](https://openspec.dev/)
- Accessed 2026-05-30: [Kiro Specs](https://kiro.dev/docs/specs/)
- Published 2026-05-18 and accessed 2026-05-30: [Introducing Kiro Web](https://kiro.dev/blog/introducing-kiro-web/)
- Published 2026-05-29 and accessed 2026-05-30: [Kiro CLI 2.5.0](https://kiro.dev/changelog/cli/2-5/)
- Published 2026-04-15 and accessed 2026-05-30: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk)
- Published 2026-04-22 and accessed 2026-05-30: [Workspace agents](https://openai.com/academy/workspace-agents/)
- Accessed 2026-05-30: [Claude Code features overview](https://code.claude.com/docs/en/features-overview)
- Accessed 2026-05-30: [About custom agents](https://docs.github.com/en/copilot/concepts/agents/copilot-cli/about-custom-agents)
- Accessed 2026-05-30: [Invoking custom agents](https://docs.github.com/en/copilot/how-tos/copilot-cli/use-copilot-cli/invoke-custom-agents)
- Accessed 2026-05-30: [Antigravity CLI](https://www.antigravity.google/product/antigravity-cli)
- Published 2026-04-22 and accessed 2026-05-30: [Amazon Bedrock AgentCore adds new features to help developers build agents faster](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- Published 2026-04-28 and accessed 2026-05-30: [Amazon Bedrock now offers OpenAI models, Codex, and Managed Agents](https://aws.amazon.com/about-aws/whats-new/2026/04/bedrock-openai-models-codex-managed-agents/)
- Accessed 2026-05-30: [MCP Apps](https://modelcontextprotocol.io/extensions/apps/overview)
- Accessed 2026-05-30: [MCP Tasks](https://modelcontextprotocol.io/extensions/tasks/overview)
- Accessed 2026-05-30: [The MCP Registry](https://modelcontextprotocol.io/registry/about)
- Accessed 2026-05-30: [ACP Updates](https://agentclientprotocol.com/updates)
- Published 2026-05-21 and accessed 2026-05-30: [Logout Method is stabilized](https://agentclientprotocol.com/announcements/logout-method-stabilized)
- Accessed 2026-05-30: [A2A Protocol Ships v1.0](https://a2a-protocol.org/latest/announcing-1.0/)
- Published 2026-04-27 and accessed 2026-05-30: [Symphony](https://openai.com/index/open-source-codex-orchestration-symphony/)
- Published 2026-05-06 and accessed 2026-05-30: [Built for the next era of teamwork: What's new in Teamwork Collection](https://www.atlassian.com/blog/company-news/built-for-the-next-era-of-teamwork-whats-new-in-teamwork-collection)
- Published 2026-05-06 and accessed 2026-05-30: [Strategy Collection your executive command center: From insight to action](https://www.atlassian.com/blog/company-news/strategy-collection-team-26)
- Accessed 2026-05-30: [Atlassian Teamwork Graph](https://www.atlassian.com/platform/teamwork-graph)
- Accessed 2026-05-30: [Atlassian Focus](https://www.atlassian.com/software/focus)
- Accessed 2026-05-30: [Teamwork Graph CLI and Rovo MCP decision guide](https://support.atlassian.com/rovo/docs/teamwork-graph-cli-and-rovo-mcp-decision-guide/)
- Accessed 2026-05-30: [Linear Agent](https://linear.app/docs/linear-agent)
- Accessed 2026-05-30: [AI Agents](https://linear.app/docs/agents-in-linear)
- Accessed 2026-05-30: [Code Intelligence](https://linear.app/docs/code-intelligence)
- Accessed 2026-05-30: [Customer Requests](https://linear.app/docs/customer-requests)
- Accessed 2026-05-30: [Releases](https://linear.app/docs/releases)
<!-- state-of-the-art:managed:end -->
