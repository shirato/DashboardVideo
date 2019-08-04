@echo off

rem set source and destination file path
rem set SRC_DIR="C:\Users\Satoshi\Desktop\temp"
set SRC_DIR="D:\DCIM"

pushd %SRC_DIR%

rem check movie file (*.MP4) loop
for /r %%i in (*.MP4) do (
	set DIR_PATH=%%~dpi
	set FILE_NAME=%%~ni

	rem separate file name 
	call set CAM_NUM=%%FILE_NAME:~-9,4%%
	call set DATE_TIME=%%FILE_NAME:~,13%%
	call set FILE_NUM=%%FILE_NAME:~-4%%

	rem check if cam number or not
	call echo %%CAM_NUM%%|findstr /x /r "CAM[1|2]" >nul
	if errorlevel 1 (
		call echo Not cam number: %%CAM_NUM%%

		) else (
		rem generate new file name
		call set NEW_FILE=%%CAM_NUM%%_%%DATE_TIME%%_%%FILE_NUM%%.MP4

		call echo old file name: %%~nxi
		call echo new file name: %%NEW_FILE%%

		rem execute rename
		call move %%DIR_PATH%%\%%~nxi %%DIR_PATH%%\%%NEW_FILE%%
		)
	)

goto :END

:END
popd
pause
exit /b 0