@echo off

set BIT32="32BIT"
set BIT64="64BIT"
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" set PLATFORM_ARCHITECTURE=%BIT64% else set PLATFORM_ARCHITECTURE=%BIT64%

set DOWNLOAD_STATUS_LIST="QUEUED CONNECTING TRANSFERRING SUSPENDED ERROR TRANSIENT_ERROR ACKNOWLEDGED CANCELED COMPLETE"

set HOME_DIRECTORY=%USERPROFILE%

set TEMPORARY_DOWNLOAD_DIRECTORY=%TEMP%\.build-download

set DOWNLOAD_URL_7ZIP_64BIT="http://downloads.sourceforge.net/project/sevenzip/7-Zip/9.20/7z920-x64.msi"
set DOWNLOAD_URL_7ZIP_32BIT="http://downloads.sourceforge.net/project/sevenzip/7-Zip/9.20/7z920.exe"
set DOWNLOAD_URL_7ZIP_COMMAND_LINE="http://downloads.sourceforge.net/project/sevenzip/7-Zip/9.20/7za920.zip"
set DOWNLOAD_URL_7ZSD_SFX="http://7zsfx.solta.ru/files/7zsd_150_2712.7z"

set DOWNLOAD_7ZIP_64BIT_JOB_ID="bit64-7zip-executable"
set DOWNLOAD_7ZIP_32BIT_JOB_ID="bit32-7zip-executable"
set DOWNLOAD_7ZIP_COMMAND_LINE_JOB_ID="command-line-7zip-tool"
set DOWNLOAD_7ZSD_SFX_JOB_ID="7zsd-sfx"

set INSTALLER_7ZIP_64BIT=7zip.msi
set INSTALLER_7ZIP_32BIT=7zip.exe

set COMPRESSED_COMMAND_LINE_7ZIP_32BIT=7za.zip
set COMPRESSED_7ZSD_SFX=7zsd.7z

set COMMAND_LINE_7ZIP=7za.exe
set SFX_7ZSD=7zsd.sfx

set PROGRAM_7ZIP_PATH="C:\Program Files\7-Zip"
set PROGRAM_7ZIP=%PROGRAM_7ZIP_PATH%\7z.exe

set DOWNLOAD_URL_NODEJS_32BIT="http://nodejs.org/dist/v0.10.31/node-v0.10.31-x86.msi"
set DOWNLOAD_URL_NODEJS_64BIT="http://nodejs.org/dist/v0.10.31/x64/node-v0.10.31-x64.msi"

set DOWNLOAD_NODEJS_JOB_ID="nodejs"

set INSTALLER_NODEJS=node.msi

set DOWNLOAD_URL_GIT="https://github.com/msysgit/msysgit/releases/download/Git-1.9.4-preview20140815/Git-1.9.4-preview20140815.exe"

set DOWNLOAD_GIT_JOB_ID="git"

set INSTALLER_GIT=git.exe

