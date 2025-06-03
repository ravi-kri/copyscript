#!/bin/bash

SOURCE="/Users/ravikrishnaniyer/a"
DEST="/Users/ravikrishnaniyer/b"

# Check if source exists and is a directory
if [ ! -d "$SOURCE" ]; then
    echo "Error: Source folder '$SOURCE' does not exist or is not a directory."
    exit 1
fi

# Create destination directory if it does not exist
mkdir -p "$DEST"

# Copy source directory and its contents to destination
cp -a "$SOURCE"/. "$DEST"/

echo "Folder '$SOURCE' copied to '$DEST' successfully."
