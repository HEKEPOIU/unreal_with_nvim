#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/UEvar.sh" "$1"
if [ $? -ne 0 ]; then
    exit 1
fi

echo $BUILD_TOOL
echo $UPROJECT_DIR
echo $BUILD_TOOL -Mode=GenerateClangDatabase Development Win64 $UPROJECT_DIR -waitmutex -NoHotReload -OutputDir=$PROJECT_DIR

$BUILD_TOOL -Mode=GenerateClangDatabase  -project=%UPROJECT_DIR Development $BUILD_PLATFORM ${PROJECT_NAME}Editor -waitmutex -NoHotReload -OutputDir=$PROJECT_DIR

