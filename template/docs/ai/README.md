# AI Documentation Map

This directory is the single source of truth for AI-readable project rules.

The root `AI.md` file is the shared entry point for all AI assistants. This directory holds the deeper context that AI should load only when relevant.

## Layers

| Layer | Path | Purpose |
|---|---|---|
| Context | `docs/ai/context/` | What this project is and what stage it is in. |
| Policies | `docs/ai/policies/` | Hard rules, boundaries, and project constitution. |
| Workflows | `docs/ai/workflows/` | Repeatable processes such as spec and validation flow. |
| Systems | `docs/ai/systems/` | Domain-specific rules for project systems such as Unity. |
| Memory | `docs/ai/memory/` | Knowledge, pitfalls, and decision records. |
| Capabilities | `docs/ai/capabilities/` | Project-local AI skills and capability conventions. |

## Recommended Reading

Always start from:

1. `AI.md`
2. `docs/ai/README.md`
3. `docs/ai/context/project-overview.md`
4. `docs/ai/policies/constitution.md`

Then load only what the task needs:

- For code or asset changes: `docs/ai/policies/working-agreement.md`
- For automation boundaries: `docs/ai/policies/automation-boundaries.md`
- For specs: `docs/ai/workflows/spec-workflow.md`
- For validation: `docs/ai/workflows/validation-rules.md`
- For project-specific system changes: relevant files under `docs/ai/systems/`
- For skills: `docs/ai/capabilities/skills-and-knowledge.md`
- For prior lessons: `docs/ai/memory/knowledge/index.md`
- For project decisions: `docs/ai/memory/decisions/README.md`

## Single-Maintenance Rule

Project rules should be maintained here, not duplicated across assistant-specific files.

Assistant entry files such as `AGENTS.md`, `CLAUDE.md`, and future IDE-specific files should only point back to `AI.md`.
