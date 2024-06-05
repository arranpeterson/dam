#!/bin/bash

# Set the directory containing the JPEG files
image_dir="image_data/"

# Set the starting number for the file names
start_num=1

# Loop through the JPEG files in the directory
for file in "$image_dir"/*.jpg; do
    # Check if the file exists
    if [ -f "$file" ]; then
        # Construct the new file name with leading zeros
        new_file="$image_dir/$(printf "%03d" $start_num).jpg"
        
        # Rename the file
        mv "$file" "$new_file"
        
        # Increment the starting number
        ((start_num++))
    fi
done

echo "Files renamed successfully!"
