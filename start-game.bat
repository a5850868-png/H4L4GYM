@echo off
setlocal
cd /d "%~dp0"

set "BUNDLED_NODE=%USERPROFILE%\.cache\codex-runtimes\codex-primary-runtime\dependencies\node\bin\node.exe"
set "NODE_CMD=node"

if exist "%BUNDLED_NODE%" (
  set "NODE_CMD=%BUNDLED_NODE%"
) else (
  where node >nul 2>nul
)

if errorlevel 1 if not exist "%BUNDLED_NODE%" (
  echo Node.js is required to run the local server.
  echo You can still open index.html directly in a browser.
  pause
  exit /b 1
)

echo Starting word-game-generator on http://localhost:3000
echo Other devices on the same Wi-Fi can use this computer's local IP with port 3000.
echo.
"%NODE_CMD%" server.js
pause
