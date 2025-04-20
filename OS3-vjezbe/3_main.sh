#!/bin/bash

rd=$(pwd)
dat="$rd"/main.sh
test_dat="./test.sh"

if [ -x "$test_dat" ]; then
	echo "Datoteka "$test_dat" ima dozvolu za izvrsavanje"
else
	chmod +x "$test_dat"
fi

if [ -f "$dat" ]; then
	echo "Datoteka postoji na putanji: "$dat""
fi

echo "Prosljedjeni argumenti su: $@"

grad=$1
grad2=$2

if [[ $# == 0 ]]; then
	echo "Niste proslijedili niti jedan argument"
	exit 1
elif [[ $# == 1 ]]; then
	echo "Niste unijeli dovoljno argumenata"
	exit
else 
	echo "Unijeli ste previše argumenata"
	exit
fi

if [[ "$grad" == "Zagreb" && "$grad2" == "Osijek" && "$#" == 2 ]]; then
	echo "Pogodili ste dva grada"
else
	echo "Niste pogodili"
fi

