# Feature Specs

This directory contains feature-level specs that guide AI and human implementation.

Use `specs/` for concrete work packages: what to build, how to build it, what tasks to execute, and how to validate completion.

## Structure

```text
specs/
  _template/
    spec.md
    plan.md
    tasks.md
  001-project-foundation/
    spec.md
    plan.md
    tasks.md
```

## File Roles

| File | Purpose |
|---|---|
| `spec.md` | Defines goals, non-goals, requirements, edge cases, human decisions, and acceptance criteria. |
| `plan.md` | Defines implementation approach, affected files, Unity impact, risks, phases, and validation plan. |
| `tasks.md` | Defines ordered implementation tasks and validation steps. |

## Rule Of Thumb

- `docs/ai/` explains how AI should work in this project.
- `specs/` explains what a specific feature or change should become.

Start new Medium or Large work by copying `specs/_template/` into a numbered feature directory.

