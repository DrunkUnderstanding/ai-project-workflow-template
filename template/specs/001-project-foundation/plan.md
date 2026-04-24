# Plan: Project Foundation

## Approach

Create a single shared AI documentation layer and keep assistant-specific files as thin entry points.

This avoids maintaining separate rule copies for Codex, Claude, Cursor, or future assistants.

## Files

- `AGENTS.md`: Codex and general agent entry point.
- `CLAUDE.md`: Claude entry point.
- `AI.md`: Shared entry point for all AI assistants.
- `.gitignore`: Unity generated folders and AI temporary output exclusions.
- `docs/ai/README.md`: Shared AI documentation index.
- `docs/ai/context/project-overview.md`: Project context.
- `docs/ai/policies/working-agreement.md`: Cross-AI working rules.
- `docs/ai/systems/`: Project-specific system rules.
- `docs/ai/workflows/spec-workflow.md`: Spec-first development workflow.
- `docs/ai/policies/automation-boundaries.md`: AI automation and approval boundaries.
- `docs/ai/capabilities/skills-and-knowledge.md`: Project-local skills and knowledge rules.
- `docs/ai/workflows/validation-rules.md`: Validation expectations.
- `docs/ai/capabilities/skills/README.md`: Canonical shared project skills location.
- `docs/ai/memory/knowledge/index.md`: Knowledge routing by keyword and file path.
- `docs/ai/memory/decisions/README.md`: Decision record convention.
- `docs/ai/policies/constitution.md`: Project constitution.
- `specs/_template/`: Reusable feature spec templates.
- `specs/001-project-foundation/spec.md`: Foundation spec.
- `specs/001-project-foundation/tasks.md`: Foundation task list.

## Risks

- Rule duplication can drift over time if assistant entry files become too detailed.
- Early folder conventions may need adjustment after real gameplay systems are designed.

## Mitigation

- Keep entry files short and link to `docs/ai/`.
- Treat this foundation as version 1 and update it through future specs.

## Validation Plan

- Confirm files exist.
- Confirm no assistant entry file contains a separate full rule copy.
- Confirm Markdown is readable.
