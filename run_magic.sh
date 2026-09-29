#!/bin/bash
# Automatically set PDK environment variables and launch Magic with the correct techfile

export PDK_ROOT="${HOME}/tools/IHP-Open-PDK"
export PDK="ihp-sg13g2"

if [ ! -d "$PDK_ROOT" ]; then
    echo "Error: PDK_ROOT not found at $PDK_ROOT"
    exit 1
fi

magic -rcfile "${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc" "$@"
