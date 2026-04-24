# Unity 规则

## 资源安全

Unity 资源引用很敏感。

不要随意移动、重命名或删除 `Assets/` 下的文件，因为 Unity `.meta` 文件和 GUID 引用可能受到影响。

移动或重命名 Unity 资源时，当前 spec 必须说明：

- 移动原因。
- 受影响资源。
- 如何保留或验证引用。

## Unity 变更检查表

任何触碰 `Assets/` 的变更，都应在 plan 或最终总结中回答：

- 是否新增、移动、重命名或删除了 Unity 资源？
- 是否影响任何 `.meta` 文件或 GUID 引用？
- 是否影响 prefab、scene、ScriptableObject、material、animation 或 import setting？
- Unity 是否需要重新导入资源或编译脚本？
- 如果引用损坏，回滚路径是什么？

## `.meta` 文件

Unity `.meta` 文件必须与对应资源一起保留。

除非有文档说明原因和验证步骤，不要手写 GUID。

如果在 Editor 外创建新的 Unity 资源，应允许 Unity 生成或刷新对应 `.meta` 文件。

## 建议的基础目录

准确目录应由 `specs/001-project-foundation/` 最终确定，但起始约定如下：

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

## C# 约定

使用清晰命名和小 class。

优先写显式、可读的代码，不优先追求聪明抽象。

在 spec 要求之前，避免大型 framework 决策。

## Runtime 与 Editor 代码

runtime 代码属于 `Assets/Scripts/Runtime/`。

editor-only 工具属于 `Assets/Scripts/Editor/`，且不能被 runtime assemblies 引用。

## 数据驱动设计

在可行时优先使用数据驱动 gameplay。

如果数值可能被平衡或反复迭代，不要把它硬编码到 gameplay logic 中。

第一种被接受的数据方案可以是 `ScriptableObject`、JSON 或其他有文档说明的格式，但在广泛使用前必须先明确。

