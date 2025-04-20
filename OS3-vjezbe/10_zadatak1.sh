#!/bin/bash

if [[ $# == 0 || $# -gt 1 ]]; then
	echo "Potrebno je proslijediti točno jedan argument"
	exit
else
	ABS_FILE_PATH=$1
	if [[ -e "$ABS_FILE_PATH" && -f "$ABS_FILE_PATH" ]]; then
		echo "Datoteka na putanji "$ABS_FILE_PATH" postoji"
		echo ""
		cat "$ABS_FILE_PATH"
	else
		echo "Datoteka na putanji "$ABS_FILE_PATH" ne postoji ili nije regularna datoteka"
	fi
fi
