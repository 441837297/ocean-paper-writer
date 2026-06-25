#!/usr/bin/env bash
# extract_section.sh — 从 MinerU 转换的论文 MD 中提取指定 section
#
# 用法:
#   ./extract_section.sh <paper.md> <section_name> [output_dir]
#
# 支持两种标题格式:
#   - 编号格式: "# 2. Data and Methods" / "# 2.1 Data"
#   - 无编号格式: "# Methods" / "# Introduction"
#
# 层级判定: 编号格式按数字深度 (2 > 2.1 > 2.1.1)；无编号格式按 # 计数

set -euo pipefail

PAPER="$1"
SECTION="${2:-Methods}"
OUTDIR="${3:-}"

if [ ! -f "$PAPER" ]; then
    echo "ERROR: file not found: $PAPER" >&2
    exit 1
fi

# ---- helper: 从标题行提取层级 ----
# 编号格式: "2.1" → level 2; "2" → level 1
# 无编号格式: "###" → level 3
heading_level() {
    local line="$1"
    # 先尝试提取编号深度
    local numbered=$(echo "$line" | sed 's/^#\+\s*\([0-9][0-9.]*\)\b.*/\1/')
    if [ "$numbered" != "$line" ] && [ -n "$numbered" ]; then
        # 数点数+1
        local dots=$(echo "$numbered" | tr -cd '.' | wc -c | tr -d ' ')
        echo $((dots + 1))
    else
        # 无编号，数 # 个数
        local marker=$(echo "$line" | sed 's/^\(#*\).*/\1/')
        echo ${#marker}
    fi
}

# ---- 1. 定位起始行 ----
START_LINE=$(awk -v sec="$SECTION" '
    /^#/ {
        title = $0
        gsub(/^#+[[:space:]]*/, "", title)
        gsub(/^[0-9]+\.?[[:space:]]*/, "", title)
        if (tolower(title) ~ tolower(sec)) {
            print NR
            exit
        }
    }
' "$PAPER")

if [ -z "$START_LINE" ]; then
    echo "ERROR: section '${SECTION}' not found in $PAPER" >&2
    echo "Available headings:" >&2
    grep -in '^#' "$PAPER" | head -20 >&2
    exit 1
fi

START_HEADING=$(sed -n "${START_LINE}p" "$PAPER")
START_LEVEL=$(heading_level "$START_HEADING")

echo "Found section at line $START_LINE (level $START_LEVEL): $START_HEADING" >&2

# ---- 2. 定位终止行 ----
END_LINE=$(awk -v sl="$START_LINE" -v slevel="$START_LEVEL" '
    function get_level(line) {
        # 匹配编号: "2" "2.1" "2.1.1", 尾部允许有 "." (如 "3. Results")
        # 编号必须以数字结尾，不允许 "3." 中的 "." 算作层级
        if (match(line, /^#+[[:space:]]+([0-9]+(\.[0-9]+)*)\.?[[:space:]]/, arr)) {
            num = arr[1]
            dots = 0
            for (i = 1; i <= length(num); i++)
                if (substr(num, i, 1) == ".") dots++
            return dots + 1
        }
        # 无编号，数 # 个数
        level = 0
        for (i = 1; i <= length(line); i++) {
            if (substr(line, i, 1) == "#") level++
            else break
        }
        return level
    }

    BEGIN { found = 0 }
    NR > sl && /^#/ {
        if (get_level($0) <= slevel) {
            print NR - 1
            found = 1
            exit
        }
    }
    END { if (!found) print NR }
' "$PAPER")

echo "Section ends at line $END_LINE ($((END_LINE - START_LINE + 1)) lines)" >&2

# ---- 3. 提取并输出 ----
if [ -n "$OUTDIR" ]; then
    mkdir -p "$OUTDIR"
    BASENAME=$(basename "$PAPER" .md)
    SLUG=$(echo "$SECTION" | tr '[:upper:] ' '[:lower:]_' | sed 's/[^a-z0-9_]//g')
    OUTFILE="${OUTDIR}/${BASENAME}_${SLUG}.md"
    sed -n "${START_LINE},${END_LINE}p" "$PAPER" > "$OUTFILE"
    echo "Written to $OUTFILE" >&2
else
    sed -n "${START_LINE},${END_LINE}p" "$PAPER"
fi
