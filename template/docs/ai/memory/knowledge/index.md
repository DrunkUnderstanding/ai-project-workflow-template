# Knowledge Index

This is the project-local knowledge base for {{PROJECT_NAME}}.

Use this directory for lessons, domain decisions, repeated pitfalls, system-specific notes, and workflows that are too detailed for the stable rules in `docs/ai/`.

## How AI Assistants Should Use This Index

Before modifying a domain, check this index for relevant knowledge.

Knowledge can be triggered in two ways:

1. **Keyword trigger**: the user request mentions a listed keyword.
2. **Path trigger**: the files being changed match a listed path pattern.

## Path Triggers

| File path glob | Load document | Reason |
|---|---|---|
| `Assets/Scripts/Runtime/**` | `architecture-smell-detection.md` | Runtime systems should avoid repeated workaround patterns. |
| `Assets/Scripts/Editor/**` | `unity-editor-automation.md` | Editor-only tools must stay out of runtime code. |
| `Assets/Prefabs/**`, `Assets/Scenes/**` | `unity-asset-safety.md` | Prefabs and scenes are reference-sensitive Unity assets. |
| `AI_Assets/**` | `ai-asset-pipeline.md` | Draft AI assets need review before entering production assets. |

## Keyword Triggers

| Keywords | Load document | Reason |
|---|---|---|
| architecture, repeated bug, workaround, hack, ensure, 重复修复, 架构问题 | `architecture-smell-detection.md` | Repeated fixes may indicate a design issue. |
| editor tool, editor script, Unity editor, 菜单工具, 编辑器工具 | `unity-editor-automation.md` | Editor tooling needs runtime separation and validation. |
| prefab, scene, meta, GUID, asset reference, 预制体, 场景, 资源引用 | `unity-asset-safety.md` | Unity references require careful handling. |
| AI image, generated asset, icon, art draft, AI资源, 图标生成 | `ai-asset-pipeline.md` | Generated assets should start outside production folders. |

## Adding Knowledge

1. Create a topic file in `docs/ai/memory/knowledge/`.
2. Add keyword and path triggers to this index.
3. Keep the note focused on decisions, pitfalls, and verification steps.
4. If the knowledge affects all future work, summarize the stable rule in `docs/ai/`.

