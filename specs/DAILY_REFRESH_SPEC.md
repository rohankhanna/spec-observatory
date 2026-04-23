# Daily Refresh Spec

## Loop

The daily observatory loop is:

`Read current repo -> Research -> Compare -> Update managed surfaces -> Verify -> Commit`

## Inputs

The loop must read:

- `STATE_OF_THE_ART.md`
- the canonical specs under `specs/`
- the managed file allowlist in `automation/managed_repo_paths.txt`
- the current contents of each allowlisted file

## Outputs

The loop may emit:

- a replacement managed block for `STATE_OF_THE_ART.md`
- full-file replacements for allowlisted managed files

## Constraints

- install the latest `@openai/codex` CLI on each CI run
- use `codex --search exec`
- require a structured response that matches a version-controlled schema
- do not rewrite for style-only churn
- do not mutate controller surfaces as part of the routine loop
