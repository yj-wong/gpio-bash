#!/bin/bash

counter=0

while [ $counter -lt 16 ]
do
	bash setbits.sh $counter
	sleep 1
	((counter++))
done
