@echo off

if exist "%INSTALLER_PATH%" (
	msiexec /i "%INSTALLER_PATH%" /quiet /passive /qb
) else (
	echo "Cannot find installer for %INSTALLER_PATH%."
)
