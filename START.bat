@echo off
echo ================================================
echo   Docker Development Environment - START
echo ================================================
echo.

echo Starte alle Services...
docker-compose up -d

echo.
echo ================================================
echo   Services gestartet!
echo ================================================
echo.
echo Warte auf Container-Initialisierung...
timeout /t 10 /nobreak >nul

echo.
echo Services sind verfuegbar unter:
echo.
echo   Python Dev:    http://localhost:8080
echo   Java Dev:      http://localhost:8081
echo   Web Dev:       http://localhost:8082
echo   Portainer:     http://localhost:9000
echo.
echo   MySQL:         localhost:3306
echo   PostgreSQL:    localhost:5432
echo   MongoDB:       localhost:27017
echo   Redis:         localhost:6379
echo.
echo Status anzeigen: docker-compose ps
echo Logs anzeigen:   docker-compose logs -f
echo.

pause
