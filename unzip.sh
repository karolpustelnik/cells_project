#!/bin/bash
cd /Volumes/T7/cells/cells_zipped
for ((i=1; i<=46; i++)); do
    padded=$(printf "%03d" $i)
    file="$padded.zip"
    if [ -f "$file" ]; then
        echo "Opening $file..."
        unzip "$file" -d "unzipped_files"
    else
        echo "File $file not found."
    fi
done
