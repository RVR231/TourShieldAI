@echo off
echo ========================================
echo    TourShield AI - Starting App
echo ========================================
echo.

echo [1/2] Installing Server dependencies...
cd server
call npm install
echo.

echo [2/2] Installing Client dependencies...
cd ..\client
call npm install
echo.

echo ========================================
echo Starting Server and Client...
echo ========================================
echo.
echo Server will run on: http://localhost:5000
echo Client will run on: http://localhost:3000
echo.

start "TourShield AI - Server" cmd /k "cd /d %~dp0server && node server.js"
timeout /t 3 >nul
start "TourShield AI - Client" cmd /k "cd /d %~dp0client && npm run dev"

echo.
echo Both windows opened! 
echo Open your browser at: http://localhost:3000
echo.
pause
