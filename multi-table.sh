#!/bin/sh

# 입력 개수 확인
if [ $# -ne 2 ]; then
	echo "Invalid input"
	exit 1
fi

# 양수 체크
if [ "$1" -le 0 ] || [ "$2" -le 0 ]; then
	echo "Input must be greater than 0"
	exit 1
fi

# 변수 저장
row=$1
col=$2

# 값 출력
for i in $(seq 1 $row); do
	for j in $(seq 1 $col); do
		printf "%d*%d=%d\t" $i $j $((i*j))
	done
	echo
done

