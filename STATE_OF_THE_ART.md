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

2026-05-20

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

As of 2026-05-20, the ecosystem is still layered rather than consolidated into one end-to-end winner. The new material correction from fresh official research is that Kiro now belongs clearly in `coding-agent execution` and `host-facing execution`, not only in the spec-first workflow layer.

- Published on 2026-05-18 and accessed on 2026-05-20, Kiro launched Kiro Web in preview: a web agent that writes code, coordinates changes across repositories, opens pull requests, reads shared steering files, and exposes sandbox network and base-image controls.
- Accessed on 2026-05-20, Kiro's official product surface describes one agentic product spanning IDE, CLI, and web interfaces, with specs, steering, native MCP support, and autonomous task execution. That makes Kiro a cross-layer coding-agent surface, not just `Kiro Specs`.
- Google, OpenAI, GitHub, AWS, Atlassian, Linear, and Microsoft otherwise preserve the layered picture already recorded. Their current official materials continue to reinforce managed harnesses, remote supervision, model governance, code intelligence, registry-driven discovery, and enterprise control planes rather than collapsing the stack.

## Notable Categories

### Spec-first workflow and process layers

- Spec Kit
- OpenSpec
- Kiro Specs

### Coding-agent execution

- Codex
- Claude Code
- GitHub Copilot CLI
- GitHub Copilot cloud agent
- Gemini CLI
- Jules
- Junie
- Kiro
- OpenHands
- Rovo Dev

### Vendor agent harnesses and managed lifecycle surfaces

- OpenAI Agents SDK and ChatGPT workspace agents
- GitHub Copilot cloud agent, custom agents, and AI Controls
- Google Gemini API managed agents, Gemini Enterprise Agent Platform, Google Agents CLI, and ADK
- Amazon Bedrock AgentCore managed harness, CLI, Agent Registry, and multi-agent collaboration
- Microsoft Agent 365 and Windows 365 for Agents
- Atlassian Rovo, Teamwork Graph CLI, and Rovo MCP

### Host-facing execution, discovery, and build surfaces

- GitHub Copilot CLI
- GitHub MCP Registry and configurable MCP server access
- GitHub cloud-agent repository MCP configuration and agent management
- Google Agents CLI
- Gemini API Antigravity agent and AI Studio Playground
- AWS AgentCore CLI
- Atlassian Teamwork Graph CLI
- Atlassian Rovo MCP
- Kiro IDE, CLI, Web, steering files, and agent hooks
- ChatGPT workspace agent builder, directory, schedules, and Slack channels
- Linear Agent delegation, integrations directory, and MCP connections
- AWS Agent Registry

### Open interoperability and metadata backbones

- MCP
- official MCP Registry
- A2A
- AG-UI
- `AGENTS.md`

### Work operating systems, shared context backbones, code intelligence, and portfolio steering

- Atlassian Teamwork Graph
- Atlassian Teamwork Collection
- Jira Product Discovery
- Rovo
- Linear Agent
- Linear Code Intelligence
- Linear Releases
- Linear MCP

### Agent governance and control planes

- GitHub Copilot AI Controls
- Microsoft Agent 365
- Google Gemini Enterprise Agent Platform
- Amazon Bedrock AgentCore Policy and Agent Registry
- OpenAI workspace-agent admin controls and agent analytics surfaces
- managed execution environments, approval workflows, registry sync, runtime blocking, network policy, and agent analytics as a now-common enterprise pattern

## Current Conclusion

The stronger practical inference for 2026-05-20 is that the observatory should keep the 2026-05-19 `vendor agent harnesses and managed lifecycle surfaces` correction and add one more category correction: Kiro should be tracked as a cross-layer product that spans spec-first workflow and coding-agent execution. The 2026-05-18 Kiro Web launch and the 2026-05-20 Kiro product surface make the current report's Kiro placement too narrow. The bounded update for this run is the observatory report plus README wording alignment where the public-facing summary still says `customization surfaces`.

## Sources

- Accessed 2026-05-20: [GitHub Spec Kit](https://github.github.com/spec-kit/index.html)
- Accessed 2026-05-20: [OpenSpec](https://openspec.dev/)
- Published 2026-05-18 and accessed 2026-05-20: [Introducing Kiro Web](https://kiro.dev/blog/introducing-kiro-web/)
- Accessed 2026-05-20: [Kiro product overview](https://kiro.dev/)
- Published 2026-05-19 and accessed 2026-05-20: [Introducing Managed Agents in the Gemini API](https://blog.google/innovation-and-ai/technology/developers-tools/managed-agents-gemini-api/)
- Published 2026-05-14 and accessed 2026-05-20: [Work with Codex from anywhere](https://openai.com/index/work-with-codex-from-anywhere/)
- Published 2026-05-17 and accessed 2026-05-20: [GPT-5.3-Codex is now the base model for Copilot Business and Enterprise](https://github.blog/changelog/2026-05-17-gpt-5-3-codex-is-now-the-base-model-for-copilot-business-and-enterprise/)
- Published 2026-04-09 and accessed 2026-05-20: [AWS Agent Registry for centralized agent discovery and governance is now available in Preview](https://aws.amazon.com/about-aws/whats-new/2026/04/aws-agent-registry-in-agentcore-preview/)
- Accessed 2026-05-20: [Teamwork Graph CLI and Rovo MCP decision guide](https://support.atlassian.com/rovo/docs/teamwork-graph-cli-and-rovo-mcp-decision-guide/)
- Published 2026-05-14 and accessed 2026-05-20: [Code Intelligence](https://linear.app/changelog/2026-05-14-code-intelligence)
- Published 2026-04-30 and accessed 2026-05-20: [Releases](https://linear.app/changelog/2026-04-30-releases)
- Updated 2026-05-20 and accessed 2026-05-20: [May 2026 announcements](https://learn.microsoft.com/en-us/partner-center/announcements/2026-may)
<!-- state-of-the-art:managed:end -->
