#!/bin/bash

# Check if the correct number of arguments was provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_folder> <destination_folder>"
    exit 1
fi

SOURCE="$1"
DEST="$2"

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
