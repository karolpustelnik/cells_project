#!/bin/bash
cd /Volumes/T7/cells
#!/bin/bash

for ((i=0; i<=250; i++))
do
    dirname="data ${i}"
    if [ -d "$dirname" ]; then
        rm -r "$dirname"
        echo "Deleted $dirname"
    fi
done
