@echo off
chcp 65001 >nul
echo.
echo  ╔══════════════════════════════════════╗
echo  ║     3D 山岭图生成器 v1.0            ║
echo  ╚══════════════════════════════════════╝
echo.
echo  拖一个 CSV 文件到这个窗口，按回车即可生成！
echo  或者输入以下命令：
echo.
echo  [1] 用示例数据生成 (mPAP)
echo  [2] 自定义参数生成
echo  [3] 查看所有配色方案
echo  [0] 退出
echo.
set /p choice="请选择 (0-3): "

if "%choice%"=="1" (
    python "%~dp0ridge3d.py" "%~dp0示例数据_mPAP.csv" -t "mPAP & Cardiac Function Meta-Analysis" --subtitle "Pre-op vs Post-op Comparison" -a "" -c forest -o "%~dp0mPAP_3D山岭图.html"
    start "" "%~dp0mPAP_3D山岭图.html"
)

if "%choice%"=="2" (
    echo.
    set /p csvfile="CSV文件路径: "
    set /p title="图表标题: "
    set /p author="署名: "
    set /p colorscheme="配色方案 (forest/ocean/sunset/glacier/lava/aurora) [forest]: "
    if "%colorscheme%"=="" set colorscheme=forest
    python "%~dp0ridge3d.py" "%csvfile%" -t "%title%" -a "%author%" -c "%colorscheme%"
    echo.
    pause
)

if "%choice%"=="3" (
    python "%~dp0ridge3d.py" --list-colors
    echo.
    pause
)

if "%choice%"=="0" exit
