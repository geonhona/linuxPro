#!/bin/bash

op=$1
a=$2
b=$3

if [[ $# -ne 3 ]]; then
	echo "사용법: $(basename $0) 인자" >&2
	exit 1
fi

case $1 in

	+) result=$((a+b))
	echo "덧셈: $a + $b = $result"
	;;

	-) result=$((a-b))
	echo "뺄셈: $a - $b = $result"
	;;

	\*) result=$((a*b))
	echo "곱셈: $a * $b = $result"
	;;

	/)
	if [ $b -eq 0 ]; then
         echo "0으로 나눌수 없음"
        else
	 result=$((a/b))
	 echo "나눗셈: $a / $b = $result"
	fi
	;;

	*) echo "(+, -, *, /) 연산자만 입력해주세요"
	exit 1
esac

exit 0
