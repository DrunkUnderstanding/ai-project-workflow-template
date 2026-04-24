# AI Working Agreement

These rules apply to all AI assistants working in this repository.

## Single Source of Truth

Maintain shared project rules in `docs/ai/`.

Do not copy full rule sets into assistant-specific files. If a rule changes, update the relevant file under `docs/ai/` and keep entry files as pointers only.

Maintain project-specific shared skills in `docs/ai/capabilities/skills/` and project knowledge in `docs/ai/memory/knowledge/`.

Do not install {{PROJECT_NAME}}-specific skills into global personal skill directories.

## Documentation First

Requirement and design changes must update documentation before code changes.

This includes small tweaks, one-off fixes, and feature experiments.

Use this order:

1. Update or create the relevant spec or AI document.
2. Implement the code or asset change.
3. Re-check the document against the final behavior.

For Medium and Large tasks, stop after writing `spec.md`, `plan.md`, and `tasks.md`; wait for explicit user approval before implementation.

## Safe Editing

Use small, targeted edits.

Do not rewrite source files through shell redirection or broad file replacement. Avoid commands such as `Set-Content`, `Out-File`, `echo > file`, `cat <<EOF > file`, `>` and `>>` for source files.

Prefer patch-based edits and exact-context changes.

## Encoding

Keep text files UTF-8 encoded.

This is mandatory for:

- `*.cs`
- `*.json`
- `*.md`
- `*.asmdef`
- `*.shader`
- `*.hlsl`
- `*.uxml`
- `*.uss`

If mojibake or broken encoding is detected, stop editing the file and restore a clean version before continuing.

## Minimal Scope

Do not fix unrelated issues while completing a task.

Do not rename, move, or reorganize files unless the active spec explicitly requires it.

## Temporary Output

Use these directories for generated or temporary work:

- `AI_Assets/` for AI-generated draft art, audio, images, or external assets.
- `trash/` for obsolete temporary files, test outputs, and discarded generated files.

Only move assets into `Assets/` after they are accepted for real project use.

## Output Locations

Use these locations consistently:

- Project rules: `docs/ai/`
- AI skills: `docs/ai/capabilities/skills/`
- AI knowledge: `docs/ai/memory/knowledge/`
- Feature specs: `specs/`
- Draft AI assets: `AI_Assets/`
- Discarded temporary files: `trash/`
- Unity production assets and code: `Assets/`

## Git

Do not run `git add`, `git commit`, `git push`, `git reset`, `git rebase`, or destructive checkout commands unless explicitly requested by the user.
