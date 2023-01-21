#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Params num err"
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
    echo "Not file system directory"
    exit 1
fi

x=$(find "$filesdir" -type f | wc -l)
y=$(grep -rl "$filesdir" -e "$searchstr" | wc -l)

echo "The number of files are $x and the number of matching lines are $y"