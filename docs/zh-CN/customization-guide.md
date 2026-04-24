# 定制指南

安装模板后，优先定制这些文件：

```text
docs/ai/context/project-overview.md
docs/ai/policies/constitution.md
docs/ai/systems/
docs/ai/memory/knowledge/index.md
```

## 替换占位符

模板中可能存在：

```text
{{PROJECT_NAME}}
{{PROJECT_TYPE}}
{{TECH_STACK}}
{{VALIDATION_COMMANDS}}
```

安装脚本会自动替换部分占位符，但仍建议人工检查。

## 添加系统规则

例如 Unity 项目可以添加：

```text
docs/ai/systems/unity-rules.md
```

Web 项目可以添加：

```text
docs/ai/systems/web-rules.md
```

后端项目可以添加：

```text
docs/ai/systems/backend-rules.md
```

## 添加知识库

当项目出现可复用经验时，写入：

```text
docs/ai/memory/knowledge/
```

并在：

```text
docs/ai/memory/knowledge/index.md
```

加入关键词触发和路径触发。

