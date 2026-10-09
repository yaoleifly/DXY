#!/usr/bin/env bash
# 本地预览 Axure 原型。
# 用法: ./serve.sh [端口]   (默认 8000)
set -euo pipefail

PORT="${1:-8000}"
cd "$(dirname "$0")"

echo "预览地址: http://localhost:${PORT}/"
echo "按 Ctrl+C 停止。"
echo

if command -v python3 >/dev/null 2>&1; then
  exec python3 -m http.server "$PORT"
elif command -v npx >/dev/null 2>&1; then
  exec npx --yes http-server . -p "$PORT" -c-1
else
  echo "未找到 python3 或 npx，请任选其一安装后再运行。" >&2
  exit 1
fi
