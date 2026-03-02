#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/UEvar.sh" "$1"
if [ $? -ne 0 ]; then
    exit 1
fi

"$UE_EDITOR" "$UPROJECT_DIR" -log &
