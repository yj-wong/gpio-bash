#!/bin/bash

counter=0
while [ $counter -le 3 ]
do
	gpio mode $counter out
	((counter++))
done

counter=0
while [ 1 ]
do
while [ $counter -le 3 ]
do
	counter2=0
	while [ $counter2 -le 3 ]
	do
		gpio write $counter2 0
		((counter2++))
	done

	gpio write $counter 1
	sleep 0.25

	((counter++))
done
while

done
