REM Script: Mp3ToSlWav.Bat

@echo off
setlocal

:: Initialization
mode con cols=64 lines=30
color 80
title Mp3ToSlWav
cd /d "%~dp0"
set "scriptDir=%~dp0"
set "ffmpegBinPath=%scriptDir%libraries\ffmpeg\bin"
set "PATH=%ffmpegBinPath%;%PATH%"
echo.
echo Launcher Initialized...
echo.
echo.
timeout /t 2 /nobreak >nul

:: Maintenance
echo Cleaning up..
if exist ".\Errors-Crash.Log" (
    echo ...Deleting Log...
    del ".\Errors-Crash.Log"
)
echo ..Cleaning Done.
echo.
timeout /t 1 /nobreak >nul


:: Main Menu
:menu
cls
echo      ^_^_  ^_^_      ^_^_^_^_^_^_^_^_^_^_    ^_^_^_^_  ^_^_^_        ^_^_          
echo     ^|  ^\^/  ^|^_^_^_^_^|^_^_^_ ^/^_   ^_^|^_^_^/ ^_^_^_^|^| ^\ ^\      ^/ ^/^_^_^_^_^_   ^_^_
echo     ^| ^|^\^/^| ^|  ^_ ^\ ^|^_ ^\ ^| ^|^/ ^_ ^\^_^_^_ ^\^| ^|^\ ^\ ^/^\ ^/ ^/ ^_  ^\ ^\ ^/ ^/
echo     ^| ^|  ^| ^| ^|^_^) ^|^_^_^) ^|^| ^| ^(^_^) ^|^_^_^) ^| ^| ^\ V  V ^/ ^(^_^| ^|^\ V ^/ 
echo     ^|^_^|  ^|^_^|  ^_^_^/^_^_^_^_^/ ^|^_^|^\^_^_^_^/^_^_^_^_^/^|^_^|  ^\^_^/^\^_^/ ^\^_^_^|^_^| ^\^_^/  
echo            ^|^_^|               
echo.         
echo ========================( Mp3ToSlWav )=========================
echo.
echo.
echo.
echo.
echo.
echo.
echo                      1. Run Mp3ToSlWav,
echo.
echo                   2. Check File Integrity,
echo.
echo                       X. Exit Launcher.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo ---------------------------------------------------------------

:: Variables
set /p choice=Select, Options=1-2, Exit=X: 
if "%choice%"=="1" goto executeMain
if "%choice%"=="2" goto checkScript
if "%choice%"=="x" goto end
echo Invalid choice. Try again.
pause
goto menu

:: Check for presence of python and execute main.py
:executeMain
python3 -c "print('Python 3 is installed.')" >nul 2>>&1
if %errorlevel% == 0 (
    echo Running Python3 Script...
    python3.exe ".\main.py" 2>> "Errors-Crash.Log"
    goto afterExecution
) 

python -c "print('Python is installed.')" >nul 2>>&1
if %errorlevel% == 0 (
    echo Running Python Script...
    python.exe ".\main.py" 2>> "Errors-Crash.Log"
    goto afterExecution
)

echo Error: Python Issues.
goto afterExecution

:: After Execution
:afterExecution
color 80
cls
echo.
timeout /t 1 /nobreak >nul
echo Returning to menu..
echo.
timeout /t 2 /nobreak >nul
goto menu

:: Function to Check File Structure
:checkScript
cls
echo.
echo Checking Script Files..
set missing=0
timeout /t 1 /nobreak >nul

:: Check for Python script files
if not exist ".\main.py" set missing=1

if %missing%==1 (
    echo ..Failure, Re-Install Program!
) else (
    echo ..Program Files Correct.
)
echo.
timeout /t 1 /nobreak >nul
echo Returning to menu..
echo.
timeout /t 2 /nobreak >nul
goto menu

:: End Function
:end
echo ...Exit Initiated.
timeout /t 5 /nobreak >nul

endlocal
exit /b 0