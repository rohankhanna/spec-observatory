You are updating the managed block of `STATE_OF_THE_ART.md`.

Your job is to:

1. read the current document provided below
2. run fresh web research on the relevant ecosystem
3. compare the fresh findings to the current document
4. decide whether the current document is materially stale
5. return structured output that either:
   - says no update is needed, or
   - provides a complete replacement for the managed block content

Scope:

- spec-driven development
- outcome-driven development
- coding agents
- agent orchestration
- software portfolio and project steering

Rules:

- use current primary or official sources where possible
- use absolute dates, not relative dates
- do not rewrite merely for style, wording, or minor ordering changes
- only mark `needs_update` true when there is a material change in the state of the art
- if `needs_update` is true, `replacement_managed_block_markdown` must contain the complete new content for inside the managed block, without the marker comments
- if `needs_update` is false, `replacement_managed_block_markdown` must be null
- keep the replacement concise and useful
- preserve the existing scope unless there is a strong reason the scope itself has changed
- include a `## Sources` section with direct links in the replacement block when updating

Material differences include:

- a new major tool or category that changes the recommendation landscape
- a deprecation or major repositioning of an existing tool
- a materially stronger or weaker conclusion than the current document states
- a clear correction to an inaccurate or outdated claim in the current document

Return only structured data that matches the provided JSON Schema.
