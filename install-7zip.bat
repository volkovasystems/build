@echo off

echo Installing 7-zip utility.
if "%PLATFORM_ARCHITECTURE%"=="%BIT32%" (
	set INSTALLER_PATH=%INSTALLER_7ZIP_32BIT%
) else (
	set INSTALLER_PATH=%INSTALLER_7ZIP_64BIT%
)
call install.bat

echo Extracting 7-zip command line tool.
%PROGRAM_7ZIP% e "%COMPRESSED_COMMAND_LINE_7ZIP_32BIT%" %COMMAND_LINE_7ZIP%

echo Extracting 7zsd.sfx tool.
%PROGRAM_7ZIP% e "%COMPRESSED_7ZSD_SFX%" SFX_7ZSD%SFX_7ZSD%