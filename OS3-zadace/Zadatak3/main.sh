#!/bin/bash

cd screenshots

brojac=1
for  datoteka in ./*; do
	ime=$(basename "$datoteka")
	mv "$ime" "screenshot_"$brojac"_"$ime""
	((brojac++))
done

for datoteka in ./*; do
	echo "$(basename "$datoteka")"
done
