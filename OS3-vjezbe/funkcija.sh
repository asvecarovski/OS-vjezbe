#!/bin/bash

putanja=$1
echo "Putanja koju komprimiramo: "$putanja""
cd $putanja

function zip_html() {
	if [ -d "$putanja" ]; then
		echo "Putanja je ispravna"
		naziv="zipped.zip"
		zip -r "$naziv" "."
	else
		echo "Putanja nije ispravan direktorij"
		exit 1
	fi	
}

zip_html $putanja
