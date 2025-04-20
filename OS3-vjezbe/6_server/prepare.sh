#!/bin/bash

lista=()
for zapis in routes/*; do
	echo "Zapis je: $(basename "$zapis")"
	lista+=($(basename "$zapis"))
done

echo "Lista je: "${lista[@]}""
