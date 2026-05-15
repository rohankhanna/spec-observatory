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

2026-05-15

## Scope

This document tracks the state of the art for:

- spec-driven development
- outcome-driven development
- coding-agent execution
- vendor agent harnesses and customization surfaces
- general agent build, deploy, runtime, and operating surfaces
- orchestration and interoperability
- software portfolio and project steering
- agent governance and control planes

## Current View

As of 2026-05-15, the ecosystem is still layered rather than consolidated into one end-to-end winner. The material update from fresh official research is that the observatory should strengthen two abstraction boundaries beyond the 2026-05-14 correction about host-facing access versus neutral registries.

- On 2026-04-22, AWS repositioned Amazon Bedrock AgentCore as more than runtime plus registry infrastructure. Official AWS material now presents AgentCore around a managed harness, an AgentCore CLI, governed registry surfaces, and coding-assistant skills. That makes AWS a clearer example of a vendor pairing managed execution, local build and deploy entrypoints, and governed catalog surfaces inside one agent platform.
- On 2026-05-14, Linear put Code Intelligence into public beta. Linear Agent now gets controlled repository access so PM, Support, Sales, and Engineering can use codebase understanding inside triage, specs, project planning, and customer-request workflows. Shared work context is no longer just issues, projects, docs, and customer signals; in leading product systems it now explicitly includes governed code intelligence.
- Google Agents CLI, Atlassian Teamwork Graph CLI, and GitHub's cloud-agent versus registry split reinforce that the host-facing layer is not just discovery. It is also a build and deployment entrypoint layer for humans, shells, CI, and coding agents.
- OpenAI workspace agents, Microsoft Agent 365 plus Windows 365 for Agents, and the official MCP Registry otherwise reinforce the broader layered picture already recorded: workspace directories and admin consoles sit above explicit execution and governance layers, while neutral protocol and metadata backbones remain distinct from vendor-specific host surfaces.

## Notable Categories

### Spec-first workflow

- Spec Kit
- OpenSpec
- Kiro Specs

### Coding-agent execution

- Codex
- Claude Code
- GitHub Copilot cloud agent
- Gemini CLI
- Jules
- Junie
- OpenHands
- Rovo Dev

### Vendor agent harnesses and managed lifecycle surfaces

- OpenAI Agents SDK and ChatGPT workspace agents
- GitHub Copilot cloud agent, custom agents, and AI Controls
- Google Agents CLI, ADK, and Gemini Enterprise
- Amazon Bedrock AgentCore managed harness, CLI, Agent Registry, and multi-agent collaboration
- Microsoft Agent 365 and Windows 365 for Agents
- Atlassian Rovo, Teamwork Graph CLI, and Rovo MCP

### Host-facing access, discovery, and build surfaces

- GitHub private MCP registries for Copilot CLI and supported IDEs
- GitHub repository and custom-agent-profile MCP configuration for Copilot cloud agent
- Google Agents CLI
- Gemini Enterprise Agent Gallery and Agents page
- AWS AgentCore CLI
- Atlassian Teamwork Graph CLI
- Atlassian Rovo MCP
- ChatGPT workspace directory
- AWS Agent Registry

### Open interoperability and metadata backbones

- MCP
- official MCP Registry
- A2A
- AG-UI
- `AGENTS.md`

### Shared work context, code intelligence, outcome framing, and portfolio steering

- Atlassian Teamwork Graph
- Atlassian Teamwork Collection
- Jira Product Discovery
- Linear Agent
- Linear Code Intelligence
- Linear MCP

### Agent governance and control planes

- GitHub Copilot AI Controls
- Microsoft Agent 365
- Amazon Bedrock AgentCore Policy and Agent Registry
- OpenAI workspace-agent admin controls
- managed execution environments, approval workflows, registry sync, and runtime blocking as a now-common enterprise pattern

## Current Conclusion

The stronger practical inference for 2026-05-15 is that the observatory should keep the 2026-05-14 split between host-facing surfaces and neutral protocol or metadata backbones, but refine two layer names around it. First, `host-facing access and discovery` should be treated as `host-facing access, discovery, and build` because Google, Atlassian, and now AWS all expose terminal or CLI entrypoints that are not just catalogs. Second, `shared work context` should explicitly include governed code intelligence because Linear now pulls repository context directly into product and triage workflows. AWS AgentCore and Linear Code Intelligence are the material changes that justify this correction. The bounded update for this run is the observatory report only.

## Sources

- Accessed 2026-05-15: [Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-05-15: [OpenSpec](https://openspec.dev/)
- Accessed 2026-05-15: [Kiro Specs](https://kiro.dev/docs/specs/)
- Accessed 2026-05-15: [OpenAI Agents SDK handoffs](https://openai.github.io/openai-agents-python/handoffs/)
- Accessed 2026-05-15: [ChatGPT Workspace Agents for Enterprise and Business](https://help.openai.com/en/articles/20001143/)
- Accessed 2026-05-15: [ChatGPT Enterprise and Edu release notes](https://help.openai.com/en/articles/10128477-chatgpt-enterprise-edu-release-notes)
- Accessed 2026-05-15: [ChatGPT agent workspace controls](https://help.openai.com/en/articles/11752874-chatgpt-agent)
- Accessed 2026-05-15: [GitHub agent management for enterprises](https://docs.github.com/en/enterprise-cloud%40latest/copilot/concepts/agents/enterprise-management)
- Accessed 2026-05-15: [GitHub custom agents](https://docs.github.com/en/enterprise-cloud%40latest/copilot/concepts/agents/cloud-agent/about-custom-agents)
- Accessed 2026-05-15: [GitHub custom agents and sub-agent orchestration](https://docs.github.com/en/enterprise-cloud%40latest/copilot/how-tos/copilot-sdk/use-copilot-sdk/custom-agents)
- Accessed 2026-05-15: [Connect agents to external tools for Copilot cloud agent](https://docs.github.com/en/copilot/how-tos/copilot-on-github/customize-copilot/customize-cloud-agent/extend-cloud-agent-with-mcp)
- Published 2026-04-22, accessed 2026-05-15: [Agents CLI in Agent Platform: create to production in one CLI](https://developers.googleblog.com/agents-cli-in-agent-platform-create-to-production-in-one-cli/)
- Accessed 2026-05-15: [Gemini Enterprise agents overview](https://docs.cloud.google.com/gemini/enterprise/docs/agents-overview)
- Accessed 2026-05-15: [Browse agents with Agent Gallery](https://docs.cloud.google.com/gemini/enterprise/docs/agent-gallery)
- Accessed 2026-05-15: [Multi-Agent Systems in ADK](https://adk.dev/agents/multi-agents/)
- Published 2026-04-22, accessed 2026-05-15: [Amazon Bedrock AgentCore adds new features to help developers build agents faster](https://aws.amazon.com/about-aws/whats-new/2026/04/agentcore-new-features-to-build-agents-faster/)
- Accessed 2026-05-15: [Get started with the AgentCore CLI](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/runtime-get-started-cli.html)
- Accessed 2026-05-15: [Get started with the harness](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/harness-get-started.html)
- Accessed 2026-05-15: [AWS Agent Registry](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/registry.html)
- Accessed 2026-05-15: [Teamwork Graph CLI and Rovo MCP decision guide](https://support.atlassian.com/rovo/docs/teamwork-graph-cli-and-rovo-mcp-decision-guide/)
- Published 2026-05-14, accessed 2026-05-15: [Linear Code Intelligence](https://linear.app/changelog/2026-05-14-code-intelligence)
- Accessed 2026-05-15: [Linear AI Agents](https://linear.app/docs/agents-in-linear)
- Accessed 2026-05-15: [Linear MCP server](https://linear.app/docs/mcp)
- Published 2026-05-01, accessed 2026-05-15: [Microsoft Agent 365, now generally available, expands capabilities and integrations](https://www.microsoft.com/en-us/security/blog/2026/05/01/microsoft-agent-365-now-generally-available-expands-capabilities-and-integrations/)
- Accessed 2026-05-15: [Windows 365 for Agents in Agent 365](https://learn.microsoft.com/en-us/windows-365/agents/w365a-availability-a365)
- Accessed 2026-05-15: [The MCP Registry](https://modelcontextprotocol.io/registry/about)
- Accessed 2026-05-15: [MCP Registry aggregators](https://modelcontextprotocol.io/registry/registry-aggregators)
- Accessed 2026-05-15: [A2A Protocol v1.0 announcement](https://a2a-protocol.org/latest/announcing-1.0/)
- Accessed 2026-05-15: [AG-UI overview](https://docs.ag-ui.com/introduction)
- Accessed 2026-05-15: [AGENTS.md](https://agents.md/)
<!-- state-of-the-art:managed:end -->
