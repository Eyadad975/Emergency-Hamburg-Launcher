@echo off
setlocal enabledelayedexpansion


for /f "usebackq delims=" %%A in ("version.txt") do (
    set "version=%%A"
    goto :start
)

:start
echo.
echo Enter your version copied from "Versionreporter.bat" COPY THE STRING AFTER "version-" IT SHOULD BE LIKE: 0c1a10704cb043cc
echo.
echo Press any key when ready..
pause >nul
echo.
cls
echo Please wait.....
echo.
echo Press any key when ready....
pause >nul
cls
set "url=roblox://experiences/start?placeId=7711635737&launchData=joinCode%3d!code!"
start "" "C:\Program Files (x86)\Roblox\Versions\version-!version!\RobloxPlayerBeta.exe" "!url!"
