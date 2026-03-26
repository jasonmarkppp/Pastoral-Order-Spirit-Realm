@echo off
:: 设置编码为 UTF-8，防止中文变成乱码
chcp 65001 >nul
title 灵境小院启动中心

echo ==========================================
echo        🌾 正在唤醒灵境小院，请稍候... 🌾
echo ==========================================

:: 1. 最小化启动后端服务 (这样就不会有一个大黑框挡在前面)
start /MIN app.exe

:: 2. 倒数 3 秒，给 Flask 服务器一点时间启动
timeout /t 3 /nobreak >nul

:: 3. 以“独立软件模式”打开网页
echo 🚪 正在推开柴扉...
:: 这里优先尝试使用 Windows 自带的 Edge 浏览器以 App 模式打开
:: 如果客户用的是 Chrome，可以把 msedge.exe 改成 chrome.exe
start msedge.exe --app=http://127.0.0.1:5000

:: 退出这个临时的启动窗口
exit