@echo off

rem set source and destination file path
rem set SRC_DIR="C:\Users\Satoshi\Desktop\temp"
rem set DST_DIR="C:\Users\Satoshi\Desktop\temp"
set SRC_DIR="D:\DCIM\101MEDIA"
set DST_DIR="D:\DCIM\101MEDIA"

pushd %SRC_DIR%

rem check if DST_DIR exist or not
rem make DST_DIR if not exist
if not exist %DST_DIR% (
	mkdir %DST_DIR%
	)

rem check movie file (*.MP4) loop
for %%i in (*.MP4) do (
	set FILE_NAME=%%~ni

	rem separate file name 
	call set CAMNUM=%%FILE_NAME:~-9,4%%
	call set BEFORE_CAMNUM=%%FILE_NAME:~,-10%%
	call set AFTER_CAMNUM=%%FILE_NAME:~-4%%

	rem check if cam number or not
	call echo %%CAMNUM%%|findstr /x /r "CAM[1|2]" >nul
	if errorlevel 1 (
		call echo Not cam number: %%CAMNUM%%

		) else (
		rem generate new file name
		call set NEW_FILE=%%CAMNUM%%_%%BEFORE_CAMNUM%%_%%AFTER_CAMNUM%%.MP4

		call echo old file name: %%i
		call echo new file name: %%NEW_FILE%%

		rem execute rename
		call move %%i %%DST_DIR%%\%%NEW_FILE%%
		)
	)

goto :END

:END
popd
exit /b 0