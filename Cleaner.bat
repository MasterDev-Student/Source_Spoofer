@echo off
title Cleaner
ping localhost -n 3 >nul
echo Killing any related processes...
@taskkill /f /im "EpicGamesLauncher.exe" /t /fi "status eq running">nul
@taskkill /f /im "FortniteLauncher.exe" /t /fi "status eq running">nul
@taskkill /f /im "FortniteClient-Win64-Shipping_BE.exe" /t /fi "status eq running">nul
@taskkill /f /im "FortniteClient-Win64-Shipping.exe" /t /fi "status eq running">nul
@taskkill /f /im "EasyAntiCheat.exe" /t /fi "status eq running">nul
@timeout /t 2 >nul 2>&1 /nobreak
cls
Echo Cleaning!
ping localhost -n 3 >nul
@reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f
@RD /S /Q "%localappdata%\FortniteGame"
@RD /S /Q "%localappdata%\EpicGamesLauncher"
@RD /S /Q "%localappdata%\UnrealEngine"
@RD /S /Q "%localappdata%\UnrealEngineLauncher"
@RD /S /Q "%localappdata%\Temp\ecache.bin"
@RD /S /Q "%localappdata%\FortniteGame\Saved\LMS\Manifest.sav"
@RD /S /Q "%localappdata%\Microsoft\Feeds"
del "C:\Recovery\ntuser.sys"
del "C:\MSOCache" /p
del "C:\Users\Public\Shared Files" 
ping localhost -n 3 >nul
exit
