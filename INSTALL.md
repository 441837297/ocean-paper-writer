# 安装 Ocean Paper Writer

## 一行安装

```bash
git clone https://github.com/441837297/ocean-paper-writer.git ~/.claude/skills/ocean-paper-writer/
```

重启 Claude Code 即可。之后输入 **"start ocean paper writer"** 或直接描述你的研究材料，skill 会自动激活。

## ChatGPT Web

在支持 Skills 上传的 ChatGPT 工作空间中，进入 Skills 后选择创建并从电脑上传本 skill 的 ZIP 包。上传后等待平台扫描完成即可使用；没有本地项目目录、脚本或 Zotero connector 时，直接上传当前任务所需的手稿、证据和参考材料。

## 验证

启动 Claude Code 后输入：

```
I want to write a paper. I have figures, code, and a target journal in mind.
```

如果你提供新研究材料，助手应将你路由到 **prepare**。如果你提供已有手稿及明确修改目标，助手应先进入 **Strategy** 并形成 Revision Brief，而不是直接重写整篇论文。

## 可选：Zotero 文献支持

如需从你的 Zotero 文献库检索引用：

1. 按上游文档安装 [cookjohn/zotero-mcp](https://github.com/cookjohn/zotero-mcp)。
2. 将项目相关论文导入一个 Zotero 集合。

Skill 完全可以在没有 Zotero 的情况下工作。缺失引用标记为 `[CITATION NEEDED]`，你可稍后手动补上。

## 升级

```bash
cd ~/.claude/skills/ocean-paper-writer && git pull
```
