# 安装 Ocean Paper Writer

## 一行安装

```bash
git clone https://github.com/441837297/ocean-paper-writer.git ~/.claude/skills/ocean-paper-writer/
```

重启 Claude Code 即可。之后输入 **"start ocean paper writer"** 或直接描述你的研究材料，skill 会自动激活。

## 验证

启动 Claude Code 后输入：

```
I want to write a paper. I have figures, code, and a target journal in mind.
```

如果助手将你路由到 **prepare** 阶段并询问 3-5 个关于材料的澄清问题，说明 skill 正常工作。

## 可选：Zotero 文献支持

如需从你的 Zotero 文献库检索引用：

1. 按上游文档安装 [cookjohn/zotero-mcp](https://github.com/cookjohn/zotero-mcp)。
2. 将项目相关论文导入一个 Zotero 集合。

Skill 完全可以在没有 Zotero 的情况下工作。缺失引用标记为 `[CITATION NEEDED]`，你可稍后手动补上。

## 升级

```bash
cd ~/.claude/skills/ocean-paper-writer && git pull
```
