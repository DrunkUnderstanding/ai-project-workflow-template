# Project Overview

## Project

{{PROJECT_NAME}} is a {{PROJECT_TYPE}} started from a clean foundation.

The project should be built with a spec-first workflow so future AI assistants and human developers can understand the intent, constraints, and implementation plan before touching code.

## Current Stage

The project is in foundation setup.

Avoid introducing large gameplay systems until the project foundation spec is accepted.

## Documentation Model

Use one shared documentation system for all AI assistants:

- `docs/ai/` contains long-lived project rules and conventions.
- `docs/ai/policies/constitution.md` contains the high-level project constitution.
- `specs/` contains feature-specific specs, plans, and tasks.
- `docs/ai/capabilities/skills/` contains project-local shared AI skills.
- `docs/ai/memory/knowledge/` contains project-local AI knowledge and pitfalls.
- `docs/ai/memory/decisions/` contains important project decision records.
- `AGENTS.md` and `CLAUDE.md` are lightweight entry files that point to `docs/ai/`.

## Intended Development Flow

For non-trivial work:

1. Read the AI documentation.
2. Create or update a spec.
3. Create or update the implementation plan.
4. Break the plan into tasks.
5. Implement in small, verifiable steps.
6. Update documentation if final behavior differs from the plan.
