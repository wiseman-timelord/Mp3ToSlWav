@echo off
setlocal

:: Script Has Admin
timeout /t 2 /nobreak >nul
mode con cols=60 lines=30
color 80
title Setup-Install
cd /d "%~dp0"
echo.
echo Checking Admin...
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo ...Admin Required!
    goto EoF
)
echo ...Admin Check!
echo.
echo Initialization Complete...
echo.
timeout /t 1 >nul

:: Installing the requirements
echo Installing the requirements...
echo.
timeout /t 1 >nul
pip install -r requirements.txt

:: Check if requirements.txt was found and installed successfully
if %errorLevel% == 0 (
    echo Requirements install finished.
) else (
    echo ERROR: Could not install.
)
echo.
timeout /t 1 >nul

:: Required Folders
echo Checking and creating directories...
for %%d in (".\libraries" ".\cache" ".\Input" ".\Output") do (
    if not exist %%d (
        mkdir %%d
        echo Created directory: %%d
    ) else (
        echo Directory already exists: %%d
    )
)
echo.
timeout /t 1 >nul

:: Install ffmpeg
echo Downloading ffmpeg...
powershell -command "Invoke-WebRequest -Uri 'https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip' -OutFile '.\cache\ffmpeg-master-latest-win64-gpl.zip'"
echo ...Unpacking ffmpeg...
powershell -command "Expand-Archive -LiteralPath '.\cache\ffmpeg-master-latest-win64-gpl.zip' -DestinationPath '.\cache'"
echo ...Moving ffmpeg...
if exist ".\cache\ffmpeg-master-latest-win64-gpl" (
    move ".\cache\ffmpeg-master-latest-win64-gpl" ".\libraries\ffmpeg"
    echo ...ffmpeg Installed.
) else (
    echo ERROR: Unpacked ffmpeg folder not found.
)
echo.

:: End Of File
:EoF
echo.
echo ...Exiting Setup-Install.
echo.
timeout /t 5 >nul

endlocal
exit /b 0
