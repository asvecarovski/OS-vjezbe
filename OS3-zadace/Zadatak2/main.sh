#!/bin/bash

broj=$1

if [[ "$broj" -gt 1 && "$broj" -lt 10 ]]; then
	touch brojevi.txt
	niz=()
	for (( i=1; i<="$broj"; i++ )); do
		niz+="$i"
	done
	echo "$niz" > brojevi.txt	
else
	echo "Broj mora biti u rasponu od 1 do 10"
	exit
fi
