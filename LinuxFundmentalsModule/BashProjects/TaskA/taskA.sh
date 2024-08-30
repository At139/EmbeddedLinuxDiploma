#!/bin/bash

# Directory you want to loop through
source_directory="$1"
destination_base_directory="$1"

# Ensure destination base directory exists
mkdir -p "$destination_base_directory"

# Loop through each file in the source directory
for file in "$source_directory"/*; do
    # Check if it's a file
    if [ -f "$file" ]; then
        # Get the filename
        filename=$(basename "$file")
        
        # Get the file extension
        extension="${filename##*.}"
        
        # Determine the destination directory
        if [ "$extension" = "$filename" ]; then
            # No extension
            destination_directory="$destination_base_directory/misc"
        else
            # With extension
            destination_directory="$destination_base_directory/$extension"
        fi
        
        # Create the destination directory if it doesn't exist
        mkdir -p "$destination_directory"
        
        # Move the file
        mv "$file" "$destination_directory/"
        
        echo "Moved $filename to $destination_directory/"
    fi
done
