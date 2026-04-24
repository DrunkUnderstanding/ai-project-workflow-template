# Unity Rules

## Asset Safety

Unity asset references are sensitive.

Do not casually move, rename, or delete files under `Assets/` because Unity `.meta` files and GUID references may be affected.

When moving or renaming Unity assets, the active spec must explain:

- The reason for the move.
- Which assets are affected.
- How references will be preserved or verified.

## Unity Change Checklist

For any change touching `Assets/`, answer these questions in the plan or final summary:

- Did this add, move, rename, or delete a Unity asset?
- Did this affect any `.meta` file or GUID reference?
- Did this affect any prefab, scene, ScriptableObject, material, animation, or import setting?
- Does Unity need to reimport assets or compile scripts?
- What is the rollback path if references break?

## `.meta` Files

Preserve Unity `.meta` files with their assets.

Do not hand-author GUIDs unless there is a documented reason and verification step.

If a new Unity asset is created outside the editor, allow Unity to generate or refresh its `.meta` file.

## Suggested Foundation Layout

The exact layout should be finalized by `specs/001-project-foundation/`, but the starting convention is:

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
```

## C# Conventions

Use clear names and small classes.

Prefer explicit, readable code over clever abstractions.

Avoid large framework decisions until a spec requires them.

## Runtime vs Editor Code

Runtime code belongs under `Assets/Scripts/Runtime/`.

Editor-only utilities belong under `Assets/Scripts/Editor/` and must not be referenced by runtime assemblies.

## Data-Driven Design

Prefer data-driven gameplay where practical.

Avoid hardcoding tunable values into gameplay logic when the value is likely to be balanced or iterated.

The first accepted data approach may be ScriptableObjects, JSON, or another documented format, but it must be specified before broad use.
