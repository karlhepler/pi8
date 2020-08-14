#!/usr/bin/env bash

trap "kill 0" EXIT

# Build it
cc -o pi8 pi8.c

# Remove the output directory
rm -rf pi8_speedy
mkdir pi8_speedy

# TODO(karlhepler): it needs to be able to pick up where it left off

max_num_jobs=10

# Run it
for (( i=1, n=1; i<=450, n<=2600; i+=1, n+=8 )); do
    while [ $(jobs | wc -l) -ge $max_num_jobs ]; do sleep 1; done
    echo -ne $(./pi8 $n) >> pi8_speedy/$(printf '%04d' $i) &
done
