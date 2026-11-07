#!/bin/sh
#
#

if [ $# -ne 2 ]
then
    echo "Use writer.sh <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2
writedir=`dirname ${writefile}`

if [ ! -d "${writedir}"  ]
then
    mkdir -p "${writedir}"
fi

echo "${writestr}" > ${writefile}
exit 0
