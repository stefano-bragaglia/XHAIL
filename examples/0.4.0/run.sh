#!/bin/bash
if [ $# -ne 1 ]
then
    echo "Please provide the number of batches that you would like to run..."
	echo "ex.: ./run 5"
else
	if [ "$1" -lt "1" ]
	then 
	    echo "You can not run less batches than one, running just one batch..."
		max=1
	else
		max=$1
	fi
	name=`date +"%Y.%d.%m-%T-v0.4.0.csv"`
	series="Ex-0.4.0"
	TIMEFORMAT=%3R
	echo "Running a batch of $max tests on any '*.pl' problem"
	echo -n $series 
	echo -n $series > $name
	for (( i=1; i<=$max; i++ ))
	do
		echo -n ",Test-$i" 
		echo -n ",Test-$i" >> $name
	done 
	echo ""
	echo "" >> $name
	for file in *.pl
	do
		echo -n "\"$file\""
		echo -n "\"$file\"" >> $name
		for (( i=1; i<=$max; i++ ))
		do
			value=`time ( oxhail $file > /dev/null 2> /dev/null ) 2>&1`
			# value=`time ( java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo $file > /dev/null 2> /dev/null ) 2>&1`
			echo -n ",$value"
			echo -n ",$value" >> $name
		done
		echo ""
		echo "" >> $name
	done	
	echo "File '$name' with these results successfully created!"
fi
