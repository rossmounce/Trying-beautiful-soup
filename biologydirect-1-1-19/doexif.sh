#!/bin/bash
docmd="exiftool -xmp:description='$2' -E $1"
eval "$docmd"