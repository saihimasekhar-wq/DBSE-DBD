@echo off

echo Starting Backend...

start "BACKEND" cmd /k "cd /d "%~dp0backend" && node server.js"

timeout /t 3 >nul

echo Starting Frontend...

start "FRONTEND" cmd /k "cd /d "%~dp0frontend" && npm run dev"

timeout /t 5 >nul

echo Opening PharmaCare...

start "" http://localhost:5173