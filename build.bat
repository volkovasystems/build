@echo off
cls
title RUNNING PRE-BUILD PROCEDURE

echo Configuring environment variables.
call configure.bat

echo. & echo Downloading 7zip utilities.
call download-7zip.bat

echo. & echo Preparing installation of 7zip utilities.
call install-7zip.bat

echo. & echo Downloading NodeJS.
call download-nodejs.bat

echo. & echo Preparing installation of NodeJS.
call install-nodejs.bat

echo. & echo Downloading Git.
call download-git.bat

echo. & echo Preparing installation of Git.
call install-git.bat

pause