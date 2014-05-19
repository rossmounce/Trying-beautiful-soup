#!/bin/bash
docmd="exiftool -h -charset utf8 -xmp:description='$2'  $1"
eval "$docmd"