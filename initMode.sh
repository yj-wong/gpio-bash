#!/bin/bash
# Basic while loop
counter=0
while [ $counter -le 3 ]
do
	gpio mode $counter out
	gpio write counter 1
	((counter++))
done
