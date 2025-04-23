#!/bin/bash

putanja=$1
aps_putanja=$2

if [ $# = 2 ]; then
	if [ -d "$putanja" ]; then
		count=$(find "$putanja" -maxdepth 1 -type f | wc -l)
	else
		echo "Ne postoji direktorij na putanji"
		exit 2
	fi
else
	echo "Treba unijeti samo 2 argumenta"
	exit 1
fi

echo "Skripta je završila"
echo "Ukupan broj datoteka: "$count"" > "$aps_putanja"/broj_datoteka.txt
