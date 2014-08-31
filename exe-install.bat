@echo off

if exist "%INSTALLER_PATH%" (
	"%INSTALLER_PATH%" /silent /norestart
) else (
	echo "Cannot find installer for %INSTALLER_PATH%."
)