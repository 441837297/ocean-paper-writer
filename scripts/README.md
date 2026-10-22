# 附带操作资源

仅在任务需要对应操作时使用，不是论文写作步骤，也不是项目 `reference` 素材库。

文件修订与验收的边界见 [文档交付](../operations/document-delivery.md)，已有专业文档工具或技能可用时优先沿用，勿重复搭建操作流程。

- [scan_headings.sh](scan_headings.sh)：`bash scan_headings.sh <paper.md>`，列出 Markdown 标题及行号；需要 Bash。
- [export_word_pdf_pages.ps1](export_word_pdf_pages.ps1)：用本地 Word 导出 PDF，再由 Python/PyMuPDF 渲染页面图。参数为 `-InputDocx`、`-OutputDir`、可选 `-View Final|Markup` 和 `-Dpi`；输出目录应为新目录或空目录，默认 600 DPI。
- [response_template.docx](../assets/response_template.docx) 与 [response_letter_template.docx](../assets/response_letter_template.docx)：可选的回复信 Word 模板；用户已有格式优先。
- [build_response_docx_template.py](build_response_docx_template.py)：重建 `assets/response_template.docx`，需要 Python、python-docx 和 lxml。直接运行会覆盖该附带模板，普通写作不需运行。

Word 操作保留现有引用域、公式对象与修订，只处理授权内容。页面导出成功不代表内容已核对，交付时区分实际查看过的内容与未核验范围。
