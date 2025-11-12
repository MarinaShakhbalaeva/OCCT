@echo off

set /p "number=Enter number: "
set /a "N=1"

if %number% lss 0 (
    echo Error: Factorial is not defined for negative numbers
    goto :end
)

for /l %%i in (1,1,%number%) do (
    set /a "N*=%%i"
)

echo Factorial: %N%

:end
pause