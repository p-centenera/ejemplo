@echo off
setlocal
cd /d "%~dp0.." || exit /b 1
call "%~dp0compilar.bat" || exit /b 1
if not exist "dist" mkdir "dist"
"%JAVA_HOME%\bin\jar.exe" --create --file "dist\aplicacion.jar" --main-class presentacion.Main -C bin .
exit /b %ERRORLEVEL%
