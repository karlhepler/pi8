#!/usr/bin/env bash

trap "kill 0" EXIT

# Build it
cc -o pi8 pi8.c

# Remove the output
rm -f pi8.txt

# Run it
for (( i=1; i<=3600; i+=8 )); do
    echo -ne "$(./pi8 $i)" >> pi8.txt
    if [ $i == 1 ]; then
        tail -f pi8.txt &
    fi
done
