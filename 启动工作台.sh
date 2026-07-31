#!/bin/bash
# 减肥学习综合工作台 —— Linux 一键启动器
# 双击/运行即用 Chrome/Chromium 以独立应用窗口打开（无地址栏，可离线）
DIR="$(cd "$(dirname "$0")" && pwd)"
URL="file://$DIR/index.html"

if command -v google-chrome >/dev/null 2>&1; then
  google-chrome --app="$URL" >/dev/null 2>&1 &
elif command -v chromium >/dev/null 2>&1; then
  chromium --app="$URL" >/dev/null 2>&1 &
elif command -v chromium-browser >/dev/null 2>&1; then
  chromium-browser --app="$URL" >/dev/null 2>&1 &
else
  xdg-open "$DIR/index.html" >/dev/null 2>&1 &
fi
