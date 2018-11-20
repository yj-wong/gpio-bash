#!/bin/bash

i=0
j=0

while [ $j -le 3 ]
do
	gpio mode $j out
	((j++))
done
j=0

while [ $i -le 4 ]
do
	while [ $j -le 3 ]
	do
		gpio write $j 1
		((j++))
	done
	j=0

	sleep 1
	echo on

	while [ $j -le 3 ]
	do
		gpio write $j 0
		((j++))
	done
	j=0

	sleep 1
	echo off
	((i++))
done
