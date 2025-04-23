#!/bin/bash

putanja=$1

if [ "$#" = 1 ]; then
        if [ -d "$putanja" ]; then
                n=1
                m=1
                for item in "$putanja"/*; do
                        if [ -f "$item" ]; then
                                echo "Datoteka_"$n": "$(basename "$item")""
                                ((n++))
                        else
                                echo "Direktorij_"$m": "$(basename "$item")""
                                ((m++))
                        fi
                done
        else
                echo "Putanja treba biti direktorij"
                exit 2
        fi
else
        echo "Treba prosljediti tocno jedan argument"
        exit 1
fi
