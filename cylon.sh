#!/bin/bash

#counter0 for mode out
counter0=0
while [ $counter0 -le 3 ]
do
	# gpio mode $counter out
	((counter0++))
done

# counter for write 1
# counter2 for write 0
counter=0
while [ 1 ]
do
	while [ $counter -le 3 ]
	do

		counter2=0
		while [ $counter2 -le 3]
		do
			gpio write $counter2 0
		done

		# echo $counter
		gpio write $counter 1
		sleep 0.25
		((counter++))

	done

	while [ $counter -gt 0 ]
	do

		counter2=0
		while [ $counter2 -le 3]
		do
			gpio write $counter2 0
		done

		# echo $counter
		gpio write $counter 1
		sleep 0.25
		((counter--))
	done

done
