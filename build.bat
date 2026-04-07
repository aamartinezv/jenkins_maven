@echo off
echo ========================================
echo Starting Maven Build Automation...
echo ========================================

echo Cleaning previous build...
call mvnw clean

echo Compiling and packaging the application...
call mvnw package -DskipTests=false

echo.
echo ========================================
echo Build completed successfully!
echo.
echo JAR file is available at: target\my-app-1.0-SNAPSHOT.jar
echo You can run the app using: java -jar target\my-app-1.0-SNAPSHOT.jar
echo ========================================
pause