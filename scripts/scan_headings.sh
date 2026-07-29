#!/usr/bin/env bash
# scan_headings.sh — 扫描论文 MD 的所有标题行
# 用法: bash scan_headings.sh <paper.md>
grep -n '^#' "$1"
