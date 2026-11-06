@echo off
setlocal
cd /d "%~dp0.." || exit /b 1
if exist "bin" for /r "bin" %%F in (*.class) do del /q "%%~fF"
if exist "dist" for %%F in ("dist\*.jar") do if exist "%%~fF" del /q "%%~fF"
echo Archivos compilados y JAR eliminados.
exit /b 0
