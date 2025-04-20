#!/bin/bash

if [[ -n $1 && $1 == "admin" ]]; then
	ime=$HOSTNAME
	echo "Pozdrav, "$ime""
	ls -a
	chmod +x "$(pwd)/test.sh"
else
	echo "Niste admin"
	exit 1
fi

