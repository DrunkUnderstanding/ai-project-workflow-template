# Project Skills

This directory is the project-local source of truth for shared AI skills.

Use this location for skills that are specific to {{PROJECT_NAME}} or intentionally shared by multiple AI assistants.

## Rules

- Do not install project-specific skills globally.
- Do not copy old project skills into this directory without reviewing and rewriting them for {{PROJECT_NAME}}.
- Keep each skill self-contained with a `SKILL.md` file.
- Prefer small workflow skills over large all-purpose skills.
- Skills may reference `docs/ai/` and `docs/ai/memory/knowledge/` for shared context.

## Cross-AI Usage

All AI assistants should treat this directory as the canonical project skill source.

If a specific tool requires another path, add a small adapter only when it becomes necessary. Do not create tool-specific folders ahead of time.

