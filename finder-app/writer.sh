#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Params num err"
    exit 1
fi

writefile=$1
writestr=$2

if [ ! -f $writefile ]; then
    $(mkdir -p -- ${writefile%/*} && touch -- ${writefile})
fi

$(echo ${writestr} > ${writefile})