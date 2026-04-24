# Unity 资源安全

> 修改 prefab、scene、`.meta` 文件或 asset references 前读取本文档。

## 当前决策

Unity 生产资源位于 `Assets/`，必须视为引用敏感数据。

## 规则

- 没有 spec 或 plan 时，不要移动、重命名或删除生产资源。
- `.meta` 文件必须与对应资源保持在一起。
- 除非当前 plan 明确解释原因，不要手写 GUID。
- 对引用敏感变更，优先使用 Unity Editor 操作。
- 在 plan 中记录受影响的 prefab、scene 和 ScriptableObject。

## 验证

- 确认 Unity 能导入变更后的资源。
- 确认受影响 prefab 或 scene 上的引用仍然有效。
- 当 scripts 或 serialized fields 变化时，运行 compile check。

