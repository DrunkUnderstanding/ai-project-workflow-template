# AI Entry

All AI assistants should start here.

This file is a router, not the full knowledge base. Read only the extra documents that are relevant to the current task.

## Always Read

1. `AI.md`
2. `docs/ai/README.md`
3. `docs/ai/context/project-overview.md`
4. `docs/ai/policies/constitution.md`

## Read As Needed

| Situation | Read |
|---|---|
| Any code, asset, or document change | `docs/ai/policies/working-agreement.md` |
| Need to classify task size or create a spec | `docs/ai/workflows/spec-workflow.md` |
| Need to know what AI can do without asking | `docs/ai/policies/automation-boundaries.md` |
| Touching project-specific systems or framework areas | `docs/ai/systems/` relevant files |
| Running tests, compile checks, or reporting validation | `docs/ai/workflows/validation-rules.md` |
| Using or creating project skills or knowledge | `docs/ai/capabilities/skills-and-knowledge.md` |
| Reusable lessons, pitfalls, or domain context may apply | `docs/ai/memory/knowledge/index.md` |

## Default Workflow

1. Classify task size: Tiny, Small, Medium, or Large.
2. Load only the relevant docs from the routing table.
3. Check `docs/ai/memory/knowledge/index.md` for keyword and path triggers.
4. For Tiny tasks, edit directly and summarize validation.
5. For Small tasks, make a brief plan, implement, validate, and update docs if behavior changes.
6. For Medium or Large tasks, create or update `specs/NNN-feature-name/` using `specs/_template/`, then stop for user approval.
7. Implement approved work phase by phase.
8. If implementation reveals a spec gap, update the spec before continuing.
9. Validate the change and report evidence.
10. Update `docs/ai/memory/knowledge/` or `docs/ai/memory/decisions/` when reusable lessons or important decisions are discovered.

## Hard Rules

- Do not duplicate long-lived rules in assistant-specific files.
- Do not install project-specific skills globally.
- Do not move, rename, or delete Unity assets without an explicit plan.
- Do not start Medium or Large implementation until the user explicitly approves the spec package.
- Do not run git commit, push, reset, or rebase unless explicitly requested.
