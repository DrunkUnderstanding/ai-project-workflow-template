# Spec Workflow

{{PROJECT_NAME}} uses a Spec Kit inspired workflow.

The goal is not to add ceremony. The goal is to make AI work predictable, reviewable, and easy to stop before it edits the wrong thing.

## Task Size Classification

Classify every request before editing files.

| Size | Typical scope | Workflow |
|---|---|---|
| Tiny | 1-2 files, typo, obvious bug, no behavior design | Direct edit is allowed. Summarize validation. |
| Small | 3-5 files or localized behavior change | Brief plan first, then implement. Update docs if behavior changes. |
| Medium | New feature, new workflow, data shape change, or multiple systems | Create or update `spec.md`, `plan.md`, and `tasks.md`; stop for approval before implementation. |
| Large | Architecture, broad refactor, Unity asset organization, save/build/platform change | Create or update spec package; stop for approval; implement in phases. |

If unsure, choose the larger size.

## When A Spec Is Required

A spec is required for:

- New gameplay systems.
- New UI flows.
- Persistent data or save changes.
- Asset organization changes.
- Build, packaging, or platform integration changes.
- Any change touching multiple subsystems.

A spec is optional for tiny typo fixes, comments, or purely mechanical cleanup, but documentation still wins if behavior or requirements change.

## Approval Gate

For Medium and Large tasks, AI must stop after producing or updating `spec.md`, `plan.md`, and `tasks.md`.

Implementation may start only after the user gives an explicit confirmation such as `start`, `approved`, `ok`, `??`, `??`, or equivalent.

Do not treat silence, ambiguous feedback, or follow-up questions as approval.

## Spec Lifecycle

Use this lifecycle for non-trivial work:

1. `spec.md` describes what users need and what the feature must do.
2. `plan.md` describes how the project will implement it.
3. `tasks.md` breaks the implementation into small steps.
4. Code and assets are changed according to the tasks.
5. Validation results are recorded or summarized.

## Reverse Sync

If implementation reveals that the spec, plan, or tasks are wrong or incomplete, update the relevant document before continuing implementation.

Do not finish the code first and backfill documentation later.

## Task Boundary

Implementation must follow `tasks.md`.

If a needed change is not listed in `tasks.md`, stop and update `tasks.md` before making that change.

## Recommended Feature Directory

```text
specs/NNN-feature-name/
  spec.md
  plan.md
  tasks.md
```

Start from the templates in `specs/_template/`.

Optional files may be added when useful:

```text
specs/NNN-feature-name/
  research.md
  data-model.md
  acceptance.md
```

## Spec Requirements

Every `spec.md` should include:

- Background
- Goals
- Non-goals
- User or gameplay flow
- Functional requirements
- Edge cases
- Human decisions required
- Acceptance criteria

## Plan Requirements

Every `plan.md` should include:

- Affected directories and files
- Unity assets or prefabs involved
- Data/configuration impact
- Implementation approach
- Risks and alternatives
- Phase plan
- Validation plan

## Task Requirements

Every `tasks.md` should include:

- Ordered implementation steps
- File or directory targets
- Independent tasks marked clearly
- Validation steps
- Documentation update steps

## Knowledge Writeback

Update `docs/ai/memory/knowledge/` when a change creates reusable project knowledge.

Knowledge writeback is required when:

- The same issue appears for the second time.
- A Unity asset, prefab, scene, `.meta`, or GUID pitfall is discovered.
- A design or architecture tradeoff is made.
- A validation process changes.
- An AI mistake is corrected and the lesson should prevent repetition.
