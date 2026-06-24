@echo off
chcp 65001 >nul
echo.
echo  ╔══════════════════════════════════════╗
echo  ║     波浪图编辑器 v1.0                ║
echo  ║     自由拖拽 · 平滑曲线 · 多列编辑   ║
echo  ╚══════════════════════════════════════╝
echo.
echo  正在打开波浪图编辑器...
start "" "%~dp0index.html"
echo.
echo  已在浏览器中打开！
echo  如果没有自动打开，请手动双击 index.html
echo.
pause
