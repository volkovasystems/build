@echo off

bitsadmin /reset > nul 
bitsadmin /create /download %JOB_ID% > nul 
bitsadmin /addFile %JOB_ID% %DOWNLOAD_URL% %DOWNLOAD_DESTINATION% > nul 
bitsadmin /setMinRetryDelay %JOB_ID% 1 > nul 
bitsadmin /resume %JOB_ID% > nul

:CHECK_DOWNLOAD
bitsadmin /getState %JOB_ID% | findstr %DOWNLOAD_STATUS_LIST% > "download-status"
set /p DOWNLOAD_STATUS=< "download-status"

bitsadmin /info %JOB_ID% /verbose | findstr "TRANSFERRED" > "download-status"
set /p DOWNLOAD_STATUS=< "download-status"

if "%DOWNLOAD_STATUS%"=="CONNECTING" (
	echo | set /p loading="-"
	goto CHECK_DOWNLOAD
)

if "%DOWNLOAD_STATUS%"=="QUEUED" (
	echo | set /p loading="~"
	goto CHECK_DOWNLOAD
)

if "%DOWNLOAD_STATUS%"=="TRANSFERRING" (
	echo | set /p loading="+"
	goto CHECK_DOWNLOAD
)

if "%DOWNLOAD_STATUS%"=="TRANSIENT_ERROR" (
	echo | set /p loading="!"
	goto CHECK_DOWNLOAD
)

if "%DOWNLOAD_STATUS%"=="ERROR" goto DOWNLOAD_STOPPED
if "%DOWNLOAD_STATUS%"=="CANCELLED" goto DOWNLOAD_STOPPED

if "%DOWNLOAD_STATUS%"=="COMPLETE" goto DOWNLOAD_COMPLETE
if "%DOWNLOAD_STATUS%"=="ACKNOWLEDGED" goto DOWNLOAD_COMPLETE

if not !DOWNLOAD_STATUS:TRANSFERRED!==!DOWNLOAD_STATUS! (
	echo | set /p loading="[ok]"
	bitsadmin /complete %JOB_ID% > nul
	goto DOWNLOAD_COMPLETE
)

:DOWNLOAD_STOPPED
echo %DOWNLOAD_STATUS% > "download-status"
echo.
echo Download has stopped.
goto END

:DOWNLOAD_COMPLETE
echo.
echo Downloading has completed.
del "download-status"

:END