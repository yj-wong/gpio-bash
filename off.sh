#!/bin/bash

counter=0
while [ $counter -le 3 ]
do
	gpio mode $counter in
	((counter++))
done
