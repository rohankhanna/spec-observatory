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

2026-05-24

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

As of 2026-05-24, the ecosystem is still layered rather than consolidated. The harness-primitives layer added on 2026-05-23 still holds, and one new official protocol milestone now materially sharpens the picture below it: A2A has crossed from an emerging specification to a stable, production-ready agent-to-agent standard.

- Accessed on 2026-05-24, GitHub Spec Kit still presents `Spec -> Plan -> Tasks -> Implement`, 30 integrations, and a large extensions and presets ecosystem. It remains the clearest portable repo-native spec and planning layer.
- Accessed on 2026-05-24, OpenSpec still positions specs, proposals, design notes, tasks, and spec deltas as repo-native artifacts that survive agent switching. It remains a lightweight agent-agnostic planning layer.
- Accessed on 2026-05-24, Kiro Specs still packages requirements, design, tasks, quick-plan, and parallel task execution as an integrated vendor execution surface rather than a neutral planning layer.
- Published on 2026-05-18 and accessed on 2026-05-24, Kiro Web still extends that same governed harness pattern across cloud sandboxes, multi-repo sessions, and shared steering files, with specs explicitly coming to the web surface.
- Published on 2026-04-15 and accessed on 2026-05-24, OpenAI's updated Agents SDK still bundles a model-native harness with sandbox execution, a portable `Manifest` workspace abstraction, MCP, skills, `AGENTS.md`, shell, and apply-patch style editing primitives.
- Accessed on 2026-05-24, GitHub Copilot custom agents and Copilot CLI still treat version-controlled `.agent.md` profiles, skills, subagents, and parallel `/fleet` orchestration as first-class product surfaces, while GitHub Enterprise AI Controls protects those agent-profile paths at enterprise scale.
- Published on 2026-05-06 and accessed on 2026-05-24, Atlassian Product Collection and the Teamwork Graph refresh still make the strongest product-steering claim: outcome-to-delivery context is being packaged as an AI-powered operating layer, not just as adjacent planning tools.
- Accessed on 2026-05-24, Linear's current agent, MCP, customer-request, release, and code-intelligence surfaces still show the same adjacent pattern on the portfolio and delivery side: customer signal, workspace context, code context, and shipped-state telemetry are being pulled into one operating loop.
- Published on 2026-03-09 and accessed on 2026-05-24, ACP still merits first-class tracking because the registry is stabilized and official docs continue to position ACP as the client-to-agent control layer.
- Accessed on 2026-05-24, the official MCP Registry still describes itself as preview metadata meant mainly for downstream registries rather than direct host consumption.
- Accessed on 2026-05-24, official A2A v1.0 materials now position A2A as the first stable, production-ready open standard for agent-to-agent communication, with version negotiation, multi-tenancy, signed Agent Cards, and explicit complementarity with MCP.

This keeps the 2026-05-23 layered-market conclusion intact, but it materially strengthens the interoperability assessment: the protocol layer now includes a stable open coordination standard rather than only an emerging A2A draft.

## Notable Categories

### Portable repo-native spec and planning layers

- Spec Kit
- OpenSpec

### Harness-native instruction, profile, and execution primitives

- `AGENTS.md`
- GitHub custom agent profiles in `.github/agents/*.agent.md`
- GitHub Copilot skills and subagents
- OpenAI Agents SDK skills and `Manifest` workspace abstraction
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
- GitHub Copilot cloud agent, custom agents, and AI Controls
- Google Agent Platform, Agents CLI, and ADK
- Amazon Bedrock AgentCore and AWS Agent Registry
- Atlassian Rovo and Teamwork Graph CLI

### Interoperability protocols

- MCP
- ACP
- A2A v1.0

### Work operating systems, shared context backbones, and portfolio steering

- Atlassian Product Collection
- Atlassian Teamwork Graph
- Atlassian Teamwork Collection
- Jira Product Discovery
- Rovo
- Linear Agent
- Linear Customer Requests
- Linear Releases
- Linear Code Intelligence
- Linear MCP

### Agent governance and control planes

- GitHub Copilot AI Controls and agent control plane
- AWS Agent Registry approval and curation workflows
- OpenAI workspace-agent admin controls and analytics
- isolated sandboxes, policy surfaces, and auditable agent activity as a now-common enterprise pattern

## Current Conclusion

The more defensible practical map for 2026-05-24 remains three-layered at the spec and harness boundary, plus a separate upstream steering layer.

- In spec-driven development, keep portable repo-native planning layers separate from integrated spec-execution surfaces. Spec Kit and OpenSpec still represent portable artifacts checked into the repo. Kiro Specs still represent bundled execution inside a vendor harness.
- Keep an explicit harness-primitives layer between those. OpenAI, GitHub, and Kiro still expose durable instruction or profile files, skills, subagents, and sandbox or workspace descriptors as product surfaces. Those are not just docs conventions, and they are not yet full planning methodologies.
- Treat product-steering systems as another distinct layer upstream of coding agents. Atlassian Product Collection, Teamwork Graph, and Linear's agent-plus-release surfaces still increasingly supply the customer signal, prioritization context, code context, and shipped-state evidence that agents act on.
- In interoperability, keep the protocol boundary explicit and upgrade the maturity assessment for A2A: `ACP` for client-to-agent control, `MCP` for agent-to-tool or server access, and `A2A v1.0` for agent-to-agent coordination. Official A2A materials now make the MCP/A2A split an explicit protocol story, not just an analytical one. Treat registries, agent profiles, and instruction files as discovery or harness surfaces above those protocols, not as interchangeable with them.

## Sources

- Accessed 2026-05-24: [GitHub Spec Kit](https://github.github.com/spec-kit/)
- Accessed 2026-05-24: [OpenSpec](https://openspec.dev/)
- Accessed 2026-05-24: [Kiro Specs](https://kiro.dev/docs/specs/)
- Published 2026-05-18 and accessed 2026-05-24: [Introducing Kiro Web](https://kiro.dev/blog/introducing-kiro-web/)
- Published 2026-04-15 and accessed 2026-05-24: [The next evolution of the Agents SDK](https://openai.com/index/the-next-evolution-of-the-agents-sdk/)
- Accessed 2026-05-24: [Creating custom agents for Copilot cloud agent](https://docs.github.com/en/copilot/how-tos/copilot-on-github/customize-copilot/customize-cloud-agent/create-custom-agents)
- Accessed 2026-05-24: [Invoking custom agents in Copilot CLI](https://docs.github.com/en/copilot/how-tos/copilot-cli/use-copilot-cli-agents/invoke-custom-agents)
- Published 2026-04-01 and accessed 2026-05-24: [Run multiple agents at once with /fleet in Copilot CLI](https://github.blog/ai-and-ml/github-copilot/run-multiple-agents-at-once-with-fleet-in-copilot-cli/)
- Published 2026-02-26 and accessed 2026-05-24: [Enterprise AI Controls and agent control plane now generally available](https://github.blog/changelog/2026-02-26-enterprise-ai-controls-agent-control-plane-now-generally-available/)
- Published 2026-05-06 and accessed 2026-05-24: [Introducing Product Collection](https://www.atlassian.com/blog/company-news/introducing-product-collection)
- Published 2026-05-06 and accessed 2026-05-24: [Atlassian Teamwork Graph: The context engine behind your AI - everywhere](https://www.atlassian.com/blog/company-news/teamwork-graph-team-26)
- Accessed 2026-05-24: [Linear Agent](https://linear.app/docs/linear-agent)
- Accessed 2026-05-24: [Linear Customer Requests](https://linear.app/docs/customer-requests)
- Accessed 2026-05-24: [Linear Releases](https://linear.app/docs/releases)
- Published 2026-05-14 and accessed 2026-05-24: [Linear Code Intelligence](https://linear.app/changelog/2026-05-14-code-intelligence)
- Published 2026-03-09 and accessed 2026-05-24: [ACP Registry is stabilized](https://agentclientprotocol.com/announcements/acp-agent-registry-stabilized)
- Accessed 2026-05-24: [ACP Registry](https://agentclientprotocol.com/get-started/registry)
- Accessed 2026-05-24: [The MCP Registry](https://modelcontextprotocol.io/registry/about/)
- Accessed 2026-05-24: [A2A Protocol Ships v1.0](https://a2a-protocol.org/latest/announcing-1.0/)
- Accessed 2026-05-24: [What's New in A2A Protocol v1.0](https://a2a-protocol.org/latest/whats-new-v1/)
<!-- state-of-the-art:managed:end -->
