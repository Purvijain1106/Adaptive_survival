@echo off
setlocal
cd /d "%~dp0"

where node >nul 2>nul
if errorlevel 1 (
  echo Node.js 20.19 or newer is required. Install it from https://nodejs.org/
  pause
  exit /b 1
)

where npm >nul 2>nul
if errorlevel 1 (
  echo npm was not found. Reinstall Node.js, then restart VS Code or this window.
  pause
  exit /b 1
)

if not exist node_modules (
  echo Installing project packages...
  call npm install
  if errorlevel 1 goto failed
)

echo Building the Windows portable app...
call npm run desktop:pack:win
if errorlevel 1 goto failed

echo.
echo Build complete. Look in the release folder for Adaptive-Survival-1.0.0-x64-portable.exe.
pause
exit /b 0

:failed
echo.
echo The build did not complete. Check the error messages above.
pause
exit /b 1