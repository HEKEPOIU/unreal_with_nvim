@echo off

:: WARN: change to your project root directory
set ROOT_DIR=D:\UnrealEngine\project

set PROJECT_NAME=%1
if "%PROJECT_NAME%"=="" (
    echo [Error]: Please input project name
    exit /b 1
)
set PROJECT_DIR=%ROOT_DIR%\%PROJECT_NAME%
set UPROJECT_DIR=%PROJECT_DIR%\%PROJECT_NAME%.uproject

echo %PROJECT_DIR%
echo %UPROJECT_DIR%

:: WARN: change to your UnrealEngine directory
set UE_DIR=D:\UnrealEngine\UnrealEngine
set BUILD_TOOL=%UE_DIR%\Engine\Binaries\DotNET\UnrealBuildTool\UnrealBuildTool.exe
set UE_EDITOR=%UE_DIR%\Engine\Binaries\Win64\UnrealEditor.exe

