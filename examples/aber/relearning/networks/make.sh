#!/bin/bash
REACTIONS=5
rm -r network*.pl 1> /dev/null 2> /dev/null
for file in ../models/aber*.pl
do
	echo Processing "${file/..\/models\//}"...
	rm temp.pl 1> /dev/null 2> /dev/null
	rm network_temp.pl 1> /dev/null 2> /dev/null
	rm network_${file/..\/aber\//} 1> /dev/null 2> /dev/null
	cp $file temp.pl 1> /dev/null 2> /dev/null
	swipl -g [process],process,halt 1> /dev/null 2> /dev/null
	sed "s:\\\=:!=:g" network_temp.pl > network${file/..\/models\/aber/}
	rm network_temp.pl 1> /dev/null 2> /dev/null
	rm temp.pl 1> /dev/null 2> /dev/null
	# read -p "Press [Enter] key to continue..."
done
echo Done.