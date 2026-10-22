# 安装与更新

将仓库根目录放入客户端技能目录，文件夹名为 `ocean-paper-writer`，保留相对路径。Codex 通常使用 `$CODEX_HOME/skills/`，未设置时为 `~/.codex/skills/`；Claude Code 通常使用 `~/.claude/skills/`。按客户端要求刷新或重启后，选择技能或调用 `$ocean-paper-writer`，直接提供任务和材料。

若技能由 Magpie 管理，应在管理主库修改后同步到客户端；否则更新前保留本地改动。普通写作不依赖附带脚本、Word 或其他技能。

写作与局部、全文对照审查已统一在 `ocean-paper-writer`，无需另装 Ocean Paper Reviewer。

Kimi 使用其实际加载的技能目录；本机由 Magpie 同步到共享目录 `~/.agents/skills/ocean-paper-writer/`。更新后在新会话调用，避免沿用旧上下文。Web 提供 `SKILL.md`、按任务使用的专项资源及可访问的项目材料，保留包内相对路径；不能读取压缩包时解压后提供所需文件。是否支持原生安装以平台能力为准，不承诺上传 ZIP 即可安装。用途见 [README](README.md)，修改后的行为需在各自客户端测试。
