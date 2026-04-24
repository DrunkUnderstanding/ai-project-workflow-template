# AI 项目工作流模板

这是一套可复用的 AI 辅助开发项目模板，用来把 AI 工作规则、功能规格、经验教训和关键决策沉淀到 Git 仓库里。

它适合以下场景：

- 希望多个 AI 工具遵守同一套项目规则。
- 希望新项目可以快速套用成熟工作流。
- 希望功能开发先有规格、计划和任务，再进入实现。
- 希望把踩坑经验和架构决策长期保存，而不是丢在聊天记录里。

## 核心结构

```text
AI.md                 # 所有 AI 的统一入口和路由
AGENTS.md             # Codex 入口，只指向 AI.md
CLAUDE.md             # Claude 入口，只指向 AI.md

docs/
  README.md           # 项目文档说明
  ai/                 # AI 工作规则、知识库、决策和能力扩展

specs/
  README.md           # 功能规格说明
  _template/          # spec / plan / tasks 模板
```

## 核心理念

```text
docs/ai/ = AI 应该怎么工作
specs/   = 具体功能要做成什么样
```

AI 不应该直接凭感觉改中大型功能，而应该先产出：

```text
spec.md   # 需求和验收标准
plan.md   # 实现方案和风险
tasks.md  # 分阶段任务清单
```

然后等待人类确认，再开始实现。

## 安装到项目

在本仓库目录执行：

```powershell
powershell -ExecutionPolicy Bypass -File scripts/install.ps1 -TargetPath D:\path\to\project -ProjectName MyProject -ProjectType "Unity client project"
```

默认情况下，安装脚本不会覆盖目标项目中已经存在的文件。

如果你确认要覆盖，可以加：

```powershell
-Force
```

## 新项目接入后先改什么

安装后优先修改：

```text
docs/ai/context/project-overview.md
docs/ai/policies/constitution.md
docs/ai/systems/
docs/ai/memory/knowledge/index.md
```

这些文件决定 AI 如何理解你的项目。

## 工作流分级

| 类型 | 适用场景 | AI 行为 |
|---|---|---|
| Tiny | 拼写、小 bug、1-2 个文件 | 可直接修改并汇报验证 |
| Small | 局部行为变化、少量文件 | 先简短计划，再实现 |
| Medium | 新功能、多文件、数据结构变化 | 先写 spec/plan/tasks，等人确认 |
| Large | 架构、框架、资源组织、平台或构建变化 | 分阶段设计、确认、实现、验证 |

## Unity 示例

Unity 相关规则放在：

```text
examples/unity-project/
```

如果你的项目是 Unity 项目，可以把里面的文件复制到目标项目对应位置。

## 如何把项目经验回流到模板

如果某个项目中出现了可复用经验，可以迁回本模板：

- 通用 AI 工作规则 → `template/docs/ai/policies/`
- 通用流程 → `template/docs/ai/workflows/`
- 通用经验教训 → `template/docs/ai/memory/knowledge/`
- 行业/引擎专用规则 → `examples/`
- spec 模板改进 → `template/specs/_template/`

不要迁移：

- 私有业务规则
- 项目专用玩法
- 内部接口和密钥
- 特定项目路径
- 临时生成文件

## 推荐使用方式

1. 用安装脚本复制模板。
2. 改项目概览和宪法。
3. 补充当前项目的系统规则。
4. 新功能从 `specs/_template/` 开始。
5. 重要经验写入 `docs/ai/memory/knowledge/`。
6. 关键决策写入 `docs/ai/memory/decisions/`。

