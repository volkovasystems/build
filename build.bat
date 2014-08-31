@echo off
cls
title RUNNING PRE-BUILD PROCEDURE

echo Configuring environment variables.
call configure.bat

echo Downloading 7zip utilities.
call download-7zip.bat

echo Installing 7zip utilities.
call install-7zip.bat

echo Downloading NodeJS.
call download-nodejs.bat

echo Installing NodeJS.
call install-nodejs.bat

echo Downloading Git.
call download-git.bat

echo Installing Git.
call install-git.bat

pause