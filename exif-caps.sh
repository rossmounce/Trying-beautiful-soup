#!/bin/bash
# Usage: dive into each subdirectory in working directory and wget the *jpg.txt file in each

# Turning on the nullglob shell option
shopt -s nullglob

# Make list of all subfolders in working directory, save as pwd.txt
find * -maxdepth 0 -type d -exec bash -c "cd \"{}\"; pwd" \;  > pwd.txt

# Loop through pwd cd'ing into each directory then pdftotext all PDFs within each subdirectory
for i in $(cat pwd.txt); do
  cd $i 
  for f in *.tif
	do
	echo "downloading figures from $f"
	cmda="sed '$fq;d' "
	echo "the_cmda"
	echo "$cmda"
	caption = eval "$cmda"
	echo "the_caption"
	echo "$caption"
	#cmd="exiftool -xmp:description='$caption' -E $f"
	#eval "$cmd"
	done
done
