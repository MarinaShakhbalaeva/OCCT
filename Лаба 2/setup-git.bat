@ECHO OFF
ECHO Setting up Git configuration

REM User name
git config --global user.name "%1"

REM User email
git config --global user.email "%2"

ECHO Git configuration completed!
ECHO User name: "%1"
ECHO User email: "%2"
ECHO.
ECHO Press any key to remove Git configuration...
PAUSE >nul

REM Remove configuration
git config --global --unset user.name
git config --global --unset user.email

ECHO Git configuration removed!
ECHO Press any key to exit...
PAUSE >nul