#!/bin/bash
# 减肥学习综合工作台 —— macOS 一键启动器
# 双击即用 Chrome 以独立应用窗口打开（无地址栏，可离线）
DIR="$(cd "$(dirname "$0")" && pwd)"
URL="file://$DIR/index.html"

if [ -d "/Applications/Google Chrome.app" ]; then
  open -a "Google Chrome" --args --app="$URL"
elif [ -d "/Applications/Chromium.app" ]; then
  open -a "Chromium" --args --app="$URL"
elif command -v google-chrome >/dev/null 2>&1; then
  google-chrome --app="$URL" >/dev/null 2>&1 &
else
  open "$DIR/index.html"
fi
