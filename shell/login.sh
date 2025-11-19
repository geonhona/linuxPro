#!/bin/bash

if [ $# -eq 0 ]; then
	echo "사용법: $0 userid" >&2
	exit 1
fi

w="$( who | grep $1 )"
if [[ -z $w ]]; then
	echo "$1 is not logged in"
else
	echo "$1 is logged in"
fi

exit 0
