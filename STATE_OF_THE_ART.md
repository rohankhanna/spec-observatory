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

2026-04-26

## Scope

This document tracks the state of the art for software-development approaches and tools that are relevant to:

- spec-driven development
- outcome-driven development
- coding agents
- agent orchestration and interoperability
- software portfolio and project steering

## Current View

The strongest practical stack is still distributed across several layers rather than one end-to-end product, but the current report misses one material abstraction-boundary update and one framework-positioning correction.

- Spec-first workflow tools still define the repo-local planning layer. Spec Kit, OpenSpec, and Kiro continue to cover greenfield feature work, brownfield iteration, and explicit bugfix flows.
- Coding-agent execution remains a broad first tier. Codex, Claude Code, GitHub Copilot cloud agent, Jules, and OpenHands continue to define the practical set to watch.
- The runtime and framework layer is still best split into low-level orchestration and higher-level agent systems. LangGraph remains the low-level runtime, while Deep Agents, OpenAI Agents SDK, Google ADK, and Microsoft Agent Framework are the more batteries-included build surfaces.
- The main interoperability correction is that open agent coordination now spans four distinct boundaries rather than three: MCP for model-to-tool and context connectivity, ACP for editor-to-agent integration, A2A for agent-to-agent communication, and AGENTS.md for repo-local agent guidance.
- The Microsoft ecosystem has consolidated further around Microsoft Agent Framework. Microsoft now positions it as the direct successor to both AutoGen and Semantic Kernel rather than as just another parallel framework surface.
- Outcome and portfolio steering still remain vocabulary- and workflow-heavy rather than standardized around one dominant agent-native control plane.

## Notable Categories

### Spec-first workflow

- Spec Kit
- OpenSpec
- Kiro Specs

These tools still define repo-local specification authoring, with OpenSpec emphasizing living repo-native specs and Kiro making brownfield and bugfix paths explicit.

### Coding-agent execution and supervision

- Codex
- Claude Code
- GitHub Copilot cloud agent
- Jules
- OpenHands

This layer still combines local interactive agents with background cloud or remote agents that can research, plan, edit, and return code changes.

### Agent runtimes and frameworks

- LangGraph
- Deep Agents
- OpenAI Agents SDK
- Google ADK
- Microsoft Agent Framework

LangGraph remains the low-level orchestration runtime. Deep Agents, OpenAI Agents SDK, Google ADK, and Microsoft Agent Framework are the higher-level build surfaces. Microsoft Agent Framework now explicitly absorbs the role previously played by AutoGen and Semantic Kernel.

### Interoperability and coordination surfaces

- MCP
- ACP
- A2A
- AGENTS.md

This layer now spans model/tool connectivity, editor/agent integration, agent/agent communication, and repo-local instructions.

### Outcome and portfolio framing

- Outcome-driven development terminology remains established.
- Product discovery remains a common bridge from strategy to executable work.
- Portfolio management terminology remains established.

## Current Conclusion

The material update is a better abstraction boundary for open coordination. The observatory should no longer treat interoperability as just MCP, A2A, and AGENTS.md. The stronger current map is: spec-first authoring; coding-agent execution and supervision; agent runtimes and frameworks; interoperability and coordination surfaces split across MCP, ACP, A2A, and AGENTS.md; and outcome or portfolio steering. A second correction is that Microsoft Agent Framework should be treated as Microsoft's successor surface for agent systems, not merely another entrant beside older Microsoft agent stacks.

## Sources

- 2026-04-26: Spec Kit, https://github.github.com/spec-kit/
- 2026-04-26: OpenSpec, https://openspec.dev/
- 2026-04-26: Kiro Specs, https://kiro.dev/docs/specs/
- 2026-04-26: Kiro Bugfix Specs, https://kiro.dev/docs/specs/bugfix-specs/
- 2026-04-26: Introducing the Codex app, https://openai.com/index/introducing-the-codex-app/
- 2026-04-26: Claude Code overview, https://code.claude.com/docs
- 2026-04-26: About GitHub Copilot cloud agent, https://docs.github.com/en/copilot/concepts/agents/cloud-agent/about-cloud-agent
- 2026-04-26: Getting started | Jules, https://jules.google/docs/
- 2026-04-26: Terminal (CLI) | OpenHands, https://docs.openhands.dev/openhands/usage/how-to/cli-mode
- 2026-04-26: LangGraph overview, https://docs.langchain.com/oss/python/langgraph
- 2026-04-26: Deep Agents overview, https://docs.langchain.com/oss/python/deepagents/overview
- 2026-04-26: OpenAI Agents SDK, https://openai.github.io/openai-agents-python/
- 2026-04-26: Agent Development Kit technical overview, https://adk.dev/get-started/about/
- 2026-04-26: Microsoft Agent Framework overview, https://learn.microsoft.com/en-us/agent-framework/overview/
- 2026-04-26: Model Context Protocol specification 2025-11-25, https://modelcontextprotocol.io/specification/2025-11-25
- 2026-04-26: Agent Client Protocol overview, https://agentclientprotocol.com/protocol/overview
- 2026-04-26: ACP Agent Registry in JetBrains IDEs, https://blog.jetbrains.com/ai/2026/01/acp-agent-registry/
- 2026-04-26: A2A Protocol ships v1.0, https://a2a-protocol.org/latest/announcing-1.0/
- 2026-04-26: AGENTS.md, https://agents.md/
- 2026-04-26: AAIF formation announcement, https://aaif.io/news/linux-foundation-announces-the-formation-of-the-agentic-ai-foundation-aaif-anchored-by-new-project-contributions-including-model-context-protocol-mcp-goose-and-agents-md/
- 2026-04-26: Outcome Driven Development, https://www.atlassian.com/software-development/practices/outcome-driven-development
- 2026-04-26: Jira Product Discovery ideas overview, https://www.atlassian.com/software/jira/product-discovery/guides/ideas/overview
- 2026-04-26: The Standard for Portfolio Management - Fourth Edition, https://www.pmi.org/standards/for-portfolio-management
<!-- state-of-the-art:managed:end -->
