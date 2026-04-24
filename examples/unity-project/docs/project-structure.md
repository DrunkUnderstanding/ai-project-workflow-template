# Unity Project Structure

本文件说明 Unity 项目的生产资源摆放约定。

## 原则

- `Assets/` 只放已经接受、准备进入项目的生产资源和代码。
- AI 生成草稿、外部素材暂存、未确认资源先放在 `AI_Assets/` 或团队指定暂存区。
- 废弃试验文件和临时输出放在 `trash/` 或团队指定临时目录。
- 不要随意移动、重命名或删除 Unity 资源；需要调整时同时保留对应 `.meta` 文件并检查引用。

## Assets 目录

| 路径 | 用途 |
|---|---|
| `Assets/Art/Characters/` | 角色立绘、模型、贴图、角色相关美术。 |
| `Assets/Art/Environments/` | 场景、建筑、背景、环境物件美术。 |
| `Assets/Art/Items/` | 商品、道具、货币、收藏品等美术资源。 |
| `Assets/Art/UI/` | UI 图标、按钮、面板切图、字体相关美术。 |
| `Assets/Art/VFX/` | 粒子、特效贴图、Shader、视觉效果资源。 |
| `Assets/Audio/` | 音乐、音效、环境声、角色语音。 |
| `Assets/Prefabs/` | 可复用 prefab，按角色、环境、物品、UI、系统分类。 |
| `Assets/Scenes/` | 启动、玩法、UI、测试场景。 |
| `Assets/ScriptableObjects/` | 角色、物品、经济、任务、本地化等数据资产。 |
| `Assets/Scripts/Runtime/` | 游戏运行时代码。 |
| `Assets/Scripts/Editor/` | Unity Editor 专用工具代码。 |
| `Assets/Scripts/Tests/` | EditMode 和 PlayMode 测试代码。 |
| `Assets/Localization/` | 本地化表、字体和语言相关资源。 |
| `Assets/Addressables/` | Addressables 分组、标签和加载配置相关资产。 |
| `Assets/ThirdParty/` | 第三方插件、SDK 和外部 Unity package 导入内容。 |
| `Assets/StreamingAssets/` | 需要原样打包并通过文件路径读取的资源。 |
| `Assets/Resources/` | 仅在确实需要 `Resources.Load` 时使用。 |

## 建议摆放

- 角色资源：先放 `Assets/Art/Characters/<角色类型>/`，角色 prefab 放 `Assets/Prefabs/Characters/`。
- 物品资源：图标放 `Assets/Art/Items/Icons/`，模型放 `Assets/Art/Items/Models/`，数据放 `Assets/ScriptableObjects/Items/`。
- 场景资源：环境美术放 `Assets/Art/Environments/`，可复用建筑或道具 prefab 放 `Assets/Prefabs/Environments/`。
- UI 资源：切图和图标放 `Assets/Art/UI/`，UI prefab 放 `Assets/Prefabs/UI/`。
- 音频资源：背景音乐放 `Assets/Audio/Music/`，UI 音效放 `Assets/Audio/SFX/UI/`，玩法音效放 `Assets/Audio/SFX/Gameplay/`。

## 暂存到生产流程

1. 新资源先进入 `AI_Assets/` 或外部暂存目录。
2. 确认命名、版权、用途、格式和导入设置。
3. 移入对应 `Assets/` 生产目录。
4. 打开 Unity，让 Unity 生成或刷新 `.meta` 文件。
5. 检查 prefab、scene、ScriptableObject 和 Addressables 引用是否正常。