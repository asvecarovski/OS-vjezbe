#!/bin/bash

putanja=$1
aps_putanja=$2

if [ $# = 2 ]; then
	if [ -d "$putanja" ]; then
		sum=0
		for item in "$putanja"/*; do
			if [ -f "$item" ]; then
			((sum++))
			fi
		done
	else
		echo "Ne postoji direktorij na putanji"
		exit 2
	fi
else
	echo "Treba unijeti samo 2 argumenta"
	exit 1
fi

echo "Skripta je završila"
echo "Ukupan broj datoteka: "$sum"" > "$aps_putanja"/broj_datoteka_1.txt
