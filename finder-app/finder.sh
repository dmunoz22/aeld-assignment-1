#!/bin/sh
#

filesdir=$1
searchstr=$2

if [ $# -ne 2 ]
then
    echo "Use finder.sh <filesdir> <searchstr>"
    exit 1
fi

if [ ! -d "${filesdir}"  ]
then
    echo "${filesdir} is not a dir"
    exit 1
fi

Y=`grep -irc "${searchstr}" "${filesdir}" | awk -F ':' '{sum += $2} END {print sum}'`
X=`grep -irc "${searchstr}" "${filesdir}" | wc -l`

echo "The number of files are ${X} and the number of matching lines are ${Y}"

exit 0
