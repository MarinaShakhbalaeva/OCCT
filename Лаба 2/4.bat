@ECHO OFF

set /p "dir1=Enter first directory: "
set /p "dir2=Enter second directory: "

if not exist "%dir1%\" (
    echo Error: Directory "%dir1%" does not exist
    pause
    exit /b 1
)

if not exist "%dir2%\" (
    echo Error: Directory "%dir2%" does not exist
    pause
    exit /b 1
)

for %%F in ("%dir1%\*.*") do (
    if exist "%dir2%\%%~nxF" (
        echo %%~nxF
    )
)



pause