#!/bin/bash

naziv_dir=$1
wd="$(pwd)"/"$naziv_dir"

if [ $# = 1 ]; then
	if [ ! -d "$wd" ]; then
		echo "Direktorij ne postoji"
		exit
	else
		cd $wd
	fi

	function zipper() {
		naziv="svi_zapisi.zip"
		zip -r "$naziv" "."
	}

else
	echo "Potrebno je proslijediti samo jedan argument"
	exit
fi

zipper $wd
