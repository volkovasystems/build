@echo off

for %%i in (%INSTALLER_PATH%) do set EXTENSION=%%~xi
if "%EXTENSION%"==".exe" (
	call exe-install.bat
	goto END
)
if "%EXTENSION%"==".msi" (
	call msi-install.bat
)

:END