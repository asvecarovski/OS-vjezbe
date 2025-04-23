#!/bin/bash

prvi_argument=$1
drugi_argument=$2

if [ $# = 2 ]; then
        if [ -f *"$drugi_argument" ]; then
                for zapis in "$prvi_argument"/*; do
                        if [[ -f "$zapis" && "$zapis" == *"$drugi_argument" ]]; then
                        echo "Datoteka: "$(basename "$zapis")""
                        fi
                done
        else
                echo "Nema takvih datoteka"
        fi
else
        echo "Potrebno je unijeti točno 2 argumenta"
        exit
fi
