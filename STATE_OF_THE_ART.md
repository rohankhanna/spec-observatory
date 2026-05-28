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

2026-05-28

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

As of 2026-05-28, the layered map still holds, and the work-control-plane conclusion still holds. The material corrections are Anthropic and Atlassian. Anthropic's official Claude surfaces can no longer be summarized as `CLAUDE.md` memory plus subagents: Anthropic now makes `SKILL.md` first-class, merges custom commands into skills, and says Claude Code skills follow the Agent Skills open standard. Atlassian's portfolio layer is also more explicit than the 2026-05-27 report stated: Strategy Collection and Focus now sit above Teamwork Graph and the TWG CLI/Rovo MCP access paths as first-class executive steering surfaces.

- Accessed on 2026-05-28, GitHub Spec Kit still presents `Spec -> Plan -> Tasks -> Implement`, 30 integrations, and a still-growing ecosystem now showing 105 extensions and 22 presets. It remains the clearest portable repo-native spec and planning layer.
- Accessed on 2026-05-28, OpenSpec still positions checked-in specs, proposals, design notes, tasks, and spec deltas as a lightweight agent-agnostic planning layer that survives agent switching.
- Accessed on 2026-05-28, Kiro Specs still package requirements, design, and tasks, while Kiro Web remains an integrated browser-based autonomous multi-repo pull-request surface.
- Published on 2026-04-15 and accessed on 2026-05-28, OpenAI's updated Agents SDK still bundles a model-native harness with sandbox execution, `Manifest`, MCP, skills, and `AGENTS.md`.
- Published on 2026-04-10 and accessed on 2026-05-28, OpenAI's skills docs still treat `SKILL.md` as a portable, versionable workflow playbook and open standard.
- Published on 2026-04-22 and accessed on 2026-05-28, OpenAI workspace agents still provide the managed cloud counterpart: shared agents, long-running workflows, and organization-level controls inside ChatGPT.
- Accessed on 2026-05-28, Anthropic's Claude Code docs now explicitly position `SKILL.md` as the home for reusable procedures, say custom commands have merged into skills, and say Claude Code skills follow the Agent Skills open standard.
- Accessed on 2026-05-28, Anthropic's Claude Agent SDK docs also load project, user, and plugin skills from filesystem, making `SKILL.md` a first-class repo-owned workflow contract in Anthropic's official SDK surface rather than just a CLI convenience.
- Accessed on 2026-05-28, GitHub Copilot docs still center version-controlled custom agents, skills, MCP servers, and parallel subagent execution.
- Published on 2026-05-19 and accessed on 2026-05-28, Google officially repositioned its local and managed agent surface around Antigravity. Antigravity 2.0, Antigravity CLI, and Managed Agents in the Gemini API remain the forward-looking Google platform family.
- Published on 2026-05-19 and accessed on 2026-05-28, Google's Gemini CLI transition notice still says Google AI Pro, Ultra, and free-tier Gemini CLI access ends on 2026-06-18, while enterprise-license, Google Cloud, and API-key paths remain supported.
- Published on 2026-05-19 and accessed on 2026-05-28, Google's managed-agent launch still defines custom agents via versionable `AGENTS.md` and `SKILL.md`, and Antigravity skills docs still describe skills as an open standard.
- Accessed on 2026-05-28, Jules still merits first-class tracking as Google's asynchronous GitHub-connected coding agent and still automatically reads root-level `AGENTS.md`.
- Published on 2026-04-27 and accessed on 2026-05-28, OpenAI Symphony still provides the clearest official orchestration reference for turning project-management systems such as Linear into a control plane for coding agents.
- Published on 2026-05-06 and accessed on 2026-05-28, Atlassian Teamwork Collection, Teamwork Graph, and TWG CLI/Rovo MCP guidance still reinforce the shared-context and work-control-plane conclusion.
- Published on 2026-05-06 and accessed on 2026-05-28, Atlassian Strategy Collection and Focus make Atlassian's portfolio-steering layer more explicit: priorities, goals, work, teams, and funds are now a first-class product surface connected to Rovo and Teamwork Graph.
- Accessed on 2026-05-28, Linear Agent, Customer Requests, Releases, and Code Intelligence still reinforce the same control-plane pattern from workspace context, customer signal, code context, and shipped-state telemetry.
- Published on 2026-04-09 and accessed on 2026-05-28, AWS Agent Registry still reinforces governed lifecycle and discovery patterns.
- Published on 2026-03-09 and accessed on 2026-05-28, ACP still merits first-class tracking as the client-to-agent control layer.
- Accessed on 2026-05-28, the official MCP Registry still describes itself as preview metadata intended primarily for downstream aggregators rather than direct host consumption.
- Accessed on 2026-05-28, official A2A v1.0 materials still position A2A as the stable production-ready open standard for agent-to-agent communication.

This materially strengthens the repo-owned markdown-contract layer and sharpens the upper control-plane boundary. The durable repo layer is no longer best described as instruction and memory files alone. It is better described as repo-owned markdown contracts for persistent facts and instructions (`AGENTS.md`, `CLAUDE.md`) plus portable reusable procedures (`SKILL.md` and similar workflow playbooks). The loading rules, tool permissions, plugin systems, registries, and workspace/project settings still remain harness-specific. Above that, the control-plane layer now separates shared context backbones such as Teamwork Graph and Linear workspace context from explicit portfolio-steering surfaces such as Atlassian Strategy Collection and Focus.

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

### Harness-native profiles, skills, subagents, and workspace descriptors

- GitHub custom agent profiles in `.github/agents/*.md`
- OpenAI `Manifest` workspace abstraction
- Claude Code subagents and plugin-provided skills
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

### Shared context backbones and agent control planes

- OpenAI Symphony
- Atlassian Teamwork Collection
- Atlassian Teamwork Graph
- Atlassian Teamwork Graph CLI
- Atlassian Rovo MCP Server
- Linear Agent
- Linear Code Intelligence

### Software portfolio and project steering

- Atlassian Strategy Collection
- Atlassian Focus
- Linear Customer Requests
- Linear Releases

### Agent governance and control planes

- AWS Agent Registry approval and curation workflows
- isolated sandboxes, policy surfaces, approval flows, and auditable agent activity as a now-common enterprise pattern

## Current Conclusion

The practical map for 2026-05-28 remains layered, but the repo-owned markdown layer and the portfolio-steering layer both need stronger boundaries than the 2026-05-27 report gave them.

- Keep portable repo-native planning layers separate from integrated spec-execution surfaces.
- Split the repo-owned markdown-contract layer explicitly into persistent instruction/context files and portable procedural workflow files. OpenAI, Google, and Anthropic now all officially validate `SKILL.md` as a reusable workflow surface, while GitHub and Kiro reinforce the broader pattern with harness-specific skill and steering surfaces.
- Keep the harness-native side of that layer explicit: discovery rules, permissions, plugin systems, registries, and workspace/project settings remain vendor-specific even when the markdown artifacts converge.
- Track Google as a platform family rather than a single CLI. Antigravity 2.0, Antigravity CLI, Managed Agents in the Gemini API, and Jules occupy different surfaces, while Gemini CLI is now a migration and maintenance surface for part of the market until 2026-06-18.
- Keep asynchronous cloud coding agents as a distinct execution subtype alongside terminal and IDE agents.
- Keep the protocol boundary explicit: `ACP` for client-to-agent control, `MCP` for agent-to-tool or registry access, and `A2A v1.0` for agent-to-agent coordination.
- Split the work-control-plane layer explicitly between shared context backbones and executive steering surfaces. Teamwork Graph, TWG CLI, Rovo MCP, Linear Agent, and Code Intelligence supply connected work context; Strategy Collection, Focus, Customer Requests, and Releases steer priorities, demand, and shipped-state decisions above the agent runtime layer.

## Sources

- Accessed 2026-05-28: [GitHub Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-05-28: [OpenSpec](https://openspec.dev/)
- Accessed 2026-05-28: [Kiro Specs](https://kiro.dev/docs/specs/)
- Published 2026-05-18 and accessed 2026-05-28: [Introducing Kiro Web](https://kiro.dev/blog/introducing-kiro-web/)
- Published 2026-04-10 and accessed 2026-05-28: [Using skills](https://openai.com/academy/skills/)
- Published 2026-04-15 and accessed 2026-05-28: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- Published 2026-04-22 and accessed 2026-05-28: [Introducing workspace agents in ChatGPT](https://openai.com/index/introducing-workspace-agents-in-chatgpt/)
- Accessed 2026-05-28: [Extend Claude with skills](https://code.claude.com/docs/en/slash-commands)
- Accessed 2026-05-28: [Agent Skills in the SDK](https://code.claude.com/docs/en/agent-sdk/skills)
- Accessed 2026-05-28: [About custom agents](https://docs.github.com/en/copilot/concepts/agents/copilot-cli/about-custom-agents)
- Accessed 2026-05-28: [Running tasks in parallel with the /fleet command](https://docs.github.com/en/copilot/concepts/agents/copilot-cli/fleet)
- Published 2026-05-19 and accessed 2026-05-28: [Building the agentic future: Developer highlights from I/O 2026](https://blog.google/innovation-and-ai/technology/developers-tools/google-io-2026-developer-highlights/)
- Published 2026-05-19 and accessed 2026-05-28: [An important update: Transitioning Gemini CLI to Antigravity CLI](https://github.com/google-gemini/gemini-cli/discussions/27274)
- Published 2026-05-19 and accessed 2026-05-28: [Introducing Managed Agents in the Gemini API](https://blog.google/innovation-and-ai/technology/developers-tools/managed-agents-gemini-api/)
- Accessed 2026-05-28: [Google Antigravity](https://www.antigravity.google/docs/home)
- Accessed 2026-05-28: [Agent Skills](https://antigravity.google/docs/skills)
- Accessed 2026-05-28: [Getting started with Jules](https://jules.google/docs/)
- Published 2026-04-27 and accessed 2026-05-28: [An open-source spec for Codex orchestration: Symphony](https://openai.com/index/open-source-codex-orchestration-symphony/)
- Published 2026-05-06 and accessed 2026-05-28: [Teamwork Collection](https://www.atlassian.com/blog/company-news/built-for-the-next-era-of-teamwork-whats-new-in-teamwork-collection)
- Published 2026-05-06 and accessed 2026-05-28: [Strategy Collection your executive command center: From insight to action](https://www.atlassian.com/blog/company-news/strategy-collection-team-26)
- Accessed 2026-05-28: [Atlassian Focus](https://www.atlassian.com/software/focus)
- Accessed 2026-05-28: [Atlassian Teamwork Graph](https://www.atlassian.com/platform/teamwork-graph)
- Accessed 2026-05-28: [Teamwork Graph CLI and Rovo MCP decision guide](https://support.atlassian.com/rovo/docs/teamwork-graph-cli-and-rovo-mcp-decision-guide/)
- Accessed 2026-05-28: [Linear Agent](https://linear.app/docs/linear-agent)
- Accessed 2026-05-28: [Customer Requests](https://linear.app/docs/customer-requests)
- Accessed 2026-05-28: [Releases](https://linear.app/docs/releases)
- Accessed 2026-05-28: [Code Intelligence](https://linear.app/docs/code-intelligence)
- Published 2026-04-09 and accessed 2026-05-28: [AWS Agent Registry for centralized agent discovery and governance is now available in Preview](https://aws.amazon.com/about-aws/whats-new/2026/04/aws-agent-registry-in-agentcore-preview/)
- Accessed 2026-05-28: [AWS Agent Registry documentation](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/registry.html)
- Published 2026-03-09 and accessed 2026-05-28: [ACP Registry is stabilized](https://agentclientprotocol.com/announcements/acp-agent-registry-stabilized)
- Accessed 2026-05-28: [The MCP Registry](https://modelcontextprotocol.io/registry/about)
- Accessed 2026-05-28: [A2A Protocol Ships v1.0](https://a2a-protocol.org/latest/announcing-1.0/)
<!-- state-of-the-art:managed:end -->
