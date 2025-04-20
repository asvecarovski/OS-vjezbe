#!/bin/bash

broj_zapisa=1
for zapis in ./*; do
	echo "Zapis je: "$broj_zapisa"_"$(basename "$zapis")""
	nd=$(basename "$zapis")
	mv "$nd" "$broj_zapisa"_"$nd"
	((broj_zapisa++))
done

echo "Broja datoteka/direktorija u trenutnom radnom direktoriju: "$((broj_zapisa-1))" i preimenovane su"
