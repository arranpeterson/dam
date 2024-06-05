#!/bin/bash

# Set the directory containing the image files
image_dir="image_data/"

# Set the output file name
output_file="image_data/image_catalog.json"

# Initialize the JSON output
echo "[" > $output_file

# Loop through the image files in the directory
for file in "$image_dir"/*; do
    # Check if the file is a regular file (not a directory)
    if [ -f "$file" ]; then
        # Extract the file name and extension
        filename=$(basename "$file")
        extension="${filename##*.}"
        filename="${filename%.*}"

        # Construct the JSON object
        json_object="{\"image_url\": \"https://bucketname/image_data/$filename.$extension\", \"image_path\": \"images/test/$filename.jpeg\", \"title\": \"Title\", \"labels\": \"Labels\", \"class_label\": \"sealink\"}"

        # Append the JSON object to the output file
        echo "$json_object," >> $output_file
    fi
done

# Remove the trailing comma and close the JSON array
sed -i '$ s/,$//' $output_file
echo "]" >> $output_file

echo "JSON file generated: $output_file"
