@echo off
title BOMB SELECTOR v3.0 - ULTIMATE EDITION
color 0A
mode con cols=100 lines=35

:main
cls
echo.
echo                         ===================================================
echo                            💣  ULTIMATE BOMB SELECTOR v3.0  💣
echo                         ===================================================
echo.
echo                         [1] CALCULATOR NUKE
echo                              - Spawns calculators at maximum speed
echo.
echo                         [2] TASK MANAGER ARMY  
echo                              - Spawns task managers + forces CPU usage
echo.
echo                         [3] EXPLODER CHAIN REACTION
echo                              - Spawns explorer + folder windows rapidly
echo.
echo                         [4] NOTEPAD STORM
echo                              - Spawns notepads with random text files
echo.
echo                         [5] COLOR BOMB [GDI SIMULATION]
echo                              - Trippy effects + GDI-style visuals
echo.
echo                         [6] MEGA CHAOS BOMB
echo                              - Launches ALL bombs at full power
echo.
echo                         [7] SYSTEM STRESS BOMB
echo                              - CPU + Memory + Disk simulation
echo.
echo                         [8] EXIT
echo.
echo                         ===================================================
echo.
set /p choice="                         Select bomb (1-8): "

if "%choice%"=="1" goto calcnuke
if "%choice%"=="2" goto taskarmy
if "%choice%"=="3" goto exploderchain
if "%choice%"=="4" goto notepadstorm
if "%choice%"=="5" goto gdi_colorbomb
if "%choice%"=="6" goto megachaos
if "%choice%"=="7" goto systemstress
if "%choice%"=="8" exit
goto main

:calcnuke
cls
echo.
echo                         ===================================================
echo                            💣 CALCULATOR NUKE ACTIVATED 💣
echo                         ===================================================
echo.
echo                         Maximum calculator spawn rate engaged!
echo                         Press CTRL+C to stop the apocalypse!
echo.
timeout /t 3 /nobreak >nul
:calcnukeloop
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
timeout /t 0.1 >nul
goto calcnukeloop

:taskarmy
cls
echo.
echo                         ===================================================
echo                            💣 TASK MANAGER ARMY ACTIVATED 💣
echo                         ===================================================
echo.
echo                         Spawning task managers and CPU load...
echo                         Press CTRL+C to stop!
echo.
timeout /t 3 /nobreak >nul
:taskarmyloop
start taskmgr.exe
start taskmgr.exe
start taskmgr.exe
start cmd /c "color 02 & title CPU Loader & for /l %%i in (1,0,2) do echo %%i >nul"
timeout /t 0.1 >nul
goto taskarmyloop

:exploderchain
cls
echo.
echo                         ===================================================
echo                            💣 EXPLODER CHAIN REACTION 💣
echo                         ===================================================
echo.
echo                         Opening multiple explorers and folders...
echo                         Press CTRL+C to stop!
echo.
timeout /t 3 /nobreak >nul
:exploderchainloop
start explorer.exe
start explorer.exe
start %SystemRoot%
start %SystemRoot%\System32
start %TEMP%
timeout /t 0.2 >nul
goto exploderchainloop

:notepadstorm
cls
echo.
echo                         ===================================================
echo                            💣 NOTEPAD STORM ACTIVATED 💣
echo                         ===================================================
echo.
echo                         Creating random text files and opening them...
echo                         Press CTRL+C to stop!
echo.
timeout /t 3 /nobreak >nul
:notepadstormloop
set /a "rand=%random% %% 1000"
echo BOOM! Random text %random% > "%TEMP%\bomb%rand%.txt"
start notepad.exe "%TEMP%\bomb%rand%.txt"
start notepad.exe
start notepad.exe
timeout /t 0.1 >nul
goto notepadstormloop

:gdi_colorbomb
cls
echo.
echo                         ===================================================
echo                            💣 GDI SIMULATION COLOR BOMB 💣
echo                         ===================================================
echo.
echo                         Creating GDI-style visual effects...
echo                         Press CTRL+C to return to reality!
echo.
timeout /t 3 /nobreak >nul

set "colors=0 1 2 3 4 5 6 7 8 9 A B C D E"
set "effects=▄ ▀ ■ ░ ▒ ▓ █ ▄ ▀ ▌ ▐ ▀ ▄ █"

:gdi_main
for %%c in (%colors%) do (
    color %%c0
    cls
    
    rem GDI-style window resizing effect
    for /L %%s in (1,1,5) do (
        set /a "width=70 + %%s * 5"
        set /a "height=25 + %%s * 2"
        mode con cols=!width! lines=!height! >nul 2>&1
    )
    
    for /L %%s in (5,-1,1) do (
        set /a "width=70 + %%s * 5"
        set /a "height=25 + %%s * 2"
        mode con cols=!width! lines=!height! >nul 2>&1
    )
    
    cls
    
    rem Draw GDI-style patterns
    for /L %%i in (1,1,25) do (
        set "line="
        for /L %%j in (1,1,80) do (
            set /a "rand=!random! %% 10"
            if !rand! == 0 set "line=!line!█"
            if !rand! == 1 set "line=!line!▓"
            if !rand! == 2 set "line=!line!▒"
            if !rand! == 3 set "line=!line!░"
            if !rand! == 4 set "line=!line!■"
            if !rand! == 5 set "line=!line!▄"
            if !rand! == 6 set "line=!line!▀"
            if !rand! == 7 set "line=!line! "
            if !rand! == 8 set "line=!line!0"
            if !rand! == 9 set "line=!line!1"
        )
        echo !line!
        
        rem Add some visual "glitches"
        if !random! lss 5000 (
            echo ████████████████████████████████████████████████████████████████████████████████
        )
    )
    
    echo.
    echo                         ╔════════════════════════════════════════╗
    echo                         ║  GDI EFFECTS ACTIVE - COLOR: %%c0  ║
    echo                         ║  PRESS CTRL+C TO STOP                 ║
    echo                         ╚════════════════════════════════════════╝
    echo.
    
    rem Rapid color changes for GDI effect
    for /L %%s in (1,1,3) do (
        color 0!random:~-1!
        ping -n 1 127.0.0.1 >nul
    )
)
goto gdi_main

:megachaos
cls
echo.
echo                         ===================================================
echo                            💣 MEGA CHAOS BOMB ACTIVATED 💣
echo                         ===================================================
echo.
echo                         ALL BOMBS AT MAXIMUM POWER!
echo                         This will create serious system load!
echo                         Close VM to stop if needed!
echo.
timeout /t 5 /nobreak >nul

start cmd /c call %0 calcnuke
start cmd /c call %0 taskarmy
start cmd /c call %0 exploderchain
start cmd /c call %0 notepadstorm
start cmd /c call %0 gdi_colorbomb
start cmd /c call %0 systemstress
exit

:systemstress
cls
echo.
echo                         ===================================================
echo                            💣 SYSTEM STRESS BOMB 💣
echo                         ===================================================
echo.
echo                         Simulating heavy system load...
echo                         CPU + Memory + Disk stress test
echo                         Press CTRL+C to stop!
echo.
timeout /t 3 /nobreak >nul

rem Start multiple stress processes
start cmd /c "color 04 & title CPU STRESSOR & for /l %%i in (1,0,2) do set /a result=%%i*%%i >nul"
start cmd /c "color 05 & title CPU STRESSOR 2 & for /l %%i in (1,0,2) do set /a result=%%i*%%i*%%i >nul"
start cmd /c "color 06 & title CPU STRESSOR 3 & for /l %%i in (1,0,2) do set /a result=%%i^%%i >nul"

rem Disk stress
:stressloop
copy nul "%TEMP%\stress%random%.tmp" >nul 2>&1
for /L %%i in (1,1,100) do (
    echo Stress test line %%i - Random data: %random% >> "%TEMP%\stress.txt"
)

rem Memory stress (creates environment variables)
set "var1=aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
set "var2=%var1%%var1%%var1%"
set "var3=%var2%%var2%%var2%"

rem Open system tools
start perfmon.exe
start resmon.exe
start taskmgr.exe

goto stressloop

:gdi_intensive
cls
echo.
echo                         ===================================================
echo                            💣 INTENSIVE GDI BOMB 💣
echo                         ===================================================
echo.
echo                         Creating heavy GDI simulation...
echo                         This will push the system harder!
echo                         Press CTRL+C to stop!
echo.
timeout /t 3 /nobreak >nul

:gdi_intensive_loop
rem Rapid window creation simulation
for /L %%i in (1,1,20) do (
    start /b cmd /c "color 0%%i & title GDI%%i & for /l %%j in (1,0,2) do echo %%j >nul"
)

rem Screen flicker effect
for /L %%c in (0,1,9) do (
    color 0%%c
    cls
    echo ████████████████████████████████████████████████████████████████████████████████
    echo █                          INTENSIVE GDI MODE ACTIVE                          █
    echo ████████████████████████████████████████████████████████████████████████████████
    
    for /L %%i in (1,1,30) do (
        set /a "r1=!random! %% 100"
        set /a "r2=!random! %% 100"
        set "line="
        for /L %%j in (1,1,!r1!) do set "line=!line!█"
        for /L %%j in (1,1,!r2!) do set "line=!line! "
        echo !line!
    )
)

goto gdi_intensive_loop
