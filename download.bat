@echo off

call bitsadmin-download.bat

if exist "download-status" (
	set DOWNLOAD_STATUS=< "download-status"
	del "download-status"
) else (
	goto END
)

if "%DOWNLOAD_STATUS%"=="ERROR" (
	call chrome-download.bat
)


:END