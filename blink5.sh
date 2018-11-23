#!/bin/bash

bash initMode.sh

i=0
j=0
while [ $i -lt 5 ]
do
	while [ $j -le 3 ]
	do
		gpio write $j 1
		((j++))
	done

	sleep 1
	echo on

	bash initMode

	sleep 1
	echo off
	((i++))
done
