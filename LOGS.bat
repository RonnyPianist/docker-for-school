@echo off
echo ================================================
echo   View Container Logs
echo ================================================
echo.
echo Waehle Container:
echo.
echo   1. Python Dev
echo   2. Java Dev
echo   3. Web Dev
echo   4. Portainer
echo   5. MySQL
echo   6. PostgreSQL
echo   7. MongoDB
echo   8. Redis
echo   9. Alle Container
echo.

set /p choice="Deine Wahl (1-9): "

if "%choice%"=="1" docker-compose logs -f python
if "%choice%"=="2" docker-compose logs -f java
if "%choice%"=="3" docker-compose logs -f webdev
if "%choice%"=="4" docker-compose logs -f portainer
if "%choice%"=="5" docker-compose logs -f mysql
if "%choice%"=="6" docker-compose logs -f postgres
if "%choice%"=="7" docker-compose logs -f mongodb
if "%choice%"=="8" docker-compose logs -f redis
if "%choice%"=="9" docker-compose logs -f

pause
