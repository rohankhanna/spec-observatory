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

2026-05-18

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

As of 2026-05-18, the ecosystem is still layered rather than consolidated into one end-to-end winner. The material correction from fresh official research is that the observatory should update one separation it currently draws too cleanly.

- As accessed on 2026-05-18, OpenAI Help Center docs describe ChatGPT workspace agents as a builder, directory, scheduling, Slack, custom-MCP, app-auth, analytics, and admin-governed surface, and the 2026-05-07 Enterprise release notes extend that surface to eligible EKM workspaces. ChatGPT is not only a workspace directory or policy layer; it is a host-facing agent build and execution surface inside an enterprise work hub.
- As accessed on 2026-05-18, Linear docs describe agents as first-class workspace actors that admins install, users delegate work to, and teams steer with markdown guidance. Linear changelogs add MCP connections on 2026-04-23 and Code Intelligence on 2026-05-14. Linear is not only a portfolio-steering or shared-context layer; it is also an agent host embedded inside the product operating system.
- As published on 2026-05-06 and accessed on 2026-05-18, Atlassian describes Teamwork Graph CLI and Rovo MCP as official ways for agents to read and act on work via the Teamwork Graph, and explicitly frames these surfaces as headless-app access to the system of work. Atlassian likewise spans context-backbone and execution-host roles.
- GitHub Copilot CLI and cloud-agent surfaces, Spec Kit and Kiro orchestration, Google Agents CLI and Gemini Enterprise, AWS AgentCore, Microsoft Agent 365, the official MCP Registry, A2A, and AG-UI otherwise preserve the layered picture already recorded.

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
- OpenHands
- Rovo Dev

### Vendor agent harnesses and managed lifecycle surfaces

- OpenAI Agents SDK and ChatGPT workspace agents
- GitHub Copilot cloud agent, custom agents, and AI Controls
- Google Agents CLI, ADK, and Gemini Enterprise
- Amazon Bedrock AgentCore managed harness, CLI, Agent Registry, and multi-agent collaboration
- Microsoft Agent 365 and Windows 365 for Agents
- Atlassian Rovo, Teamwork Graph CLI, and Rovo MCP

### Host-facing execution, discovery, and build surfaces

- GitHub Copilot CLI
- GitHub MCP Registry and configurable MCP server access
- GitHub cloud-agent repository MCP configuration and agent management
- Google Agents CLI
- Gemini Enterprise Agent Gallery and Agents page
- AWS AgentCore CLI
- Atlassian Teamwork Graph CLI
- Atlassian Rovo MCP
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
- Linear MCP

### Agent governance and control planes

- GitHub Copilot AI Controls
- Microsoft Agent 365
- Amazon Bedrock AgentCore Policy and Agent Registry
- OpenAI workspace-agent admin controls and agent analytics surfaces
- managed execution environments, approval workflows, registry sync, runtime blocking, and agent analytics as a now-common enterprise pattern

## Current Conclusion

The stronger practical inference for 2026-05-18 is that the observatory should collapse one separation it currently keeps too sharp. `shared work context, code intelligence, outcome framing, and portfolio steering` should be reframed as `work operating systems, shared context backbones, code intelligence, and portfolio steering`, because Atlassian, Linear, and ChatGPT workspace surfaces now combine shared context with agent hosting, work delegation or scheduling, MCP extension, and admin governance inside the same operational systems. This is a material correction to the current report's tendency to treat portfolio or context surfaces as mostly adjacent to host-facing execution surfaces rather than increasingly overlapping with them. The bounded update for this run is the observatory report only.

## Sources

- Accessed 2026-05-18: [ChatGPT Workspace Agents for Enterprise and Business](https://help.openai.com/en/articles/20001143-chatgpt-workspace-agents-for-enterprise-and-business)
- Published 2026-05-07 and accessed 2026-05-18: [ChatGPT Enterprise & Edu - Release Notes](https://help.openai.com/en/articles/10128477-chatgpt-enterprise-edu-release-notes)
- Accessed 2026-05-18: [AI Agents | Linear Docs](https://linear.app/docs/agents-in-linear)
- Published 2026-04-23 and accessed 2026-05-18: [Linear Agent MCP support](https://linear.app/changelog/2026-04-23-linear-agent-mcp-support)
- Published 2026-05-14 and accessed 2026-05-18: [Code Intelligence](https://linear.app/changelog/2026-05-14-code-intelligence)
- Published 2026-05-06 and accessed 2026-05-18: [Atlassian Teamwork Graph: The context engine behind your AI—everywhere](https://www.atlassian.com/blog/company-news/teamwork-graph-team-26)
- Accessed 2026-05-18: [Teamwork Graph CLI and Rovo MCP decision guide](https://support.atlassian.com/rovo/docs/teamwork-graph-cli-and-rovo-mcp-decision-guide/)
<!-- state-of-the-art:managed:end -->
