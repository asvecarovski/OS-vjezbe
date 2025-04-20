niz=(index.html index.js helpers.js style.css)

for element in "${niz[@]}"; do
	touch $element
	echo "Datoteka $element je stvorena"
done
