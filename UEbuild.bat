@echo off

call %~dp0\UEvar.bat %1
if errorlevel 1 (
    exit /b 1
)

%BUILD_TOOL% %PROJECT_NAME%Editor Win64 Development "%UPROJECT_DIR%" -waitmutex -NoHotReload
