@echo off
color 0C
echo.
echo ================================================
echo    SCHUL-ENTWICKLUNGSUMGEBUNG STOPPEN
echo ================================================
echo.

cd /d "%~dp0"

echo Alle Services werden gestoppt...
docker-compose down

echo.
echo ================================================
echo    ALLE SERVICES GESTOPPT
echo ================================================
echo.

pause >nul
