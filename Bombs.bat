@echo off
title BOMB SELECTOR
color 0C
mode con cols=80 lines=25

:bombmenu
cls
echo.
echo    ╔════════════════════════════════════════════════════╗
echo    ║               💣 BOMB SELECTOR MENU 💣             ║
echo    ║         (For VM Use Only - Harmless Effects)       ║
echo    ╚════════════════════════════════════════════════════╝
echo.
echo    [1] CALCULATOR BOMB     - Opens infinite calculators
echo    [2] TASK MANAGER BOMB   - Opens multiple task managers
echo    [3] EXPLODER BOMB       - Opens multiple explorer windows
echo    [4] NOTEPAD BOMB        - Opens multiple notepad windows
echo    [5] COLOR BOMB          - Flashing colors and text
echo    [6] EXIT
echo.
set /p choice="    Select bomb (1-6): "

if "%choice%"=="1" goto calcbomb
if "%choice%"=="2" goto taskbomb
if "%choice%"=="3" goto exploderbomb
if "%choice%"=="4" goto notepadbomb
if "%choice%"=="5" goto colorbomb
if "%choice%"=="6" exit
goto bombmenu

:calcbomb
cls
echo.
echo 💣 CALCULATOR BOMB ACTIVATED 💣
echo Opening multiple calculators...
echo Press Ctrl+C to stop
timeout /t 3 /nobreak >nul
:calcloop
start calc.exe
timeout /t 1 /nobreak >nul
goto calcloop

:taskbomb
cls
echo.
echo 💣 TASK MANAGER BOMB ACTIVATED 💣
echo Opening multiple task managers...
echo Press Ctrl+C to stop
timeout /t 3 /nobreak >nul
:taskloop
start taskmgr.exe
timeout /t 1 /nobreak >nul
goto taskloop

:exploderbomb
cls
echo.
echo 💣 EXPLODER BOMB ACTIVATED 💣
echo Opening multiple explorer windows...
echo Press Ctrl+C to stop
timeout /t 3 /nobreak >nul
:exploderloop
start explorer.exe
timeout /t 1 /nobreak >nul
goto exploderloop

:notepadbomb
cls
echo.
echo 💣 NOTEPAD BOMB ACTIVATED 💣
echo Opening multiple notepad windows...
echo Press Ctrl+C to stop
timeout /t 3 /nobreak >nul
:notepadloop
start notepad.exe
timeout /t 1 /nobreak >nul
goto notepadloop

:colorbomb
cls
echo.
echo 💣 COLOR BOMB ACTIVATED 💣
echo Flashing colors and text...
echo Press Ctrl+C to stop
timeout /t 3 /nobreak >nul
:colorloop
for %%a in (0 1 2 3 4 5 6 7 8 9 A B C D E F) do (
    color %%a0
    echo B O O M ! ! ! - PRESS CTRL+C TO STOP
    ping -n 1 127.0.0.1 >nul
)
goto colorloop
