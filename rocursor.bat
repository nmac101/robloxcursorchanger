@echo off
title RoCursor
color 0b
if not exist RobloxPlayerBeta.exe goto wrongdir
if not exist C:\rocursor goto help
:start
echo Welcome to RoCursor!
echo.
set /p pack=Pack to apply: 
if %pack% == help goto help
if not exist C:\rocursor\%pack% goto notfound
if exist C:\rocursor\%pack% goto found
:found
cls
color 0a
taskkill /f /im RobloxPlayerBeta.exe
cls
echo Applying pack...
cd content\textures\Cursors\KeyboardMouse
xcopy C:\rocursor\%pack% /y
echo Pack applied!
cls
echo Pack applied!
pause
cls
color 0b
goto start
:notfound
cls
color 0c
echo Pack not found
pause
color 0b
cls
goto start
:help
md C:\rocursor
echo Loading...
cls
echo Looks like it's your first time here!
echo Welcome to RoCursor
echo To install any pack just move it to C:\rocursor
echo You can find many packs here: https://nmac101.github.io/rocursor/
echo You can read this message again by typing "help" in the pack textbox
pause
cls
goto start
:wrongdir
color 0c
echo Looks like you're in the wrong directory! You have to put this inside the Roblox Folder.
echo To find it, click on start menu and type 'roblox'
echo Then right click 'Roblox Player' and click 'Open file location'
echo An explorer window will open and then right click 'Roblox Player' again and click 'Open file location'
echo Then, just move the file there.
pause