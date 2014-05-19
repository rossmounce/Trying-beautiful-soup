#!/bin/bash
for f in *.html
	do
	echo "started on $f"
	STEM=$(echo $f | sed 's/.....$//g' )
	mkdir $STEM
	cmd="grep -m1 'dc:identifier' $f | sed 's/<dc:identifier>info:doi/http:\/\/dx\.doi\.org/g' | sed 's/<\/dc:identifier>/ /g' > ./$STEM/doi.doi"
	eval $cmd
	done
