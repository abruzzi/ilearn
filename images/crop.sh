#!/bin/bash

FILE=$1
if [ x${FILE} = "x" ]
then
    echo "Usage: $0 filename"
    exit 1;
fi

temp="${FILE##*/}"
THUMBNAIL="${temp%.*}-cropped.jpg"

# convert -define jpge:size=420x280 ${FILE} -auto-orient -thumbnail 420x280 ${THUMBNAIL}
# mogrify -resize 420x280 -background "#cccccc" -gravity center -extent 420x280 -format jpg -path thumbs thumbs/*.jpg
