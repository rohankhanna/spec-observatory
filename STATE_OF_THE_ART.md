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

2026-05-26

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

As of 2026-05-26, the ecosystem is still layered, and the 2026-05-25 work-control-plane conclusion still holds. The material change today is lower in the stack: repo-owned instruction and context files now look like a stable cross-vendor layer rather than a mostly vendor-specific convention, and Google Jules now merits first-class tracking as an asynchronous cloud coding agent.

- Accessed on 2026-05-26, GitHub Spec Kit still presents `Spec -> Plan -> Tasks -> Implement`, 30 integrations, workflows, and a large extensions and presets ecosystem. It remains the clearest portable repo-native spec and planning layer.
- Accessed on 2026-05-26, OpenSpec still positions proposals, design notes, tasks, and spec deltas as repo-native artifacts that survive agent switching. It remains a lightweight agent-agnostic planning layer.
- Accessed on 2026-05-26, Kiro Specs and Kiro Web still package requirements, design, tasks, quick-plan or autonomous execution, and multi-repo pull-request workflows as an integrated vendor execution surface rather than a neutral planning layer.
- Published on 2026-04-15 and accessed on 2026-05-26, OpenAI's updated Agents SDK still bundles a model-native harness with sandbox execution, `Manifest`, skills, MCP, and `AGENTS.md`.
- Accessed on 2026-05-26, Anthropic's Claude Code docs describe hierarchical `CLAUDE.md` project memory plus repo-scoped subagents and commands.
- Accessed on 2026-05-26, Gemini CLI docs describe hierarchical `GEMINI.md` context files and allow `AGENTS.md` as a configurable context filename.
- Accessed on 2026-05-26, Google's official Jules announcement and docs now make two things explicit: Jules is publicly launched as an asynchronous coding agent, and it automatically looks for root-level `AGENTS.md` when planning work in a repo.
- Accessed on 2026-05-26, GitHub Copilot cloud agent and Copilot CLI still treat version-controlled custom agents, agent profiles, skills, and parallel subagent orchestration as first-class product surfaces.
- Published on 2026-04-27 and accessed on 2026-05-26, OpenAI Symphony still sets the clearest official orchestration reference point for issue-tracker-driven coding-agent dispatch.
- Accessed on 2026-05-26, Atlassian's Teamwork Graph CLI and Rovo MCP guide explicitly recommends putting surface-selection defaults in `agents.md`, `claude.md`, or team agent config, reinforcing the instruction-file layer above individual tools.
- Published on 2026-05-06 and accessed on 2026-05-26, Atlassian's Product Collection, Strategy Collection, Teamwork Graph, and Rovo surfaces still support the work-control-plane conclusion.
- Accessed on 2026-05-26, Linear Agent, Customer Requests, Releases, and published Code Intelligence materials still reinforce the same control-plane pattern from workspace context, customer signal, code context, and shipped-state telemetry.
- Published on 2026-04-09 and accessed on 2026-05-26, AWS Agent Registry still reinforces governed lifecycle and discovery patterns.
- Published on 2026-03-09 and accessed on 2026-05-26, ACP still merits first-class tracking as the client-to-agent control layer.
- Accessed on 2026-05-26, the official MCP Registry still describes itself as preview metadata meant mainly for downstream registries rather than direct host consumption.
- Accessed on 2026-05-26, official A2A v1.0 materials still position A2A as the stable production-ready open standard for agent-to-agent communication.

This materially sharpens the harness-primitives layer. The right boundary is no longer just "vendor harness features" versus "planning tools". There is now a clear repo-owned instruction and context-file family that cuts across vendors: `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`, and repo-owned workflow contracts such as `WORKFLOW.md`. Those files are related, but they are not converged into one universal standard. Vendors are making them first-class in different ways while still keeping harness-specific skills, subagents, profiles, and registries around them.

## Notable Categories

### Portable repo-native spec and planning layers

- Spec Kit
- OpenSpec

### Repo-owned instruction and context files

- `AGENTS.md`
- `CLAUDE.md`
- `GEMINI.md`
- repo-owned workflow contracts such as `WORKFLOW.md`

### Harness-native profiles, skills, and subagents

- GitHub custom agent profiles in `.github/agents/*.agent.md`
- GitHub Copilot skills and subagents
- OpenAI Agents SDK skills and `Manifest` workspace abstraction
- Claude Code subagents and `.claude/commands`
- Kiro steering and Powers

### Integrated spec-execution surfaces inside agent harnesses

- Kiro Specs
- Kiro Web autonomous workflows

### Coding-agent execution

- Codex
- GitHub Copilot CLI and cloud agent
- Claude Code
- Gemini CLI
- Jules
- Kiro
- Rovo Dev

### Managed agent harnesses and lifecycle surfaces

- OpenAI Agents SDK and ChatGPT workspace agents
- GitHub Copilot cloud agent and custom agent surface
- Amazon Bedrock AgentCore and AWS Agent Registry

### Interoperability protocols

- MCP
- ACP
- A2A v1.0

### Work operating systems, shared context backbones, and agent control planes

- OpenAI Symphony
- Atlassian Product Collection
- Atlassian Strategy Collection
- Atlassian Teamwork Graph
- Atlassian Teamwork Graph CLI
- Atlassian Rovo MCP Server
- Linear Agent
- Linear Customer Requests
- Linear Releases
- Linear Code Intelligence

### Agent governance and control planes

- AWS Agent Registry approval and curation workflows
- isolated sandboxes, policy surfaces, and auditable agent activity as a now-common enterprise pattern

## Current Conclusion

The practical map for 2026-05-26 remains layered, and the 2026-05-25 work-control-plane upgrade still holds. The material correction is within the harness-primitives layer.

- Keep portable repo-native planning layers separate from integrated spec-execution surfaces.
- Split the harness-primitives layer in two: repo-owned instruction and context files on one side, and harness-native skills, subagents, profiles, and workspace descriptors on the other.
- Treat `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`, and `WORKFLOW.md`-style files as first-class observability surfaces. They are becoming stable repo control surfaces across vendors, even though the filenames and loading rules still differ.
- Track asynchronous cloud coding agents as a distinct execution subtype alongside terminal and IDE agents. GitHub cloud agent, Jules, and Kiro Web now make that subtype durable enough to name.
- Keep the protocol boundary explicit: `ACP` for client-to-agent control, `MCP` for agent-to-tool or registry access, and `A2A v1.0` for agent-to-agent coordination.
- Keep the work-control-plane layer above them: issue trackers, portfolio systems, releases, customer signal, and registries are increasingly supervising agent work rather than merely informing it.

## Sources

- Accessed 2026-05-26: [GitHub Spec Kit](https://github.github.com/spec-kit/)
- Accessed 2026-05-26: [OpenSpec](https://openspec.dev/)
- Accessed 2026-05-26: [Kiro feature specs](https://kiro.dev/docs/specs/feature-specs/)
- Published 2026-05-18 and accessed 2026-05-26: [Introducing Kiro Web](https://kiro.dev/blog/introducing-kiro-web/)
- Published 2026-04-15 and accessed 2026-05-26: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- Published 2026-04-22 and accessed 2026-05-26: [Introducing workspace agents in ChatGPT](https://openai.com/index/introducing-workspace-agents-in-chatgpt/)
- Published 2026-04-27 and accessed 2026-05-26: [An open-source spec for Codex orchestration: Symphony](https://openai.com/index/open-source-codex-orchestration-symphony/)
- Accessed 2026-05-26: [openai/symphony](https://github.com/openai/symphony)
- Accessed 2026-05-26: [Claude Code memory](https://code.claude.com/docs/en/memory)
- Accessed 2026-05-26: [Claude Code subagents](https://docs.anthropic.com/en/docs/claude-code/sub-agents)
- Accessed 2026-05-26: [Gemini CLI](https://github.com/google-gemini/gemini-cli)
- Accessed 2026-05-26: [Provide context with GEMINI.md files](https://geminicli.com/docs/cli/gemini-md/)
- Accessed 2026-05-26: [Jules now available](https://blog.google/innovation-and-ai/models-and-research/google-labs/jules-now-available/)
- Accessed 2026-05-26: [Getting started with Jules](https://jules.google/docs/)
- Accessed 2026-05-26: [Creating custom agents for Copilot cloud agent](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/cloud-agent/create-custom-agents)
- Accessed 2026-05-26: [Invoking custom agents in Copilot CLI](https://docs.github.com/en/copilot/how-tos/copilot-cli/use-copilot-cli/invoke-custom-agents)
- Accessed 2026-05-26: [Running tasks in parallel with the /fleet command](https://docs.github.com/en/copilot/concepts/agents/copilot-cli/fleet)
- Published 2026-05-06 and accessed 2026-05-26: [Introducing Product Collection](https://www.atlassian.com/blog/company-news/introducing-product-collection)
- Published 2026-05-06 and accessed 2026-05-26: [Strategy Collection your executive command center: From insight to action](https://www.atlassian.com/blog/company-news/strategy-collection-team-26)
- Accessed 2026-05-26: [Atlassian Teamwork Graph](https://www.atlassian.com/platform/teamwork-graph)
- Accessed 2026-05-26: [Teamwork Graph CLI and Rovo MCP decision guide](https://support.atlassian.com/rovo/docs/teamwork-graph-cli-and-rovo-mcp-decision-guide/)
- Accessed 2026-05-26: [Getting started with the Atlassian Rovo MCP Server](https://support.atlassian.com/atlassian-rovo-mcp-server/docs/getting-started-with-the-atlassian-remote-mcp-server/)
- Accessed 2026-05-26: [Linear Agent](https://linear.app/docs/linear-agent)
- Accessed 2026-05-26: [Linear Customer Requests](https://linear.app/docs/customer-requests)
- Accessed 2026-05-26: [Linear Releases](https://linear.app/docs/releases)
- Published 2026-05-14 and accessed 2026-05-26: [Code Intelligence for Linear Agent](https://linear.app/now/code-intelligence-for-linear-agent)
- Published 2026-04-09 and accessed 2026-05-26: [AWS Agent Registry for centralized agent discovery and governance is now available in Preview](https://aws.amazon.com/about-aws/whats-new/2026/04/aws-agent-registry-in-agentcore-preview/)
- Published 2026-03-09 and accessed 2026-05-26: [ACP Registry is stabilized](https://agentclientprotocol.com/announcements/acp-agent-registry-stabilized)
- Accessed 2026-05-26: [The MCP Registry](https://modelcontextprotocol.io/registry/about)
- Accessed 2026-05-26: [A2A Protocol Ships v1.0](https://a2a-protocol.org/latest/announcing-1.0/)
<!-- state-of-the-art:managed:end -->
