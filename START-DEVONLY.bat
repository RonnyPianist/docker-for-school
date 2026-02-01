@echo off
echo ================================================
echo   Start Only Dev Environments (No Databases)
echo ================================================
echo.

echo Starte Python, Java, WebDev und Portainer...
docker-compose up -d python java webdev portainer

echo.
echo ================================================
echo   Dev Environments gestartet!
echo ================================================
echo.
echo   Python Dev:    http://localhost:8080
echo   Java Dev:      http://localhost:8081
echo   Web Dev:       http://localhost:8082
echo   Portainer:     http://localhost:9000
echo.

pause
