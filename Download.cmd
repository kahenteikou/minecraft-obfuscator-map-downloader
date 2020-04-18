@echo off
rem init
set VER_NAME=
set OUTFOLDER_NAME=
rem input_ver
set /P VER_NAME="Input ver name: "
rem out_dir
set /P OUTFOLDER_NAME="Input output dir path: "
mkdir "%OUTFOLDER_NAME%"
powershell -NoProfile -ExecutionPolicy Unrestricted %~dp0\main.ps1 "%VER_NAME%" "%OUTFOLDER_NAME%"
pause