@echo off

echo Installing 7-zip utility.
if "%PLATFORM_ARCHITECTURE%"=="%BIT32%" (
	set INSTALLER_PATH=%INSTALLER_7ZIP_32BIT%
) else (
	set INSTALLER_PATH=%INSTALLER_7ZIP_64BIT%
)

call install.bat

if exist "%PROGRAM_7ZIP%" (
	echo %PROGRAM_7ZIP% has been installed.
) else (
	echo %PROGRAM_7ZIP% has not been installed.
)

echo Extracting 7-zip command line tool.
%PROGRAM_7ZIP% e "%COMPRESSED_COMMAND_LINE_7ZIP_32BIT%" %COMMAND_LINE_7ZIP% -y > nul
if exist "%COMMAND_LINE_7ZIP%" (
	echo %COMMAND_LINE_7ZIP% has been extracted.
) else (
	echo %COMMAND_LINE_7ZIP% has not been extracted.
)

echo Extracting 7zsd.sfx tool.
%PROGRAM_7ZIP% e "%COMPRESSED_7ZSD_SFX%" %SFX_7ZSD% -y > nul
if exist "%SFX_7ZSD%" (
	echo %SFX_7ZSD% has been extracted.
) else (
	echo %SFX_7ZSD% has not been extracted.
)