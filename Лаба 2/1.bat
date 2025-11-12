@ECHO OFF

IF "%~1"=="" (
	ECHO Folder not found
	EXIT /B
)

IF "%~2"=="" (
	ECHO Extension not found
	EXIT /B
)

echo Searching for *.%2 files in %1:
echo.

for %%f in ("%1\*.%2") do (
    echo %%~nxf
)

PAUSE