@echo off
echo ========================================
echo  Starting Development Environment
echo ========================================
echo.
echo Starting all containers...
echo.

docker-compose up -d

echo.
echo ========================================
echo  Containers started successfully!
echo ========================================
echo.
echo Access your environments:
echo.
echo  Portainer (Admin):  http://localhost:9000
echo  Python VS Code:     http://localhost:8001
echo  Java VS Code:       http://localhost:8002
echo  Web VS Code:        http://localhost:8003
echo.
echo ========================================
echo.
pause
