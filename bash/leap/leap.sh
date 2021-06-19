#!/usr/bin/env bash

year="$1"

if [[ ! $year =~ ^[0-9]+$ || -n $2 ]] ; then
    echo 'Usage: leap.sh <year>'
    exit 1
fi

(($year % 4 == 0)) \
    && (($year % 100 != 0)) \
    || (($year % 400 == 0)) \
    && echo true || echo false

