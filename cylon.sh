#!/bin/bash

bash initMode.sh

counter=0
while [ 1 ]
do
	while [ $counter -le 3 ]
	do
		bash initMode

		# echo $counter
		gpio write $counter 1
		sleep 0.25
		((counter++))

	done

	while [ $counter -gt 0 ]
	do
		bash initMode

		# echo $counter
		gpio write $counter 1
		sleep 0.25
		((counter--))
	done
done
