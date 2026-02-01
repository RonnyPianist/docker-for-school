@echo off
echo ================================================
echo   Rebuild All Containers
echo ================================================
echo.

echo Stoppe Container...
docker-compose down

echo.
echo Baue Images neu (dauert einige Minuten)...
docker-compose build --no-cache

echo.
echo Starte Container...
docker-compose up -d

echo.
echo ================================================
echo   Rebuild abgeschlossen!
echo ================================================
echo.
echo Services sind in wenigen Minuten verfuegbar.
echo.

pause
