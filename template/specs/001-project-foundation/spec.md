# Spec: Project Foundation

## Background

{{PROJECT_NAME}} is starting from a clean Unity project foundation.

Before gameplay systems are implemented, the project needs shared rules for documentation, AI collaboration, Unity asset organization, code organization, and validation.

## Goals

- Establish a single documentation source that all AI assistants can understand.
- Establish project-local locations for shared AI skills and knowledge.
- Define a spec-first workflow for future features.
- Define safe project-specific editing rules.
- Define initial folder conventions for scripts, assets, scenes, prefabs, data, and generated files.
- Make future AI work predictable and reviewable.

## Non-Goals

- Do not implement gameplay systems in this spec.
- Do not choose a large gameplay framework prematurely.
- Do not migrate old project business rules into {{PROJECT_NAME}} by default.
- Do not import old project skills or generated assets by default.

## Functional Requirements

1. The project must have lightweight AI entry files for Codex, Claude, and other assistants.
2. The project must keep shared AI rules in `docs/ai/`.
3. The project must keep shared project skills in `docs/ai/capabilities/skills/`.
4. The project must keep shared AI knowledge in `docs/ai/memory/knowledge/`.
5. The project must keep project-wide principles in `docs/ai/policies/constitution.md`.
6. New non-trivial features must create a directory under `specs/`.
7. AI-generated draft assets must go to `AI_Assets/` before entering Unity production directories.
8. Temporary discarded files must go to `trash/` instead of polluting the project root.
9. Project assets and critical generated files must not be moved, renamed, or deleted without an explicit spec or plan.
10. Source and documentation files must remain UTF-8 encoded.
11. Medium and Large tasks must stop for explicit user approval after spec, plan, and tasks are written.
12. AI and generated temporary outputs must be excluded from version control unless explicitly accepted.
13. Feature specs must use `specs/_template/` as the starting structure.
14. Important project decisions must be recorded in `docs/ai/memory/decisions/`.
15. AI automation boundaries must be documented in `docs/ai/policies/automation-boundaries.md`.

## Initial Directory Convention

```text
Assets/
  Scripts/
    Runtime/
    Editor/
    Tests/
  Art/
  Audio/
  Prefabs/
  Scenes/
  ScriptableObjects/
  Settings/
docs/
  ai/
specs/
AI_Assets/
trash/
```

## Acceptance Criteria

- `AGENTS.md` exists and points to the shared AI documentation.
- `CLAUDE.md` exists and points to the shared AI documentation.
- `AI.md` exists as the shared AI entry point.
- `docs/ai/` contains context, policies, workflows, systems, memory, and capabilities layers.
- `docs/ai/capabilities/skills/` exists as the canonical project-local skill location.
- `docs/ai/memory/knowledge/index.md` exists as the project-local knowledge router.
- `docs/ai/policies/constitution.md` contains the project-wide principles.
- `docs/ai/policies/automation-boundaries.md` defines what AI can do automatically.
- `docs/ai/memory/decisions/README.md` defines decision record conventions.
- `specs/_template/` contains reusable spec, plan, and tasks templates.
- `.gitignore` excludes Unity generated folders and AI temporary outputs.
- `specs/001-project-foundation/spec.md` documents this foundation.

## Validation

- Verify all expected files exist.
- Verify assistant-specific entry files do not duplicate the full rules.
- Verify the shared documentation is readable Markdown.
