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

2026-05-27

## Scope

This document tracks the state of the art for:

- spec-driven development
- outcome-driven development and product discovery
- coding-agent execution
- repo-owned instruction and context files
- vendor agent harnesses and managed lifecycle surfaces
- general agent build, deploy, runtime, and operating surfaces
- orchestration and interoperability
- software portfolio and project steering
- agent governance and control planes

## Current View

As of 2026-05-27, the layered map still holds, and the 2026-05-25 work-control-plane conclusion still holds. The material correction is Google's stack: treating Gemini CLI as Google's primary forward-looking coding-agent surface is now outdated. Google's official May 19, 2026 releases reposition the stack around Antigravity as an agentic development platform family, with Jules remaining the asynchronous GitHub-connected coding agent.

- Accessed on 2026-05-27, GitHub Spec Kit still presents `Spec -> Plan -> Tasks -> Implement`, 30 integrations, and a large extensions and presets ecosystem. It remains the clearest portable repo-native spec and planning layer.
- Accessed on 2026-05-27, OpenSpec still positions checked-in specs, proposals, design notes, tasks, and spec deltas as a lightweight agent-agnostic planning layer that survives agent switching.
- Accessed on 2026-05-27, Kiro Specs still package requirements, design, and tasks with requirements-first, design-first, quick-plan, and bugfix flows, while Kiro Web remains an integrated autonomous multi-repo pull-request surface.
- Published on 2026-04-15 and accessed on 2026-05-27, OpenAI's updated Agents SDK still bundles a model-native harness with sandbox execution, `Manifest`, MCP, skills, and `AGENTS.md`.
- Published on 2026-04-10 and accessed on 2026-05-27, OpenAI's skills documentation now explicitly treats `SKILL.md` as a portable, versionable workflow playbook.
- Accessed on 2026-05-27, Anthropic's Claude Code docs still center project and hierarchical `CLAUDE.md` memory plus subagents with separate context windows.
- Accessed on 2026-05-27, GitHub Copilot docs still center version-controlled custom agents, skills, MCP servers, and parallel subagent execution.
- Published on 2026-05-19 and accessed on 2026-05-27, Google officially repositioned its local and managed agent surface around Antigravity. Antigravity 2.0, Antigravity CLI, and Managed Agents in the Gemini API now read as the forward-looking Google platform family.
- Published on 2026-05-19 and accessed on 2026-05-27, Google's Gemini CLI transition notice says Google AI Pro, Ultra, and free-tier Gemini CLI access ends on 2026-06-18, while enterprise-license, Google Cloud, and API-key paths remain supported.
- Published on 2026-05-19 and accessed on 2026-05-27, Google's managed-agent launch defines custom agents via versionable `AGENTS.md` and `SKILL.md`, and Antigravity skills docs describe `SKILL.md` skills as an open standard stored in repo-scoped or global directories.
- Accessed on 2026-05-27, Jules still merits first-class tracking as Google's asynchronous GitHub-connected coding agent and still automatically reads root-level `AGENTS.md`.
- Published on 2026-04-27 and accessed on 2026-05-27, OpenAI Symphony still provides the clearest official orchestration reference for turning project-management systems such as Linear into a control plane for coding agents.
- Accessed on 2026-05-27, Atlassian's Teamwork Collection, Teamwork Graph, and TWG CLI/Rovo MCP guidance still reinforce the work-control-plane conclusion.
- Accessed on 2026-05-27, Linear Agent, Customer Requests, Releases, Code Intelligence, skills, guidance, and MCP connectivity still reinforce the same control-plane pattern from workspace context, customer signal, code context, and shipped-state telemetry.
- Published on 2026-04-09 and accessed on 2026-05-27, AWS Agent Registry still reinforces governed lifecycle and discovery patterns.
- Published on 2026-03-09 and accessed on 2026-05-27, ACP still merits first-class tracking as the client-to-agent control layer.
- Accessed on 2026-05-27, the official MCP Registry still describes itself as preview metadata intended primarily for downstream aggregators rather than direct host consumption.
- Accessed on 2026-05-27, official A2A v1.0 materials still position A2A as the stable production-ready open standard for agent-to-agent communication.

This materially sharpens the harness-primitives layer again. The repo-owned instruction family is no longer just about memory and steering files. Official OpenAI and Google surfaces now both use versionable `SKILL.md` alongside `AGENTS.md`, which means the most durable repo layer is broader: repo-owned markdown contracts for instructions, context, and reusable workflows. The loading rules, directory layouts, permission systems, registries, and project settings still remain harness-specific.

## Notable Categories

### Portable repo-native spec and planning layers

- Spec Kit
- OpenSpec

### Repo-owned instruction, context, and workflow files

- `AGENTS.md`
- `CLAUDE.md`
- `GEMINI.md`
- `SKILL.md`
- repo-owned workflow contracts such as `WORKFLOW.md`

### Harness-native profiles, subagents, and workspace descriptors

- GitHub custom agent profiles in `.github/agents/*.md`
- OpenAI `Manifest` workspace abstraction
- Claude Code subagents in `.claude/agents/`
- Kiro steering surfaces
- Antigravity project, permission, hook, and skills-loading surfaces

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
- Amazon Bedrock AgentCore and AWS Agent Registry

### Interoperability protocols

- MCP
- ACP
- A2A v1.0

### Work operating systems, shared context backbones, and agent control planes

- OpenAI Symphony
- Atlassian Teamwork Collection
- Atlassian Teamwork Graph
- Atlassian Teamwork Graph CLI
- Atlassian Rovo MCP Server
- Linear Agent
- Linear Customer Requests
- Linear Releases
- Linear Code Intelligence

### Agent governance and control planes

- AWS Agent Registry approval and curation workflows
- isolated sandboxes, policy surfaces, approval flows, and auditable agent activity as a now-common enterprise pattern

## Current Conclusion

The practical map for 2026-05-27 remains layered, but Google's stack now needs a stronger abstraction boundary than the 2026-05-26 report gave it.

- Keep portable repo-native planning layers separate from integrated spec-execution surfaces.
- Strengthen the repo-owned markdown-contract layer: track `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`, `SKILL.md`, and `WORKFLOW.md`-style files as first-class observability surfaces.
- Keep the split inside that layer explicit: the markdown contracts are becoming more portable, but discovery rules, permissions, registries, and workspace/project settings remain harness-specific.
- Track Google as a platform family rather than a single CLI. Antigravity 2.0, Antigravity CLI, Managed Agents in the Gemini API, and Jules occupy different surfaces, while Gemini CLI is now a migration and maintenance surface for part of the market.
- Keep asynchronous cloud coding agents as a distinct execution subtype alongside terminal and IDE agents.
- Keep the protocol boundary explicit: `ACP` for client-to-agent control, `MCP` for agent-to-tool or registry access, and `A2A v1.0` for agent-to-agent coordination.
- Keep the work-control-plane layer above them: issue trackers, portfolio systems, releases, customer signal, context graphs, and registries are increasingly supervising agent work rather than merely informing it.

## Sources

- Accessed 2026-05-27: [GitHub Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-05-27: [OpenSpec](https://openspec.dev/)
- Accessed 2026-05-27: [Kiro Specs](https://kiro.dev/docs/specs/)
- Published 2026-05-18 and accessed 2026-05-27: [Introducing Kiro Web](https://kiro.dev/blog/introducing-kiro-web/)
- Published 2026-04-10 and accessed 2026-05-27: [Using skills](https://openai.com/academy/skills/)
- Published 2026-04-15 and accessed 2026-05-27: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- Published 2026-04-22 and accessed 2026-05-27: [Introducing workspace agents in ChatGPT](https://openai.com/index/introducing-workspace-agents-in-chatgpt/)
- Published 2026-04-27 and accessed 2026-05-27: [An open-source spec for Codex orchestration: Symphony](https://openai.com/index/open-source-codex-orchestration-symphony/)
- Accessed 2026-05-27: [Claude Code memory](https://code.claude.com/docs/en/memory)
- Accessed 2026-05-27: [Claude Code subagents](https://code.claude.com/docs/en/sub-agents)
- Accessed 2026-05-27: [About custom agents](https://docs.github.com/en/copilot/concepts/agents/copilot-cli/about-custom-agents)
- Accessed 2026-05-27: [Running tasks in parallel with the /fleet command](https://docs.github.com/en/copilot/concepts/agents/copilot-cli/fleet)
- Published 2026-05-19 and accessed 2026-05-27: [Building the agentic future: Developer highlights from I/O 2026](https://blog.google/innovation-and-ai/technology/developers-tools/google-io-2026-developer-highlights/)
- Published 2026-05-19 and accessed 2026-05-27: [An important update: Transitioning Gemini CLI to Antigravity CLI](https://github.com/google-gemini/gemini-cli/discussions/27274)
- Published 2026-05-19 and accessed 2026-05-27: [Introducing Managed Agents in the Gemini API](https://blog.google/innovation-and-ai/technology/developers-tools/managed-agents-gemini-api/)
- Accessed 2026-05-27: [Google Antigravity](https://www.antigravity.google/docs/home)
- Accessed 2026-05-27: [Agent Skills](https://antigravity.google/docs/skills)
- Accessed 2026-05-27: [Getting started with Jules](https://jules.google/docs/)
- Published 2026-05-06 and accessed 2026-05-27: [Built for the Next Era of Teamwork: What's New in Teamwork Collection](https://www.atlassian.com/blog/company-news/teamwork-collection-team-26)
- Accessed 2026-05-27: [Atlassian Teamwork Graph](https://www.atlassian.com/platform/teamwork-graph)
- Accessed 2026-05-27: [Teamwork Graph CLI and Rovo MCP decision guide](https://support.atlassian.com/rovo/docs/teamwork-graph-cli-and-rovo-mcp-decision-guide/)
- Accessed 2026-05-27: [Linear Agent](https://linear.app/docs/linear-agent)
- Accessed 2026-05-27: [Customer Requests](https://linear.app/docs/customer-requests)
- Accessed 2026-05-27: [Releases](https://linear.app/docs/releases)
- Published 2026-05-14 and accessed 2026-05-27: [Code Intelligence for Linear Agent](https://linear.app/now/code-intelligence-for-linear-agent)
- Published 2026-04-09 and accessed 2026-05-27: [AWS Agent Registry for centralized agent discovery and governance is now available in Preview](https://aws.amazon.com/about-aws/whats-new/2026/04/aws-agent-registry-in-agentcore-preview/)
- Accessed 2026-05-27: [AWS Agent Registry documentation](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/registry.html)
- Published 2026-03-09 and accessed 2026-05-27: [ACP Registry is stabilized](https://agentclientprotocol.com/announcements/acp-agent-registry-stabilized)
- Accessed 2026-05-27: [The MCP Registry](https://modelcontextprotocol.io/registry/about)
- Accessed 2026-05-27: [A2A Protocol Ships v1.0](https://a2a-protocol.org/latest/announcing-1.0/)
<!-- state-of-the-art:managed:end -->
