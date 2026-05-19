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

2026-05-19

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

As of 2026-05-19, the ecosystem is still layered rather than consolidated into one end-to-end winner. The new material change from fresh official research is that Google now belongs clearly in the `vendor agent harnesses and managed lifecycle surfaces` layer, not only in the open framework and CLI layer.

- Published on 2026-05-19 and accessed on 2026-05-19, Google introduced Managed Agents in the Gemini API: a hosted Antigravity agent harness that provisions an isolated Linux sandbox from a single API call, supports code execution, file management, web access, resumable environments, and lets teams define agent behavior with `AGENTS.md` and `SKILL.md` or persist agents by ID through `agents.create`.
- Updated on 2026-05-19 and accessed on 2026-05-19, Google documented the Gemini Enterprise Agent Platform Managed Agents API as a separate control-plane and data-plane surface, with an Agents API for configuration and environment policy plus an Interactions API for runtime calls. That is a first-party managed lifecycle surface, not just an SDK or open framework.
- OpenAI, Linear, Atlassian, GitHub, AWS, and Microsoft otherwise preserve the layered picture already recorded. Their recent official updates continue to reinforce enterprise governance, shared-context, and host-surface overlap rather than changing the category map.

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
- Google Gemini Enterprise Agent Platform
- Amazon Bedrock AgentCore Policy and Agent Registry
- OpenAI workspace-agent admin controls and agent analytics surfaces
- managed execution environments, approval workflows, registry sync, runtime blocking, network policy, and agent analytics as a now-common enterprise pattern

## Current Conclusion

The stronger practical inference for 2026-05-19 is that the observatory should keep the `work operating systems` correction from 2026-05-18 and add one more correction: the repo should speak about `vendor agent harnesses and managed lifecycle surfaces`, not `customization surfaces`. Google's 2026-05-19 Managed Agents launch shows that a major vendor now offers a first-party hosted agent harness with repo-native agent files, saved agent identities, sandbox and network policy, and enterprise control-plane/data-plane separation. That moves Google from mostly `framework/CLI provider` into the same broader managed-agent layer already occupied by OpenAI, GitHub, AWS, Atlassian, and Microsoft. The bounded update for this run is the observatory report plus wording alignment in the product and research-scope specs.

## Sources

- Published 2026-05-19 and accessed 2026-05-19: [Introducing Managed Agents in the Gemini API](https://blog.google/innovation-and-ai/technology/developers-tools/managed-agents-gemini-api/)
- Updated 2026-05-19 and accessed 2026-05-19: [Agents Overview](https://ai.google.dev/gemini-api/docs/agents)
- Updated 2026-05-19 and accessed 2026-05-19: [Building Managed Agents](https://ai.google.dev/gemini-api/docs/custom-agents)
- Updated 2026-05-19 and accessed 2026-05-19: [Managed Agents API on Agent Platform overview](https://docs.cloud.google.com/gemini-enterprise-agent-platform/build/managed-agents)
- May 14, 2026 section accessed 2026-05-19: [ChatGPT Enterprise & Edu - Release Notes](https://help.openai.com/en/articles/10128477-chatgpt-enterprise-edu-release-notes)
- Published 2026-05-18 and accessed 2026-05-19: [Audit repository Copilot cloud agent configuration via the REST API](https://github.blog/changelog/2026-05-18-audit-repository-copilot-cloud-agent-configuration-via-the-rest-api/)
- Published 2026-05-08 and accessed 2026-05-19: [More flexible secrets and variables for Copilot cloud agent](https://github.blog/changelog/2026-05-08-more-flexible-secrets-and-variables-for-copilot-cloud-agent/)
- Published 2026-05-14 and accessed 2026-05-19: [Code Intelligence](https://linear.app/changelog/2026-05-14-code-intelligence)
- Accessed 2026-05-19: [Teamwork Graph CLI and Rovo MCP decision guide](https://support.atlassian.com/rovo/docs/teamwork-graph-cli-and-rovo-mcp-decision-guide/)
- Posted 2026-04-09 and accessed 2026-05-19: [AWS Agent Registry for centralized agent discovery and governance is now available in Preview](https://aws.amazon.com/about-aws/whats-new/2026/04/aws-agent-registry-in-agentcore-preview/)
- Updated 2026-05-19 and accessed 2026-05-19: [May 2026 announcements](https://learn.microsoft.com/en-us/partner-center/announcements/2026-may)
<!-- state-of-the-art:managed:end -->
