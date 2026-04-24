# Usage Guide

## Tiny Work

Small typo, obvious single-file bug, or no behavior design.

AI can edit directly and summarize validation.

## Small Work

Localized behavior change or a few files.

AI should make a brief plan, implement, validate, and update docs if behavior changed.

## Medium Work

New feature, data shape, workflow, or multiple systems.

AI must create or update:

```text
specs/NNN-feature-name/spec.md
specs/NNN-feature-name/plan.md
specs/NNN-feature-name/tasks.md
```

Then AI stops for human approval before implementation.

## Large Work

Architecture, broad refactor, framework adoption, platform/build/save/data strategy.

AI must work phase by phase with human confirmation between phases.

