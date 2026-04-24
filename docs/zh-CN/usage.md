# 使用指南

## Tiny 任务

适合拼写修复、明显的小 bug、单文件小改动。

AI 可以直接实现，但需要说明做了什么和如何验证。

## Small 任务

适合局部行为变化或少量文件修改。

AI 应该先给简短计划，再执行、验证，并在行为变化时同步文档。

## Medium 任务

适合新功能、多文件修改、数据结构变化或工作流变化。

AI 必须先创建或更新：

```text
specs/NNN-feature-name/spec.md
specs/NNN-feature-name/plan.md
specs/NNN-feature-name/tasks.md
```

然后停止，等待人类明确确认后再实现。

## Large 任务

适合架构、广泛重构、框架引入、平台、构建、存档、资源管线等变化。

AI 必须按阶段推进：

```text
设计 → 人类确认 → Phase 1 → 验证 → 人类确认 → Phase 2 → 验证
```

不要一次确认后让 AI 全部做完。

