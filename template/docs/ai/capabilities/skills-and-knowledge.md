# Skills And Knowledge

{{PROJECT_NAME}} keeps project-local AI skills and project knowledge inside the repository.

This avoids global personal skill pollution and lets Codex, Claude, Cursor, and future AI assistants share the same project context.

## Canonical Locations

| Purpose | Canonical path | Notes |
|---|---|---|
| Shared project skills | `docs/ai/capabilities/skills/` | One visible source of truth for project-specific skills. |
| Knowledge base | `docs/ai/memory/knowledge/` | Lessons, pitfalls, domain decisions, and trigger index. |
| Decision records | `docs/ai/memory/decisions/` | Important choices that should survive chat history. |
| Long-lived rules | `docs/ai/` | Stable rules that all assistants must follow. |

## Skill Rules

- Do not install project-specific skills globally.
- Do not copy skills from old projects without rewriting them for {{PROJECT_NAME}}.
- Keep `docs/ai/capabilities/skills/` as the canonical project skill source.
- Only add tool-specific adapter folders when a tool truly requires them.
- Each skill should have a clear trigger, a bounded workflow, and a `SKILL.md` file.

## Knowledge Rules

- Use `docs/ai/memory/knowledge/index.md` as the knowledge router.
- Add keyword triggers for domain concepts.
- Add path triggers for files that require special context.
- Keep detailed lessons in knowledge files, then summarize stable rules in `docs/ai/` when they become permanent policy.
- Write back new knowledge when the same issue repeats, a Unity asset pitfall is found, an architecture tradeoff is made, validation changes, or an AI mistake produces a reusable lesson.

## Decision Rules

- Use `docs/ai/memory/decisions/` for architecture, data format, asset pipeline, framework, gameplay direction, and validation strategy choices.
- Add a decision record when a choice will affect future specs.
- Keep decisions short and link them from specs when relevant.

## Adapter Setup

Do not create adapter folders by default.

If an AI tool later requires a fixed hidden directory such as `.claude/skills/` or `.codex/skills/`, create the smallest possible adapter and point it back to `docs/ai/capabilities/skills/`.

## Recommended Starter Skills

Create these only when they become useful:

- `spec-workflow`: guide propose, plan, tasks, review, archive.
- `unity-compile`: run or document Unity compile verification.
- `clear-trash`: move temporary AI outputs into `trash/`.
- `asset-import`: promote accepted files from `AI_Assets/` into `Assets/` safely.
