@echo off
echo ================================================
echo   Container Status
echo ================================================
echo.

docker-compose ps

echo.
echo ================================================
echo   Docker System Info
echo ================================================
echo.

docker system df

echo.

pause
