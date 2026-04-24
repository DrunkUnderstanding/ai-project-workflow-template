# Automation Boundaries

This document defines what AI may do automatically, what requires approval, and what is forbidden unless explicitly requested.

## AI May Do Automatically

AI may do these without asking when they fit the active task:

- Read project files and documentation.
- Search code and documentation.
- Create or update specs, plans, tasks, and knowledge notes.
- Make Tiny changes with obvious intent and low risk.
- Make Small changes after a brief plan.
- Run focused read-only inspections and safe validation commands.
- Move discarded generated outputs into `trash/` when clearly temporary.

## AI Must Ask Or Stop For Approval

AI must stop and wait for explicit user approval before:

- Implementing Medium or Large tasks after writing the spec package.
- Choosing architecture, framework, data storage, save format, or asset pipeline direction.
- Moving accepted assets from `AI_Assets/` into `Assets/`.
- Moving, renaming, or deleting Unity production assets.
- Running broad or slow validation that may interrupt the user.
- Creating tool-specific hidden directories such as `.claude/`, `.codex/`, or `.agents/`.

## AI Must Not Do Unless Explicitly Requested

AI must not:

- Run `git add`, `git commit`, `git push`, `git reset`, or `git rebase`.
- Delete user-authored files because they look unused.
- Rewrite large files wholesale when a small patch is possible.
- Install project-specific skills globally.
- Introduce large frameworks or architecture layers without a spec and user approval.
- Treat generated AI assets as production assets without user acceptance.

## Human Decisions Required

Medium and Large specs must include a `Human Decisions Required` section when any major choice is open.

Examples:

- Which gameplay loop should be prioritized?
- Should data use ScriptableObjects, JSON, or another format?
- Should a Unity package or framework be introduced?
- Should AI-generated art be accepted into production?
- Should a system be implemented now or deferred after MVP?

## Phase Gates

Large tasks should be implemented by phase.

After each phase, AI should report:

- Completed tasks.
- Files changed.
- Validation evidence.
- Risks or open questions.
- Whether user approval is needed before continuing.

