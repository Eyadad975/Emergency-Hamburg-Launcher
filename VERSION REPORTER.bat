@echo off
setlocal enabledelayedexpansion

REM Step 1: Retrieve the registry value for the roblox-player protocol
for /f "tokens=3*" %%A in ('reg query "HKEY_CLASSES_ROOT\roblox-player\shell\open\command" /ve') do (
    set "robloxPath=%%B"
)

REM Step 2: Clean up the path (remove leading spaces)
set "robloxPath=!robloxPath: =!"

REM Step 3: Find the position of "version-" and extract everything after it
for /f "delims=" %%C in ("!robloxPath!") do (
    set "path=!robloxPath!"
)

REM Step 4: Extract the version part by cutting the string after "version-"
set "versionPart=!path:*-version-=!"

REM Step 5: Display the extracted version part
echo Roblox Version: !versionPart!

pause
