#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/UEvar.sh" "$1"
if [ $? -ne 0 ]; then
    exit 1
fi

$BUILD_TOOL ${PROJECT_NAME}Editor $BUILD_PLATFORM Development "$UPROJECT_DIR" -waitmutex -NoHotReload
