#!/bin/bash

brojac=10
while [ $brojac -gt 0 ]; do
	echo "Brojac je: $brojac"
	((brojac--))
done
