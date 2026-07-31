@echo off
chcp 65001 >nul
:: 减肥学习综合工作台 —— Windows 一键启动器
:: 双击即用 Chrome 以独立应用窗口打开（无地址栏，可离线）
setlocal
set "P=%~dp0index.html"
set "P=%P:\=/%"
set "URL=file:///%P%"

:: 查找 Chrome
set "CHROME=%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%LOCALAPPDATA%\Chromium\Application\chromium.exe"

if exist "%CHROME%" (
  start "" "%CHROME%" --app="%URL%" --disable-features=Translate
) else (
  echo 未找到 Chrome，改用默认浏览器打开。
  start "" "%~dp0index.html"
)
endlocal
