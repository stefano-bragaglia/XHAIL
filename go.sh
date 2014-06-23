#!/bin/bash
if [ $# -ne 1 ]
then
    echo "Please provide the number of batches that you would like to run..."
	echo "ex.: ./go.sh 5"
else
	if [ "$1" -lt "1" ]
	then 
	    echo "You can not run less batches than one, running just one batch..."
		max=1
	else
		max=$1
	fi
	path=`pwd`
	cd examples > /dev/null 2> /dev/null
	for file in *.lp
	do
		name="../$file.txt"
		echo -n $file
		echo "" > $name
		for (( i=1; i<=$max; i++ ))
		do
			java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo $file >> $name 2>> $name
			echo -n .
		done
		echo ""
	done	
	cd $path > /dev/null 2> /dev/null
	
	#for file in example1.lp.txt example2.lp.txt example3.lp.txt penguins_simple.lp.txt penguins_unfeasible.lp.txt phone4_ded.lp.txt phone4_abd.lp.txt phone4_ind.lp.txt phone4_complex.lp.txt phone4_hard.lp.txt 
	#do
	#	name=$($file/.lp.txt/.txt) 
	#	cat $file | grep abducing | cut -d " " -f 5 | tr '.' ',' | tr '\n' 's' | sed -e 's/ss/s/g' | tr 's' '\t' 
	#done
	
	echo "Done."
fi
