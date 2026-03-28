#!/bin/bash
for i in {1..25} 
do 
	HAHAHA="ha ha ha. `ruby -e 'puts File.readlines("/usr/share/dict/words").sample'`"
	echo $HAHAHA
	say $HAHAHA
done