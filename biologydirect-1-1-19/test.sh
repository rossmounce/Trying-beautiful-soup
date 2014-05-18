#!/bin/bash
# Usage: dive into each subdirectory in working directory and wget the *jpg.txt file in each
#http://stackoverflow.com/questions/18773160/bash-script-loop-multiple-variables

#for i in `seq 1 to $( wc -l biologydirect-1-1-19-caps.txt )` ; do
	#cmd="exiftool -xmp:description='$caption' -E $f"
	#eval "$cmd" 

# sed '2q;d' FOR LINE 2
# FRED =$(sed '$iq;d' *caps.txt)
#Need to precede with sed 's/\'/`/g' *caps.txt

NUMOFLINES=$(wc -l < *caps.txt)
IMAGES=(~/workspace/mygithub/Trying-beautiful-soup/biologydirect-1-1-19/*.png)
#If there's a an apostrphe ''' in the figure caption it fucks-up the caption embed
#NEW IDEA write exiftool line as separate script with one 2 arguments (image filename, caption)

# $1 image filename
# $2 caption

#exiftool -xmp:description='$2' -E $1

echo $NUMOFLINES

echo ${IMAGES[0]}
echo ${IMAGES[1]}
echo ${IMAGES[2]}  #CORRECT SYNTAX!
echo ${IMAGES[3]}  #CORRECT SYNTAX! STARTS COUNTING FROM ZERO
echo "cheese"

#for line in `cat *caps.txt`; do
#	echo $line      
#	exiftool -xmp:description='$NUMOFLINES' -E $g	
#done
index=0
while read line ; do
	echo "$index"
	./doexif.sh ${IMAGES[$index]} "$line"
	#cmd="exiftool -xmp:description='$line' -E ${IMAGES[$index]}"
	#eval "$cmd" 
        #exiftool -xmp:description='$line' -E ${IMAGES[$index]}"
	let "index++"
done < "biologydirect-1-1-19-caps.txt" 

#http://stackoverflow.com/questions/11215088/bash-shell-script-two-variables-in-for-loop
#http://stackoverflow.com/questions/18773160/bash-script-loop-multiple-variables
#exiftool -xmp:description='$line' -E $g"
