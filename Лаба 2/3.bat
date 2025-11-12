@ECHO OFF

set /p "folder_path=Enter folder path: "

if not exist "%folder_path%\" (
    echo Error: Folder does not exist!
    pause
    exit /b 1
)

for /f "delims=" %%d in ('dir "%folder_path%" /ad /b /s 2^>nul ^| find /c /v ""') do set /a count=%%d-1

echo Total subfolders: %count%
pause