@ECHO OFF
setlocal enabledelayedexpansion

echo Enter '-' to finish input

set "min="
set "max="

:input_loop
SET /P "number=Enter number: "

if "%number%"=="-" goto calculate

if not defined min (
    set "min=%number%"
    set "max=%number%"
    goto input_loop
)

if %number% lss !min! set "min=%number%"

if %number% gtr !max! set "max=%number%"

goto input_loop

:calculate
echo.
echo Results:
echo Minimum number: %min%
echo Maximum number: %max%

pause