# Daily Refresh Spec

## Loop

The daily observatory loop is:

`Advance -> Verify -> Watchdog -> Accept or Revert -> Feed Back Into Next Advance`

## Inputs

The control loop must read:

- `STATE_OF_THE_ART.md`
- the canonical specs under `specs/`
- the managed file allowlist in `automation/managed_repo_paths.txt`
- the current contents of each allowlisted file
- `governance/WATCHDOG_FEEDBACK.md`

## Outputs

The control loop may emit:

- a replacement managed block for `STATE_OF_THE_ART.md`
- full-file replacements for allowlisted managed files
- an updated watchdog feedback file
- a revert commit when the watchdog judges the latest advance as regressive

## Constraints

- install the latest `@openai/codex` CLI on each CI run
- use `codex exec` with live web search enabled
- require a structured response that matches a version-controlled schema
- do not rewrite for style-only churn
- do not mutate controller surfaces as part of the routine loop
- run the advance job once per day during local overnight hours
- run the watchdog job after the advance job and allow it to reject the advance
- retry a Codex invocation at most once when the failure looks transient, such as rate limiting, bandwidth exhaustion, timeout, or temporary upstream failure
- fail closed on non-transient errors: do not commit, do not rewrite secrets, and let the next scheduled run try again
