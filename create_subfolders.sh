#!/bin/bash
for f in *.html
	do
	echo "started on $f"
	STEM=$(echo $f | sed 's/.....$//g' )
	mkdir $STEM
	cmda="grep -m1 'dc:identifier' $f | sed 's/<dc:identifier>info:doi/http:\/\/dx\.doi\.org/g' | sed 's/<\/dc:identifier>/ /g' > ./$STEM/doi.doi"
	eval $cmda
	cmdb="grep 'dc:creator' $f | sed 's/<dc:creator>//g' | sed 's/<\/dc:creator>/ /g' > ./$STEM/authors.txt"
	eval $cmdb
	done
