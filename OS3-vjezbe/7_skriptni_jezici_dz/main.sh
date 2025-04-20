#!/bin/bash

if [[ -e "./index.html" && -e "./index.js" && -e "./style.css" ]]; then
	echo "Sve datoteke postoje"
else
	echo "Jedna ili više datoteka ne postoji"
fi

if [[ -n $1 && $1 == "ispis" ]]; then
	cat "./index.html"
	echo ""
	cat "./index.js"
	echo ""
	cat "./style.css"
else
	echo "Nema argumenta"
	exit 1
fi
