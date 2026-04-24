# {{PROJECT_NAME}} Constitution

## Core Principles

### I. Spec First

Non-trivial work must start from a written spec before implementation.

The spec explains intent, requirements, non-goals, acceptance criteria, and validation expectations.

### II. One Documentation Source

Long-lived AI and project rules live under `docs/ai/`.

Assistant-specific entry files must point to the shared docs instead of duplicating rules.

Project-specific shared skills live under `docs/ai/capabilities/skills/`, and project knowledge lives under `docs/ai/memory/knowledge/`.

### III. Documentation Before Code

Requirement and design changes update documentation before code.

After implementation, documentation must be aligned with the final behavior.

### IV. Unity Safety

Unity assets, `.meta` files, prefab references, scene references, and GUIDs must be treated as project-critical data.

Do not move, rename, or delete Unity assets without a documented reason and validation plan.

### V. Minimal, Verifiable Changes

Prefer small, localized changes with clear validation.

Do not perform unrelated refactors or broad rewrites while implementing a feature.

### VI. Data-Driven Gameplay

Gameplay values that are likely to be tuned should be represented as data or documented configuration rather than hardcoded constants.

### VII. AI Asset Isolation

AI-generated draft assets must start in `AI_Assets/`.

Only accepted production assets should be moved into `Assets/`.

### VIII. UTF-8 Text

Source, config, and Markdown files must remain UTF-8 text.

Encoding corruption must be fixed before further edits continue.

## Governance

The constitution is changed only when project-wide working rules change.

Feature-specific details belong in `specs/`.

Operational AI guidance belongs in `docs/ai/`.

Project skills and knowledge must remain project-local unless the user explicitly promotes them to a global tool.

