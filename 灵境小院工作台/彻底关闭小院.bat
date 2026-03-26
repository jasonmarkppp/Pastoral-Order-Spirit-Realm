@echo off
chcp 65001 >nul
title 灵境小院 - 关闭程序

echo ==========================================
echo        🌙 正在让小院的动物们休息... 🌙
echo ==========================================

:: 强制关闭名为 app.exe 的后台进程
taskkill /f /im app.exe >nul 2>nul

echo ✅ 小院已彻底关闭，晚安！
timeout /t 2 /nobreak >nul
exit