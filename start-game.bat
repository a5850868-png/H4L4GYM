@echo off
cd /d "%~dp0"
echo Word Master Playground
echo.
echo Computer URL: http://localhost:8000
echo iPad URL: use http://YOUR-COMPUTER-IP:8000 on the same Wi-Fi
echo.
echo Keep this window open while playing.
node server.js
pause
