#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
echo "Write the directory and extension"
exit 1
fi

directory="$1"
extension="$2"

if [ ! -d "$directory" ]; then
echo "The directory is not found"
exit 1
fi

files=$(find "$directory" -type f -name "*.$extension")

if [ -n "$files" ]; then
echo "The files with extension $extension are found:"
echo "$files"
else
echo "The files with extention $extension are not found"
fi
