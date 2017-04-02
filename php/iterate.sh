#!/bin/bash

number=$1;
script="$2 $3 $4";

for i in $(seq 1 $number);
do
	$script;
	echo "Iteration $i $script"
done
