#!/bin/bash

for (( i=0; i<5; i++ )); do
	if [ $i = 2 ]; then
	continue
	fi
	echo "Brojac je: $i"
done

unset i

echo "Brojac izvan petlje je: $i"
