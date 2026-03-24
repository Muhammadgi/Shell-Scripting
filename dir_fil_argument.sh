#!/bin/bash


dir="$1"
text="$2"

# Check if arguments are provided
if [ -z "$dir" ] || [ -z "$text" ]; then
  echo "Usage: $0 <directory> <text>"
  exit 1
fi

# Check if directory exists
if [ ! -d "$dir" ]; then
  echo "Directory not found!"
  exit 1
fi

# Search for text in files
found=false

for file in "$dir"/*; do
  if [ -f "$file" ]; then
    if grep -q "$text" "$file"; then
      echo "Found in: $file"
      found=true
    fi
  fi
done

# If not found
if [ "$found" = false ]; then
  echo "Text not found in any file."
fi
