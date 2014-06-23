#!/bin/bash
if [ $# -ne 1 ]
then
    echo "Please provide the number of batches that you would like to run..."
	echo "ex.: ./run 5"
else
	cd oldxhail > /dev/null 2> /dev/null
	mkdir -p temp > /dev/null 2> /dev/null
	if [ "$1" -lt "1" ]
	then 
	    echo "You can not run less batches than one, running just one batch..."
		max=1
	else
		max=$1
	fi
	name=`date +"../%Y.%d.%m-%T-v0.4.0.csv"`
	TIMEFORMAT=%3R
	echo -n "Problem" 
	echo -n "Problem" > $name
	for (( i=1; i<=$max; i++ ))
	do
		echo -n ",Batch-$i" 
		echo -n ",Batch-$i" >> $name
	done 
	echo ""
	echo "" >> $name
	for file in *.lp
	do
		echo -n "\"$file\""
		echo -n "\"$file\"" >> $name
		for (( i=1; i<=$max; i++ ))
		do
			value=`time ( oxhail $file > /dev/null 2> /dev/null ) 2>&1`
			echo -n ",$value"
			echo -n ",$value" >> $name
		done
		echo ""
		echo "" >> $name
	done
	rm -r temp > /dev/null 2> /dev/null
	cd .. > /dev/null 2> /dev/null
	echo "File '$name' with these results succesfully created!"
fi
