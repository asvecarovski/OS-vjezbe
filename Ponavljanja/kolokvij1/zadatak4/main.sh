putanja=$1
putanja2=$2

if [ $# = 2 ]; then
	if [ ! -d "$putanja" ]; then
		echo "Nema direktorija na putanji"
		exit 2
	fi

	if [ -f "$putanja2" ]; then
		echo "Postoji datoteka na putanji"
		exit 3
	fi
else
	echo "Potrebno je staviti 2 argumenta"
	exit 1
fi

cd "$putanja"
zip -r "$putanja2" .

if [ $? = 0 ]; then
	echo "Uspjesno izvršeno"
else
	echo "Greška u izvršavanju zipa"
	exit 4
fi


