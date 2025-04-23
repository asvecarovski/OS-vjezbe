#!/bin/bash

wd=/mnt/c/Users/anjas/OneDrive/Docs/GitHub/OS-vjezbe/Kolokvij1/zadatak_1/fipu_prva
putanja="$wd"/$1

if [ -d "$wd" ]; then
	if [ $# = 1 ]; then
		if [ -d "$putanja" ]; then
			for items in "$putanja"/*; do
				ime="$1"_scripts.zip
				cd "$putanja"
				zip -r "$ime" .
			done
		else
			echo "Ne postoji direktorij"
			exit 3
		fi
	else
		echo "Neispravan broj argumenata! Očekuje se 1 argument."
		exit 2
	fi
else
	echo "Direktorij "$1" ne postoji!"
	exit 1
fi

if [ $? = 0 ]; then
	echo "Datoteke iz direktorija "$wd" usjesno komprimirane u "$ime""
fi

mv "$putanja"/"$ime" "$wd"/"$ime"
