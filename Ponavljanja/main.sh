#!/bin/bash

if [[ "$#" == 0 || "$#" -gt 1 ]]; then
	echo "Potrebno prosljediti tocno jedan argument"
	exit 1
else
	arg=$1
	if [[ -e "$arg" && -f "$arg" ]]; then
		echo "Datoteka na putanji "$arg" postoji"
		cat $arg
	else echo "Datoteka na putanji "$arg" ne postoji"
	fi
fi
