#!/bin/bash

ime=$1
prezime=$2

function bash_function() {
	ime=$1
	prezime=$2
	
	echo "Zovem se "$ime" "$prezime""
}

bash_function Anja Svecarovski
bash_function $1 $2
