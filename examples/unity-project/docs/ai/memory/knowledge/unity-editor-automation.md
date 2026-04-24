# Unity Editor 自动化

> 创建 Unity editor tools、menu items 或 batch asset operations 前读取本文档。

## 当前决策

Editor tooling 必须与 runtime 代码隔离。

## 规则

- editor-only scripts 放在 `Assets/Scripts/Editor/` 或 Editor-only assembly 下。
- runtime assemblies 不得引用 editor-only classes。
- 优先创建小型、可回滚、输入输出清楚的工具。
- 对 batch asset operations，说明目标路径和 rollback strategy。

## 验证

- 确认 runtime code 没有引用 `UnityEditor`。
- 修改 editor script 后运行 Unity compile check。
- 对 batch operations，先用小样本测试，再扩大范围。

