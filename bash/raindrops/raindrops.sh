#!/usr/bin/env bash

n=$1

declare -a div_sounds=( [3]='Pling' [5]='Plang' [7]='Plong' )

sound=''

for div in "${!div_sounds[@]}"; do
    if (( n % div == 0 )); then
        sound+="${div_sounds[$div]}"
    fi
done

echo "${sound:-$n}"

