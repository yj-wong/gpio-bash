#!/bin/bash/

counter=0
while [ $counter -lt 4 ]
do
	gpio mode $counter in
	((counter++))
done

if [ $(( $1 & 1 )) -eq 1 ]
then
	echo bit 1
	gpio mode 0 out
	gpio write 0 1
fi

if [ $(( $1 >> 1 & 1)) -eq 1 ]
then
	echo bit 2
	gpio mode 1 out
	gpio write 1 1
fi

if [ $(( $1 >> 2 & 1)) -eq 1 ]
then
	echo bit 3
	gpio mode 2 out
	gpio write 2 1
fi

if [ $(( $1 >> 3 & 1)) -eq 1 ]
then
	echo bit 4
	gpio mode 3 out
	gpio write 3 1
fi

