#!/bin/bash
TIMEFORMAT=%3R
echo -n "Biased"
for K in {1,2,4,8,16,32,40}
do
	echo -n ",Learn$K"
done
echo ""
for N in {0,1,3,7,15,31,63,127,215}
do
	echo -n network$N
	for K in {1,2,4,8,16,32,40}
	do
		value=`time ( java -jar /Library/Xhail/xhail.jar -b -m -c /Library/Clasp/clasp -g /Library/Gringo/gringo theory.pl networks_aaa/network$N.pl experiments_aaa/learnW$K.pl 1> temp.txt 2> temp.txt ) 2>&1`
		answers=`grep "Answers     : " temp.txt`
		echo -n ",$value/${answers/"Answers     : "/}"
	done
	echo "" 
done
rm temp.txt 1> /dev/null 2> /dev/null
