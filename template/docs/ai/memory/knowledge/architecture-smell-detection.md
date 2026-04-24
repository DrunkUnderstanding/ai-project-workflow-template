# Architecture Smell Detection

> Read this when the same kind of bug keeps reappearing under different names.

## Core Principle

When the same issue needs similar fixes in three or more places, stop adding patches and question the architecture.

Repeated local fixes usually mean the responsibility is in the wrong layer.

## Warning Signs

| Signal | Meaning |
|---|---|
| Fixing one screen causes the same problem on another screen | The root cause was not addressed. |
| Three or more files need the same defensive code | The guard belongs in a shared abstraction. |
| New modules require a special manual step to avoid bugs | The lifecycle or API is not encapsulated. |
| Names like `Ensure`, `Fix`, `Workaround`, or `Hack` appear repeatedly | The code is describing its own design debt. |

## Decision Process

1. Count how many similar patches already exist.
2. If there are three or more, stop and identify the shared responsibility.
3. Propose a minimal architectural fix in the active spec or plan.
4. Refactor only the layer that owns the root cause.
5. Validate old cases and the new case together.

