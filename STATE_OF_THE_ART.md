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

2026-05-29

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

As of 2026-05-29, the layered map still holds, but two corrections are now material. AWS can no longer be summarized mainly as registry and governance. Official AWS materials now present Amazon Bedrock AgentCore as a full agentic platform with a GA code-based path, a preview managed harness, CLI, MCP server, registry, and a broader runtime and operations family. MCP also no longer fits a registry-centric summary. Official MCP materials now emphasize production-ready Apps, official extension surfaces, Tasks as the long-running-work primitive, and a May 21, 2026 release candidate for a stateless, extension-first core. ACP likewise now looks more mature than the previous report captured because multiple session and lifecycle methods are stabilized.

- Accessed on 2026-05-29, GitHub Spec Kit still presents `Spec -> Plan -> Tasks -> Implement`, 30 integrations, 105 extensions, and 22 presets. It remains the clearest portable repo-native spec and planning layer.
- Accessed on 2026-05-29, OpenSpec still positions checked-in specs, proposals, design notes, tasks, and spec deltas as a lightweight agent-agnostic planning layer that survives agent switching.
- Accessed on 2026-05-29, Kiro Specs still package requirements, design, and tasks, while Kiro Web remains the integrated browser-based autonomous multi-repo pull-request surface and is still explicitly planning specs support.
- Published on 2026-04-15 and accessed on 2026-05-29, OpenAI's updated Agents SDK still bundles a model-native harness with sandbox execution, `Manifest`, MCP, skills, and `AGENTS.md`.
- Published on 2026-04-10 and accessed on 2026-05-29, OpenAI's skills docs still treat `SKILL.md` as a portable, versionable workflow playbook and open standard.
- Published on 2026-04-22 and accessed on 2026-05-29, OpenAI workspace agents still provide the managed cloud counterpart: shared agents, long-running workflows, and organization-level controls inside ChatGPT.
- Accessed on 2026-05-29, Anthropic's Claude Code docs still position `SKILL.md` as the home for reusable procedures, say custom commands have merged into skills, and say Claude Code skills follow the Agent Skills open standard. The Claude Agent SDK still loads project, user, and plugin skills from filesystem.
- Accessed on 2026-05-29, GitHub Copilot docs still center version-controlled custom agents, skills, MCP servers, delegated subagent execution, and ACP access from Copilot CLI.
- Published on 2026-05-19 and accessed on 2026-05-29, Google still positions Antigravity 2.0, Antigravity CLI, Managed Agents in the Gemini API, and Jules as a platform family rather than a single coding assistant. Google's Gemini CLI transition notice still says consumer Gemini CLI access ends on 2026-06-18 while enterprise-license, Google Cloud, and API-key paths remain supported.
- Published on 2026-04-27 and accessed on 2026-05-29, OpenAI Symphony still provides the clearest official orchestration reference for turning a project-management system such as Linear into a control plane for coding agents.
- Published on 2026-05-06 and accessed on 2026-05-29, Atlassian Teamwork Collection, Teamwork Graph, and the TWG CLI or Rovo MCP split still reinforce the shared-context and work-control-plane conclusion.
- Published on 2026-05-06 and accessed on 2026-05-29, Atlassian Strategy Collection and Focus still make the portfolio-steering layer explicit above the shared data graph.
- Accessed on 2026-05-29, Linear Agent, Customer Requests, Releases, and Code Intelligence still reinforce the same control-plane pattern from workspace context, customer signal, code context, and shipped-state telemetry.
- Published on 2026-04-22 and accessed on 2026-05-29, AWS AgentCore now clearly spans both code-based and managed-harness execution paths, plus CLI, MCP-server, registry, runtime, gateway, identity, observability, browser, code interpreter, evaluations, and policy surfaces. It belongs in both the managed harness layer and the broader agent platform layer.
- Published on 2026-04-28 and accessed on 2026-05-29, Amazon Bedrock now also positions Codex and Managed Agents powered by OpenAI on top of AgentCore, reinforcing AWS as a managed agent platform rather than only a governed catalog.
- Accessed on 2026-05-29, official MCP materials now describe Apps as the first production-ready official extension, Tasks as the official long-running-work extension, and the 2026-07-28 release candidate as the largest revision since launch, moving MCP toward a stateless core and extension-first architecture. At the same time, the official `registry/about` page still says registry metadata is preview and not yet the end-user host surface.
- Accessed on 2026-05-29, ACP now looks less like a single registry milestone and more like an actively hardening client-to-agent control protocol: registry, session list, session info update, session resume, session close, config options, and logout are all stabilized.
- Accessed on 2026-05-29, official A2A v1.0 materials still position A2A as the stable production-ready open standard for agent-to-agent communication.

This materially changes the protocol and platform interpretation more than the portable planning or work-control-plane interpretation. The durable repo layer is still best described as checked-in markdown contracts for persistent facts and instructions plus checked-in procedural workflow playbooks. The sharper correction is lower in the stack: AWS now occupies both managed harness and general operating-surface layers, while the protocol layer is better read as `MCP core plus official extensions`, `ACP client-to-agent control`, and `A2A agent-to-agent coordination`.

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
- AgentCore harness configs, coding-assistant skills, and MCP-server surfaces

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

The practical map for 2026-05-29 remains layered, but the material corrections are now on the protocol and AWS platform boundaries.

- Keep portable repo-native planning layers separate from integrated spec-execution surfaces.
- Keep the repo-owned markdown-contract layer split between persistent instruction or context files and portable procedural workflow files.
- Track AWS twice: as a managed harness family and as a broader composable agentic platform. `Agent Registry` is no longer a sufficient summary of AWS's role.
- Split the protocol layer explicitly into `MCP core plus official extensions` for tool, UI, and long-running-work interoperability, `ACP` for client-to-agent control and session lifecycle, and `A2A v1.0` for agent-to-agent coordination.
- Keep Google tracked as a platform family rather than a single CLI. Antigravity 2.0, Antigravity CLI, Managed Agents in the Gemini API, and Jules occupy different surfaces, while Gemini CLI is now a migration and maintenance surface for part of the market until 2026-06-18.
- Keep asynchronous cloud coding agents as a distinct execution subtype alongside terminal and IDE agents.
- Keep the work-control-plane split explicit between shared context backbones and executive steering surfaces.

## Sources

- Accessed 2026-05-29: [GitHub Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-05-29: [OpenSpec](https://openspec.dev/)
- Accessed 2026-05-29: [Kiro Specs](https://kiro.dev/docs/specs/)
- Published 2026-05-18 and accessed 2026-05-29: [Introducing Kiro Web](https://kiro.dev/blog/introducing-kiro-web/)
- Published 2026-04-10 and accessed 2026-05-29: [Using skills](https://openai.com/academy/skills/)
- Published 2026-04-15 and accessed 2026-05-29: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- Published 2026-04-22 and accessed 2026-05-29: [Introducing workspace agents in ChatGPT](https://openai.com/index/introducing-workspace-agents-in-chatgpt/)
- Accessed 2026-05-29: [Extend Claude with skills](https://code.claude.com/docs/en/slash-commands)
- Accessed 2026-05-29: [Agent Skills in the SDK](https://code.claude.com/docs/en/agent-sdk/skills)
- Accessed 2026-05-29: [About GitHub Copilot CLI](https://docs.github.com/copilot/concepts/agents/copilot-cli/about-copilot-cli)
- Accessed 2026-05-29: [About custom agents](https://docs.github.com/en/copilot/concepts/agents/copilot-cli/about-custom-agents)
- Accessed 2026-05-29: [Invoking custom agents](https://docs.github.com/copilot/how-tos/copilot-cli/use-copilot-cli/invoke-custom-agents)
- Published 2026-05-19 and accessed 2026-05-29: [Building the agentic future: Developer highlights from I/O 2026](https://blog.google/innovation-and-ai/technology/developers-tools/google-io-2026-developer-highlights/)
- Published 2026-05-19 and accessed 2026-05-29: [An important update: Transitioning Gemini CLI to Antigravity CLI](https://github.com/google-gemini/gemini-cli/discussions/27274)
- Published 2026-05-19 and accessed 2026-05-29: [Introducing Managed Agents in the Gemini API](https://blog.google/innovation-and-ai/technology/developers-tools/managed-agents-gemini-api/)
- Accessed 2026-05-29: [Google Antigravity](https://www.antigravity.google/docs/home)
- Accessed 2026-05-29: [Agent Skills](https://antigravity.google/docs/skills)
- Accessed 2026-05-29: [Getting started with Jules](https://jules.google/docs/)
- Published 2026-04-27 and accessed 2026-05-29: [An open-source spec for Codex orchestration: Symphony](https://openai.com/index/open-source-codex-orchestration-symphony/)
- Published 2026-05-06 and accessed 2026-05-29: [Built for the next era of teamwork: What's new in Teamwork Collection](https://www.atlassian.com/blog/company-news/built-for-the-next-era-of-teamwork-whats-new-in-teamwork-collection)
- Published 2026-05-06 and accessed 2026-05-29: [Strategy Collection your executive command center: From insight to action](https://www.atlassian.com/blog/company-news/strategy-collection-team-26)
- Accessed 2026-05-29: [Atlassian Focus](https://www.atlassian.com/software/focus)
- Accessed 2026-05-29: [Atlassian Teamwork Graph](https://www.atlassian.com/platform/teamwork-graph)
- Accessed 2026-05-29: [Teamwork Graph CLI and Rovo MCP decision guide](https://support.atlassian.com/rovo/docs/teamwork-graph-cli-and-rovo-mcp-decision-guide/)
- Accessed 2026-05-29: [Linear Agent](https://linear.app/docs/linear-agent)
- Accessed 2026-05-29: [Customer Requests](https://linear.app/docs/customer-requests)
- Accessed 2026-05-29: [Releases](https://linear.app/docs/releases)
- Accessed 2026-05-29: [Code Intelligence](https://linear.app/docs/code-intelligence)
- Published 2026-04-22 and accessed 2026-05-29: [Amazon Bedrock AgentCore adds new features to help developers build agents faster](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- Accessed 2026-05-29: [Amazon Bedrock AgentCore overview](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/)
- Accessed 2026-05-29: [AgentCore harness](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/harness.html)
- Accessed 2026-05-29: [Understand the available interfaces for using Amazon Bedrock AgentCore](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/develop-agents.html)
- Accessed 2026-05-29: [AWS Agent Registry documentation](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/registry.html)
- Published 2026-04-28 and accessed 2026-05-29: [Amazon Bedrock now offers OpenAI models, Codex, and Managed Agents](https://aws.amazon.com/about-aws/whats-new/2026/04/bedrock-openai-models-codex-managed-agents/)
- Accessed 2026-05-29: [ACP updates](https://agentclientprotocol.com/updates)
- Accessed 2026-05-29: [MCP Apps](https://modelcontextprotocol.io/docs/extensions/apps)
- Accessed 2026-05-29: [MCP Tasks overview](https://modelcontextprotocol.io/extensions/tasks/overview)
- Accessed 2026-05-29: [SEP-2663: Tasks Extension](https://modelcontextprotocol.io/seps/2663-tasks-extension)
- Published 2026-03-09 and accessed 2026-05-29: [The 2026 MCP Roadmap](https://modelcontextprotocol.io/development/roadmap)
- Published 2026-05-21 and accessed 2026-05-29: [The 2026-07-28 MCP Specification Release Candidate](https://blog.modelcontextprotocol.io/tags/protocol/)
- Accessed 2026-05-29: [The MCP Registry](https://modelcontextprotocol.io/registry/about)
- Accessed 2026-05-29: [A2A Protocol Ships v1.0](https://a2a-protocol.org/latest/announcing-1.0/)
<!-- state-of-the-art:managed:end -->
