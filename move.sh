#!/bin/bash
cd /Volumes/T7/cells_annotations/all
for i in {001..309}; do
    # Create the destination folder if it doesn't exist
    padded=$(printf "%03d" $i)
    mkdir -p "/Users/karol/Documents/MATLAB/$padded"

    # Search for the files and move them to the destination folder
    file=(NaN_s"$i"_tracking.mat)
    echo $file
    mv "cells_data_$padded.txt" $file "/Users/karol/Documents/MATLAB/$padded" 2>/dev/null
done
