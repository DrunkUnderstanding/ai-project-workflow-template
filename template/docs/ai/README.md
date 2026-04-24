# AI 文档地图

本目录是 AI 可读项目规则的唯一事实来源。

根目录的 `AI.md` 是所有 AI 助手的共享入口。本目录保存更深入的项目上下文，AI 只应在任务相关时读取。

## 分层

| 层级 | 路径 | 用途 |
|---|---|---|
| Context | `docs/ai/context/` | 项目是什么，以及当前处于什么阶段。 |
| Policies | `docs/ai/policies/` | 硬性规则、边界和项目宪法。 |
| Workflows | `docs/ai/workflows/` | 可重复执行的流程，例如 spec 和验证流程。 |
| Systems | `docs/ai/systems/` | Unity、Web、后端等项目系统的领域规则。 |
| Memory | `docs/ai/memory/` | 知识、坑点和决策记录。 |
| Capabilities | `docs/ai/capabilities/` | 项目本地 AI skills 和能力约定。 |

## 推荐读取顺序

始终从以下文档开始：

1. `AI.md`
2. `docs/ai/README.md`
3. `docs/ai/context/project-overview.md`
4. `docs/ai/policies/constitution.md`

然后只读取当前任务需要的文档：

- 代码、资源或文档变更：`docs/ai/policies/working-agreement.md`
- 代码风格：`docs/ai/policies/code-style.md`
- 自动化边界：`docs/ai/policies/automation-boundaries.md`
- specs：`docs/ai/workflows/spec-workflow.md`
- 验证：`docs/ai/workflows/validation-rules.md`
- 项目系统：`docs/ai/systems/` 中的相关文件
- skills：`docs/ai/capabilities/skills-and-knowledge.md`
- 既有经验：`docs/ai/memory/knowledge/index.md`
- 项目决策：`docs/ai/memory/decisions/README.md`

## 语言约定

项目长期规则文档建议使用团队主要工作语言，保留必要的英文技术术语、API 名称、路径和命令。

不要为同一规则维护多套独立版本，避免内容不同步。

## 单一维护规则

项目规则应维护在这里，不要复制到助手专用文件。

`AGENTS.md`、`CLAUDE.md` 和未来 IDE 专用入口文件只应指向 `AI.md`。