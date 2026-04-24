# 代码规范

本文档只定义日常写代码时必须遵守的基础风格。架构、资源安全、spec 流程和验证规则分别由其他 `docs/ai/` 文档管理。

## 基本原则

- 代码优先追求清晰、直接、容易修改。
- 每次变更保持小范围，不顺手重构无关代码。
- 不为了“看起来高级”提前抽象。
- 命名要表达意图，不用含糊的缩写。
- 新代码应贴近周围代码风格。

## 通用写法

- 优先使用 early return，避免过深嵌套。
- 不要静默吞掉 exception 或错误结果。
- 不要让 getter / computed property 产生复杂副作用。
- 不要在没有明确原因时使用 reflection 或 string-based dynamic call。
- 可调业务数值优先放在配置或数据中，不要散落 magic number。

## 命名

| 对象 | 规则 | 示例 |
|---|---|---|
| 类型、方法、属性、事件 | `PascalCase` | `ItemDefinition`, `LoadItems` |
| 接口 | 项目语言约定优先 | `IItemRepository` |
| private field | 项目语言约定优先 | `_currentHealth` |
| 参数、局部变量 | `camelCase` 或语言惯例 | `itemId`, `targetPosition` |
| 常量 | 项目语言约定优先 | `MaxInventorySlots` |

## 避免

- 避免大型 `Manager`、`Helper`、`Utils` class。
- 避免 magic number 和 magic string 到处散落。
- 避免把 UI、存档、业务规则、网络、场景跳转等不同职责塞进同一个 class。
- 避免为了一次性需求创建复杂继承、泛型或框架。