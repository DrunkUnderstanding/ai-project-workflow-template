# AI Project Workflow Template

中文说明见：`docs/zh-CN/README.md`

A reusable AI-assisted project workflow template for human-in-the-loop software development.

The template gives every project a stable structure for:

- AI entry points.
- Project rules and automation boundaries.
- Spec-driven feature planning.
- Knowledge and lessons learned.
- Decision records.
- Project-local skills.

## What This Template Provides

```text
AI.md
AGENTS.md
CLAUDE.md
docs/
  README.md
  ai/
    policies/code-style.md
specs/
  README.md
  _template/
```

## Core Idea

```text
AI.md                 # Shared AI entry/router
docs/ai/              # How AI should work in the project
specs/                # What a feature/change should become
docs/ai/memory/       # Reusable lessons and decisions
```

## Install Into A Project

From this repository:

```powershell
powershell -ExecutionPolicy Bypass -File scripts/install.ps1 -TargetPath D:\path\to\project -ProjectName MyProject -ProjectType "Unity client project"
```

By default, the installer refuses to overwrite existing files.

Use `-Force` only after reviewing the target project.

## Unity Example

Unity-specific rules are kept in `examples/unity-project/`.

Copy them into a Unity project when needed:

```text
examples/unity-project/docs/ai/systems/unity-rules.md
examples/unity-project/docs/project-structure.md
examples/unity-project/docs/ai/memory/knowledge/unity-asset-safety.md
examples/unity-project/docs/ai/memory/knowledge/unity-editor-automation.md
```

## Recommended Usage

1. Install the template into a project.
2. Edit `docs/ai/context/project-overview.md`.
3. Edit `docs/ai/policies/constitution.md`.
4. Add project-specific system rules under `docs/ai/systems/`.
5. Start Medium or Large work from `specs/_template/`.

## Versioning

Treat this repository as a reusable workflow kit.

When lessons from a project become generally useful, port them back here as templates, examples, or knowledge notes.
