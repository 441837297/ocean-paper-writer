# Fragment Extraction

## Purpose

从 MinerU 转换的论文 MD 文件中提取指定 section 的完整 verbatim 正文，作为写作参考片段存入 `reference_papers/key_{section}/`。

## When to Use

触发于 writing pre-draft contract 阶段，以下四种情况：

| 状态 | 行为 |
|------|------|
| 无片段，有论文 MD | 列出可用论文，询问用户要从哪些提取 |
| 无片段，无论文 MD | 提醒用户放入参考论文（MD 格式），再回来提取 |
| 有片段 | 直接加载，进入起草 |
| 用户随时补充论文 | 将新论文 MD 放入 `reference_papers/`，然后按第一条处理 |

## Workflow

### Step 0: 判断现状并询问

扫描 `reference_papers/*.md` 和 `key_{section}/`，报告：

- **有论文 MD，缺片段** → 列出论文清单："以下论文缺少 [section] 片段，要从哪些提取？"
- **无论文 MD** → "目前 reference_papers/ 下没有论文 MD。请把参考论文的 Markdown 文件放进来，我再提取。"
- **有片段** → 跳过提取，直接加载。

用户选择后进入 Step 1。写作中途用户补充论文时，将新 MD 放入 `reference_papers/`，再走此步骤。

### Step 1: 调用 subagent 提取

使用 haiku subagent，prompt 模板如下：

```
你的任务：从论文 MD 文件中提取指定 section 的完整 verbatim 正文。

步骤：
1. 用 Bash 运行 scan_headings.sh <paper.md> 获取所有标题行号
2. 理解标题层级关系，确定目标 section 的起止行号
   - 编号格式（如 "2. Data" / "2.1 Data"）：按编号深度判断层级
   - 无编号格式（如 "Methods"）：按 # 数量判断层级
   - 提取到下一个同级或更高级标题之前
3. 用 sed -n 'START,ENDp' 精确截取
4. 写入目标文件

格式要求：
  # <论文标题>
  （空行）
  <verbatim 正文>

仅此而已。不需要 YAML frontmatter、structural notes、blockquote 标记。

源文件: <paper.md 的完整路径>
目标 section: <section 名称，如 "Methods" / "Data and Methods" / "Introduction">
输出: <key_{section}/XX_methods.md 的完整路径>

scan_headings.sh 位置: .claude/skills/ocean-paper-writer/scripts/scan_headings.sh
```

### Step 3: 验证

检查输出文件的起止行是否正确——结尾应是目标 section 的最后一个自然段，下一个同级标题不应被包含。

## Output Format

```
# Paper Title

verbatim text verbatim text verbatim text
...
```

极简格式。不添加 YAML、blockquote、structural notes、或任何元数据。CC 写作时直接读取这些文件作为上下文。

## Helper Script

`scripts/scan_headings.sh` — 列出论文所有 `#` 标题行号。用法：

```bash
bash .claude/skills/ocean-paper-writer/scripts/scan_headings.sh <paper.md>
```
