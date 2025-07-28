#!/usr/bin/env bash

trash_dir="$MYGROUP/trash"

if [[ $# -eq 0 ]]; then
    echo "Error: No files specified to move."
    exit 1
fi

for file in "$@"; do
    if [[ -e "$file" ]]; then
        mv "$file" "$trash_dir"/
        echo "Moved $file to $trash_dir"
    else
        echo "Warning: File not found: $file"
    fi
done
