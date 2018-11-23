#!/bin/bash/

bash initMode.sh

if [ $(( $1 & 1 )) -eq 1 ]
then
	echo bit 1
	gpio write 0 1
fi

if [ $(( $1 >> 1 & 1)) -eq 1 ]
then
	echo bit 2
	gpio write 1 1
fi

if [ $(( $1 >> 2 & 1)) -eq 1 ]
then
	echo bit 3
	gpio write 2 1
fi

if [ $(( $1 >> 3 & 1)) -eq 1 ]
then
	echo bit 4
	gpio write 3 1
fi
