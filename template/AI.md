# AI 入口

所有 AI 助手都应从这里开始阅读。

本文件只负责路由，不是完整知识库。只读取与当前任务相关的额外文档。

## 必读文档

1. `AI.md`
2. `docs/ai/README.md`
3. `docs/ai/context/project-overview.md`
4. `docs/ai/policies/constitution.md`

## 按需读取

| 情况 | 读取 |
|---|---|
| 任何代码、资源或文档变更 | `docs/ai/policies/working-agreement.md` |
| 编写或评审代码 | `docs/ai/policies/code-style.md` |
| 需要判断任务规模或创建 spec | `docs/ai/workflows/spec-workflow.md` |
| 需要知道 AI 可以自动做什么 | `docs/ai/policies/automation-boundaries.md` |
| 触碰项目专属系统或框架区域 | `docs/ai/systems/` 中的相关文件 |
| 运行测试、编译检查或汇报验证结果 | `docs/ai/workflows/validation-rules.md` |
| 使用或创建项目 skills / knowledge | `docs/ai/capabilities/skills-and-knowledge.md` |
| 可能适用可复用经验、坑点或领域上下文 | `docs/ai/memory/knowledge/index.md` |

## 默认工作流

1. 判断任务规模：Tiny、Small、Medium 或 Large。
2. 只读取路由表中与当前任务相关的文档。
3. 检查 `docs/ai/memory/knowledge/index.md` 中的关键词和路径触发规则。
4. Tiny 任务可直接编辑，并总结验证结果。
5. Small 任务需要简短计划、实现、验证；如果行为变化则更新文档。
6. Medium 或 Large 任务需要使用 `specs/_template/` 创建或更新 `specs/NNN-feature-name/`，然后停止并等待用户明确批准。
7. 已批准的工作按阶段实现。
8. 如果实现暴露 spec 缺口，先更新 spec 再继续。
9. 验证变更并汇报证据。
10. 发现可复用经验或重要决策时，更新 `docs/ai/memory/knowledge/` 或 `docs/ai/memory/decisions/`。

## 硬性规则

- 不要在助手专用文件中重复长期项目规则。
- 不要把项目专用 skill 安装到全局目录。
- 没有明确计划时，不要移动、重命名或删除引用敏感资源。
- Medium 或 Large 实现必须等用户明确批准 spec package 后才能开始。
- 除非用户明确要求，不要运行 `git commit`、`git push`、`git reset` 或 `git rebase`。