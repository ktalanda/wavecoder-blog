#!/bin/bash

# Script to update manifest.json with all folder names in descending order

echo "Analyzing folders in the project..."

# Get all directories, exclude system folders, sort in descending order
folders=$(find . -maxdepth 1 -type d -not -name ".*" -not -name "." | \
          sed 's|^\./||' | \
          sort -r)

# Convert to JSON array format
json_array="["
first=true

for folder in $folders; do
    if [ "$first" = true ]; then
        json_array="$json_array\n  \"$folder\""
        first=false
    else
        json_array="$json_array,\n  \"$folder\""
    fi
done

json_array="$json_array\n]"

# Write to manifest.json
echo -e "$json_array" > manifest.json

echo "Updated manifest.json with $(echo "$folders" | wc -l) folders:"
echo "$folders"

echo "✅ manifest.json has been updated successfully!"
