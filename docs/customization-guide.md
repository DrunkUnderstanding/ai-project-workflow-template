# Customization Guide

After installing the template into a project, customize these files first:

1. `docs/ai/context/project-overview.md`
2. `docs/ai/policies/constitution.md`
3. `docs/ai/systems/`
4. `docs/ai/memory/knowledge/index.md`

## Placeholders

Replace placeholders such as:

- `{{PROJECT_NAME}}`
- `{{PROJECT_TYPE}}`
- `{{TECH_STACK}}`
- `{{VALIDATION_COMMANDS}}`

## Adding A System

Create a system rule file:

```text
docs/ai/systems/my-system-rules.md
```

Then update `AI.md` and `docs/ai/README.md` if the system should be loaded for specific tasks.

