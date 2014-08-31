@echo off

if not exist "%TEMPORARY_DOWNLOAD_DIRECTORY%" mkdir "%TEMPORARY_DOWNLOAD_DIRECTORY%"

if exist "%INSTALLER_7ZIP_64BIT%" goto DOWNLOAD_7ZIP_COMMAND_LINE
if exist "%INSTALLER_7ZIP_32BIT%" goto DOWNLOAD_7ZIP_COMMAND_LINE

if "%PLATFORM_ARCHITECTURE%"=="%BIT32%" (
	set DOWNLOAD_DESTINATION=%TEMPORARY_DOWNLOAD_DIRECTORY%\%INSTALLER_7ZIP_32BIT%
	set TRANSFER_LOCATION=%INSTALLER_7ZIP_32BIT%
) else (
	set DOWNLOAD_DESTINATION=%TEMPORARY_DOWNLOAD_DIRECTORY%\%INSTALLER_7ZIP_64BIT%
	set TRANSFER_LOCATION=%INSTALLER_7ZIP_64BIT%
)

if exist "%TEMPORARY_DOWNLOAD_DIRECTORY%\%INSTALLER_7ZIP_32BIT%" goto RESOLVE_7ZIP_EXECUTABLE_PATH
if exist "%TEMPORARY_DOWNLOAD_DIRECTORY%\%INSTALLER_7ZIP_64BIT%" goto RESOLVE_7ZIP_EXECUTABLE_PATH

if "%PLATFORM_ARCHITECTURE%"=="%BIT32%" ( 	
	echo Downloading 32-bit 7-Zip executable installer.
	set JOB_ID=%DOWNLOAD_7ZIP_32BIT_JOB_ID%
	set DOWNLOAD_URL=%DOWNLOAD_URL_7ZIP_32BIT%
) else (
	echo Downloading 64-bit 7-Zip executable installer.
	set JOB_ID=%DOWNLOAD_7ZIP_64BIT_JOB_ID%
	set DOWNLOAD_URL=%DOWNLOAD_URL_7ZIP_64BIT%
)

call download.bat

:RESOLVE_7ZIP_EXECUTABLE_PATH
if exist "%TRANSFER_LOCATION%" goto DOWNLOAD_7ZIP_COMMAND_LINE
move "%DOWNLOAD_DESTINATION%" "%TRANSFER_LOCATION%" > nul

:DOWNLOAD_7ZIP_COMMAND_LINE
set DOWNLOAD_DESTINATION=%TEMPORARY_DOWNLOAD_DIRECTORY%\%COMPRESSED_COMMAND_LINE_7ZIP_32BIT%
set TRANSFER_LOCATION=%COMPRESSED_COMMAND_LINE_7ZIP_32BIT%

if exist "%COMPRESSED_COMMAND_LINE_7ZIP_32BIT%" goto DOWNLOAD_7ZSD_SFX
if exist "%TEMPORARY_DOWNLOAD_DIRECTORY%\%COMPRESSED_COMMAND_LINE_7ZIP_32BIT%" goto RESOLVE_7ZIP_COMMAND_LINE_PATH

echo Downloading 32-bit 7-Zip command line tool.
set JOB_ID=%DOWNLOAD_7ZIP_COMMAND_LINE_JOB_ID%
set DOWNLOAD_URL=%DOWNLOAD_URL_7ZIP_COMMAND_LINE%

call download.bat

:RESOLVE_7ZIP_COMMAND_LINE_PATH
if exist "%TRANSFER_LOCATION%" goto DOWNLOAD_7ZSD_SFX
move "%DOWNLOAD_DESTINATION%" "%TRANSFER_LOCATION%" > nul

:DOWNLOAD_7ZSD_SFX
set DOWNLOAD_DESTINATION=%TEMPORARY_DOWNLOAD_DIRECTORY%\%COMPRESSED_7ZSD_SFX%
set TRANSFER_LOCATION=%COMPRESSED_7ZSD_SFX%

if exist "%COMPRESSED_7ZSD_SFX%" goto END
if exist "%TEMPORARY_DOWNLOAD_DIRECTORY%\%COMPRESSED_7ZSD_SFX%" goto RESOLVE_7ZSD_SFX_PATH

echo Downloading compressed 7zsd.sfx tool.
set JOB_ID=%DOWNLOAD_7ZSD_SFX_JOB_ID%
set DOWNLOAD_URL=%DOWNLOAD_URL_7ZSD_SFX%

call download.bat

:RESOLVE_7ZSD_SFX_PATH
if exist "%TRANSFER_LOCATION%" goto END
move "%DOWNLOAD_DESTINATION%" "%TRANSFER_LOCATION%" > nul

rd /s /q %TEMPORARY_DOWNLOAD_DIRECTORY%

:END
if exist "%INSTALLER_7ZIP_64BIT%" echo 64-bit 7Zip installer has been downloaded.
if exist "%INSTALLER_7ZIP_32BIT%" echo 32-bit 7Zip installer has been downloaded.
if exist "%COMPRESSED_COMMAND_LINE_7ZIP_32BIT%" echo 32-bit 7Zip command line utility has been downloaded.
if exist "%COMPRESSED_7ZSD_SFX%" echo 7zsd.sfx tool has been downloaded.