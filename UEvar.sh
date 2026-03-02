#!/usr/bin/env bash

# WARN: change to your project root directory
ROOT_DIR=""

PROJECT_NAME="$1"

if [ -z "$PROJECT_NAME" ]; then
    echo "[Error]: Please input project name"
    exit 1
fi

PROJECT_DIR="$ROOT_DIR/$PROJECT_NAME"
UPROJECT_DIR="$PROJECT_DIR/$PROJECT_NAME.uproject"

echo "$PROJECT_DIR"
echo "$UPROJECT_DIR"

# WARN: change to your UnrealEngine directory
UE_DIR=""

BUILD_TOOL="$UE_DIR/Engine/Binaries/DotNET/UnrealBuildTool/UnrealBuildTool"
UE_EDITOR="$UE_DIR/Engine/Binaries/Linux/UnrealEditor"
#WARN: Change to your platform (Win64, Linux, Mac)
BUILD_PLATFORM="Linux"

echo "BUILD_TOOL=$BUILD_TOOL"
echo "UE_EDITOR=$UE_EDITOR"
