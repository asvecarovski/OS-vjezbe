#!/bin/bash

niz=(1 2 3 4 5)

for broj in "${niz[@]}"; do
	echo "Broj je: "$broj""
done

niz+=(6 7 8)

echo "Elementi niza su: ${niz[@]}"
echo "Broj elemenata niza su: ${#niz[@]}"
