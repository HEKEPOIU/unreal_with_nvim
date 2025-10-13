@echo off

call %~dp0\UEvar.bat %1
if errorlevel 1 (
    exit /b 1
)

echo %BUILD_TOOL%
echo %UPROJECT_DIR%
echo %BUILD_TOOL% -Mode=GenerateClangDatabase Development Win64 %UPROJECT_DIR% -waitmutex -NoHotReload -OutputDir=%PROJECT_DIR%

%BUILD_TOOL%  -Mode=GenerateClangDatabase  -project=%UPROJECT_DIR% Development Win64 %PROJECT_NAME%Editor -waitmutex -NoHotReload -OutputDir=%PROJECT_DIR%

