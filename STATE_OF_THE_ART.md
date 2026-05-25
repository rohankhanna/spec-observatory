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

2026-05-25

## Scope

This document tracks the state of the art for:

- spec-driven development
- outcome-driven development
- coding-agent execution
- vendor agent harnesses and managed lifecycle surfaces
- general agent build, deploy, runtime, and operating surfaces
- orchestration and interoperability
- software portfolio and project steering
- agent governance and control planes

## Current View

As of 2026-05-25, the ecosystem is still layered rather than consolidated. The harness-primitives layer and the A2A maturity call added on 2026-05-24 still hold. One additional official pattern now materially sharpens the map above them: work-tracking and portfolio systems are no longer just upstream planning context. They are increasingly being used as active control planes for coding agents.

- Accessed on 2026-05-25, GitHub Spec Kit still presents `Spec -> Plan -> Tasks -> Implement`, 30 integrations, and a large extensions and presets ecosystem. It remains the clearest portable repo-native spec and planning layer.
- Accessed on 2026-05-25, OpenSpec still positions specs, proposals, design notes, tasks, and spec deltas as repo-native artifacts that survive agent switching. It remains a lightweight agent-agnostic planning layer.
- Accessed on 2026-05-25, Kiro Specs and Kiro Web still package requirements, design, tasks, quick-plan or autonomous execution, and multi-repo pull-request workflows as an integrated vendor execution surface rather than a neutral planning layer.
- Published on 2026-04-15 and accessed on 2026-05-25, OpenAI's updated Agents SDK still bundles a model-native harness with sandbox execution, a portable `Manifest` workspace abstraction, MCP, skills, `AGENTS.md`, shell, and apply-patch style editing primitives.
- Published on 2026-04-27 and accessed on 2026-05-25, OpenAI Symphony adds a new official orchestration reference point: an open-source spec that turns an issue tracker such as Linear into an always-on control plane for coding agents, keeps workflow policy in repo-owned `WORKFLOW.md`, and treats ticket state as the driver of agent dispatch, retries, and handoffs.
- Accessed on 2026-05-25, GitHub Copilot cloud agent and Copilot CLI still treat version-controlled custom agents, skills, and parallel subagent orchestration as first-class product surfaces.
- Published on 2026-05-06 and accessed on 2026-05-25, Atlassian Product Collection, Strategy Collection, Teamwork Graph, Teamwork Graph CLI, and Rovo MCP now make a stronger claim than simple portfolio reporting: product, strategy, graph, CLI, and MCP surfaces are being packaged as programmable context and operating layers for agents.
- Accessed on 2026-05-25, Linear's current agent, customer-request, release, and code-intelligence surfaces still show the same adjacent pattern: customer signal, workspace context, code context, and shipped-state telemetry are being pulled into one work operating loop.
- Published on 2026-04-09 and accessed on 2026-05-25, AWS Agent Registry reinforces the governed-lifecycle side of the same pattern: a private catalog and discovery layer for agents, tools, skills, MCP servers, and custom resources with approval workflows and IDE or MCP access.
- Published on 2026-03-09 and accessed on 2026-05-25, ACP still merits first-class tracking because the registry is stabilized and official docs continue to position ACP as the client-to-agent control layer.
- Accessed on 2026-05-25, the official MCP Registry still describes itself as preview metadata meant mainly for downstream registries rather than direct host consumption.
- Accessed on 2026-05-25, official A2A v1.0 materials still position A2A as the first stable, production-ready open standard for agent-to-agent communication, with version negotiation, multi-tenancy, signed Agent Cards, and explicit complementarity with MCP.

This keeps the 2026-05-24 layered-market conclusion intact, but it materially updates the layer above coding agents: the more defensible term is now work-control-plane systems, not just upstream steering. Official OpenAI, Atlassian, Linear, and AWS surfaces now show tickets, boards, releases, customer signal, registries, and workflow contracts actively driving agent execution rather than merely informing it.

## Notable Categories

### Portable repo-native spec and planning layers

- Spec Kit
- OpenSpec

### Harness-native instruction, profile, and execution primitives

- `AGENTS.md`
- GitHub custom agent profiles in `.github/agents/*.agent.md`
- GitHub Copilot skills and subagents
- OpenAI Agents SDK skills and `Manifest` workspace abstraction
- repo-owned workflow contracts such as `WORKFLOW.md`
- Kiro steering and Powers

### Integrated spec-execution surfaces inside agent harnesses

- Kiro Specs
- Kiro Web autonomous workflows

### Coding-agent execution

- Codex
- GitHub Copilot CLI and cloud agent
- Gemini CLI
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

The more defensible practical map for 2026-05-25 remains layered, but the old `upstream steering layer` is now too weakly stated.

- In spec-driven development, keep portable repo-native planning layers separate from integrated spec-execution surfaces. Spec Kit and OpenSpec still represent portable artifacts checked into the repo. Kiro Specs and Kiro Web still represent bundled execution inside a vendor harness.
- Keep an explicit harness-primitives layer between those. OpenAI, GitHub, and Kiro still expose durable instruction or profile files, skills, subagents, workflow contracts, and sandbox or workspace descriptors as product surfaces. Those are not just docs conventions, and they are not yet full planning methodologies.
- Upgrade the old steering layer into a work-control-plane layer. OpenAI Symphony now makes the issue-tracker pattern explicit: tickets and workflow contracts can supervise long-running agent work. Atlassian and Linear reinforce the same direction from portfolio, graph, customer-signal, release, and shipped-state surfaces. Treat these systems as active operating planes for agent work, not just passive sources of prioritization context.
- In interoperability, keep the protocol boundary explicit: `ACP` for client-to-agent control, `MCP` for agent-to-tool or registry access, and `A2A v1.0` for agent-to-agent coordination. Treat registries, issue trackers, workflow contracts, and agent profiles as higher-level discovery, orchestration, or harness surfaces above those protocols.

## Sources

- Accessed 2026-05-25: [GitHub Spec Kit](https://github.github.com/spec-kit/)
- Accessed 2026-05-25: [OpenSpec](https://openspec.dev/)
- Accessed 2026-05-25: [Kiro Specs](https://kiro.dev/docs/specs/)
- Published 2026-05-18 and accessed 2026-05-25: [Introducing Kiro Web](https://kiro.dev/blog/introducing-kiro-web/)
- Published 2026-04-15 and accessed 2026-05-25: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- Published 2026-04-27 and accessed 2026-05-25: [An open-source spec for Codex orchestration: Symphony](https://openai.com/index/open-source-codex-orchestration-symphony/)
- Accessed 2026-05-25: [openai/symphony](https://github.com/openai/symphony)
- Accessed 2026-05-25: [Customize Copilot cloud agent](https://docs.github.com/en/copilot/how-tos/copilot-on-github/customize-copilot/customize-cloud-agent)
- Accessed 2026-05-25: [Creating and using custom agents for GitHub Copilot CLI](https://docs.github.com/en/copilot/how-tos/copilot-cli/customize-copilot/create-custom-agents-for-cli)
- Published 2026-04-01 and accessed 2026-05-25: [Run multiple agents at once with /fleet in Copilot CLI](https://github.blog/ai-and-ml/github-copilot/run-multiple-agents-at-once-with-fleet-in-copilot-cli/)
- Published 2026-05-06 and accessed 2026-05-25: [Introducing Product Collection](https://www.atlassian.com/blog/company-news/introducing-product-collection)
- Published 2026-05-06 and accessed 2026-05-25: [Strategy Collection your executive command center: From insight to action](https://www.atlassian.com/blog/company-news/strategy-collection-team-26)
- Accessed 2026-05-25: [Atlassian Teamwork Graph](https://www.atlassian.com/platform/teamwork-graph)
- Accessed 2026-05-25: [Teamwork Graph CLI and Rovo MCP decision guide](https://support.atlassian.com/rovo/docs/teamwork-graph-cli-and-rovo-mcp-decision-guide/)
- Accessed 2026-05-25: [Getting started with the Atlassian Rovo MCP Server](https://support.atlassian.com/atlassian-rovo-mcp-server/docs/getting-started-with-the-atlassian-remote-mcp-server/)
- Accessed 2026-05-25: [Linear Agent](https://linear.app/docs/linear-agent)
- Accessed 2026-05-25: [Linear Customer Requests](https://linear.app/docs/customer-requests)
- Accessed 2026-05-25: [Linear Releases](https://linear.app/docs/releases)
- Published 2026-05-14 and accessed 2026-05-25: [Code Intelligence for Linear Agent](https://linear.app/now/code-intelligence-for-linear-agent)
- Published 2026-04-09 and accessed 2026-05-25: [AWS Agent Registry for centralized agent discovery and governance is now available in Preview](https://aws.amazon.com/about-aws/whats-new/2026/04/aws-agent-registry-in-agentcore-preview/)
- Published 2026-03-09 and accessed 2026-05-25: [ACP Registry is stabilized](https://agentclientprotocol.com/announcements/acp-agent-registry-stabilized)
- Accessed 2026-05-25: [ACP Registry](https://agentclientprotocol.com/get-started/registry)
- Accessed 2026-05-25: [The MCP Registry](https://modelcontextprotocol.io/registry/about)
- Accessed 2026-05-25: [A2A Protocol Ships v1.0](https://a2a-protocol.org/latest/announcing-1.0/)
- Accessed 2026-05-25: [What's New in A2A Protocol v1.0](https://a2a-protocol.org/latest/whats-new-v1/)
<!-- state-of-the-art:managed:end -->
