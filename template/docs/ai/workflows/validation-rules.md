# Validation Rules

Every meaningful change must describe how it was validated.

## Preferred Validation Order

Start narrow, then go broader when needed:

1. Inspect changed files for readability and obvious mistakes.
2. Run the most focused available test or compile check.
3. Run broader validation only when the change affects shared systems.
4. Document anything that could not be validated locally.

## Unity Validation

For Unity changes, prefer at least one of:

- Unity editor compile check.
- Relevant edit mode tests.
- Relevant play mode tests.
- Manual editor verification steps when automated validation is unavailable.

## Unity Asset Validation

When Unity assets are changed, report whether the change affects:

- `Assets/` paths
- `.meta` files or GUIDs
- Prefab or scene references
- ScriptableObject serialized fields
- Import settings

If the editor cannot be run locally, state the exact manual verification needed.

## Reporting

Final work summaries should include:

- What changed.
- Which spec or document was updated.
- What validation was run.
- Any known unvalidated risks.
- Whether knowledge writeback was needed, and where it was added if so.
- Whether a decision record was needed, and where it was added if so.
