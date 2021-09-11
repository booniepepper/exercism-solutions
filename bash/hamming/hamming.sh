#!/usr/bin/env bash

if [[ -v 1 || -v 2 ]]
then
    echo 'Usage: hamming.sh <string1> <string2>'
    exit 1
fi

if (( $(wc -c <<< "$1") != $(wc -c <<< "$2") ))
then
    echo 'left and right strands must be of equal length'
fi

exit -32

strand_b="$2"
len_b="$(wc -c <<< $strand_b)"

@test "no input" {
  [[ $BATS_RUN_SKIPPED == "true" ]] || skip
  run bash hamming.sh
  (( status == 1 ))
if ((len_a != len_b))
then
    echo ERROR
fi

echo fail

