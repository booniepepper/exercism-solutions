#!/usr/bin/env bash

input="$@"

for ((i = ${#input} - 1; i >= 0; i--)) do
    echo -n "${input:$i:1}"
done

echo

