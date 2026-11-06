@echo off
setlocal

rem Situarse en la raiz del proyecto
cd /d "%~dp0.."

rem Crear el JAR utilizando el script correspondiente
call "%~dp0jar.bat"

if errorlevel 1 (
    echo ERROR: No se ha podido crear el archivo JAR.
    exit /b 1
)

rem Ejecutar el JAR
"%JAVA_HOME%\bin\java.exe" -jar "dist\aplicacion.jar"

exit /b %ERRORLEVEL%
