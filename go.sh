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
	TIMEFORMAT=%3R

	path=`pwd`
	cd examples > /dev/null 2> /dev/null
	for file in *.lp
	do
		name="../$file.txt"
		echo -n $file
		echo "" > $name
		for (( i=1; i<=$max; i++ ))
		do
			# values=$(time java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo $file >> $name 2>> $name)
			time java -jar /Library/Xhail/xhail.jar -c /Library/Clasp/clasp -g /Library/Gringo/gringo $file >> $name 2>> $name
			echo -n .
		done
		echo ""
	done	
	cd $path > /dev/null 2> /dev/null
	
	for match in real parsing abducing a.gringo a.clasp deducing inducing i.gringo i.clasp
	do
		target="$match.csv"
		echo -n "Problem" > $target
		for (( i=1; i<=$max; i++ ))
		do
			echo -n ",Batch-$i" >> $target
		done 
		echo "" >> $target
		for file in example1.lp.txt example2.lp.txt example3.lp.txt penguins_simple.lp.txt penguins_unfeasible.lp.txt penguins_weighted.lp.txt phone4_ded.lp.txt phone4_abd.lp.txt phone4_ind.lp.txt phone4_complex.lp.txt phone4_hard.lp.txt phone4_hardest.lp.txt 
		do
			if [ "$match" == "parsing" -o "$match" == "a.clasp" -o "$match" == "i.clasp" ]
			then
				num=7
			else
				num=6
			fi
			name="${file/.lp.txt/.lp}"
			echo -n "$name," >> $target
# cat $file | grep $match | cut -d " " -f $num | tr '.' ',' | tr '\n' 's' | sed -e 's/ss/s/g' | tr 's' ',' >> $target
			cat $file | grep $match | cut -d " " -f $num | tr '\n' 's' | sed -e 's/ss/,/g' >> $target
		done
		echo $target	
	done
	
	echo "Done."
fi
