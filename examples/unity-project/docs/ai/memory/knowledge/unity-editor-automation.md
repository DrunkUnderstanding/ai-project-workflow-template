# Unity Editor Automation

> Read this before creating Unity editor tools, menu items, or batch asset operations.

## Current Decision

Editor tooling must be isolated from runtime code.

## Rules

- Put editor-only scripts under `Assets/Scripts/Editor/` or an Editor-only assembly.
- Do not reference editor-only classes from runtime assemblies.
- Prefer small, reversible tools with clear input and output.
- For batch asset operations, explain the target paths and rollback strategy.

## Verification

- Confirm runtime code does not reference `UnityEditor`.
- Run a Unity compile check after editor script changes.
- For batch operations, test on a small sample before broad changes.

