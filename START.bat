@echo off
color 0A
echo.
echo ================================================
echo    SCHUL-ENTWICKLUNGSUMGEBUNG STARTEN
echo ================================================
echo.

cd /d "%~dp0"

echo [1/2] Alle Services starten...
docker-compose up -d

timeout /t 3 /nobreak

echo.
echo [2/2] Status pruefen...
docker-compose ps

echo.
echo ================================================
echo    FERTIG! Oeffne diese URLs:
echo ================================================
echo.
echo   Portainer:   http://localhost:9000
echo   Python IDE:  http://localhost:8080  (python123)
echo   Java IDE:    http://localhost:8081  (java123)
echo   Web Dev IDE: http://localhost:8082  (web123)
echo.
echo Druecke beliebige Taste...
pause >nul
