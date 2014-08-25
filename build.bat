@echo off
cls
title RUNNING PRE-BUILD PROCEDURE

echo Configuring environment variables.
call configure.bat

echo Downloading 7zip utility.
call download-7zip.bat

echo Installing 7zip utility.
call install-7zip.bat

pause