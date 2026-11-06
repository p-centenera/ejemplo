@echo off
setlocal
cd /d "%~dp0.." || exit /b 1
call "%~dp0compilar.bat" || exit /b 1
java -cp "bin" presentacion.Main
exit /b %ERRORLEVEL%
