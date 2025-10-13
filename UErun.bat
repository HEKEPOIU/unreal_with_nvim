@echo off

call %~dp0\UEvar.bat %1
if errorlevel 1 (
    exit /b 1
)

start %UE_EDITOR% "%UPROJECT_DIR%" -log

