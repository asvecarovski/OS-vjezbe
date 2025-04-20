#!/bin/bash

for zapis in ./*; do
	if [ -d "$zapis" ]; then
		echo "Datoteka je: $zapis"
	fi
done

for zapis in ./*.js; do
	echo "Datoteka je: $(basename "$zapis")"
done
