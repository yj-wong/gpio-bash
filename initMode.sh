#!/bin/bash

counter=0
while [ $counter -le 3 ]
do
	gpio mode $counter out
	gpio write counter 0
	((counter++))
done
