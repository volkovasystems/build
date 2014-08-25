@echo off
set HOME_DIRECTORY="%USERPROFILE%"

set TEMPORARY_DOWNLOAD_DIRECTORY="%TEMP%/.build-download"

set DOWNLOAD_URL_7ZIP_64BIT="http://downloads.sourceforge.net/project/sevenzip/7-Zip/9.20/7z920-x64.msi"
set DOWNLOAD_URL_7ZIP_32BIT="http://downloads.sourceforge.net/project/sevenzip/7-Zip/9.20/7z920.exe"
set DOWNLOAD_URL_7ZIP_COMMAND_LINE="http://downloads.sourceforge.net/project/sevenzip/7-Zip/9.20/7za920.zip"
set DOWNLOAD_7ZIP_64BIT_JOB_ID="bit64-7zip-executable"
set DOWNLOAD_7ZIP_32BIT_JOB_ID="bit32-7zip-executable"
set DOWNLOAD_7ZIP_COMMAND_LINE_JOB_ID="command-line-7zip-tool"
set INSTALLER_7ZIP_64BIT="7zip.msi"
set INSTALLER_7ZIP_32BIT="7zip.exe"
set COMMAND_LINE_7ZIP_32BIT="7za.zip"

set NODEJS_32BIT_DOWNLOAD_URL="http://nodejs.org/dist/v0.10.31/node-v0.10.31-x86.msi"
set NODEJS_64BIT_DOWNLOAD_URL="http://nodejs.org/dist/v0.10.31/x64/node-v0.10.31-x64.msi"

set GIT_DOWNLOAD_URL="https://github.com/msysgit/msysgit/releases/download/Git-1.9.4-preview20140815/Git-1.9.4-preview20140815.exe"

set BIT32="32BIT"
set BIT64="64BIT"
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" set PLATFORM_ARCHITECTURE=%BIT64% else set PLATFORM_ARCHITECTURE=%BIT64%

set DOWNLOAD_STATUS_LIST="QUEUED CONNECTING TRANSFERRING SUSPENDED ERROR TRANSIENT_ERROR ACKNOWLEDGED CANCELED COMPLETE"