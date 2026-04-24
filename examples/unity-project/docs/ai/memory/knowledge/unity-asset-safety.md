# Unity Asset Safety

> Read this before changing prefabs, scenes, `.meta` files, or asset references.

## Current Decision

Unity production assets live under `Assets/` and must be treated as reference-sensitive data.

## Rules

- Do not move, rename, or delete production assets without a spec or plan.
- Keep `.meta` files with their assets.
- Do not hand-author GUIDs unless the active plan explicitly explains why.
- Prefer Unity Editor operations for reference-sensitive changes when available.
- Document affected prefabs, scenes, and ScriptableObjects in the plan.

## Verification

- Confirm Unity can import the changed assets.
- Confirm references on affected prefabs or scenes are still valid.
- Run a compile check when scripts or serialized fields change.

