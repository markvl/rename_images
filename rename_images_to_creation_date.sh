#!/bin/bash

# Prevent "No such file or directory" warnings in the for loop.
shopt -s nullglob

if [ ! -d 'renamed' ]; then
    mkdir renamed
fi

for PIC in *.jpg *.png; do
    RAW_DATE=$(exiftool -q -q -p '$CreateDate' "$PIC")
    if [ -z "$RAW_DATE" ]; then
        RAW_DATE=$(exiftool -q -q -p '$FileModifyDate' "$PIC")
    fi
    if [ -z "RAW_DATE" ]; then
        echo "Could not rename $PIC"
        exit
    fi
    DATE=$(echo $RAW_DATE|sed 's/[: ]/-/g'|sed 's/\+.*//g')
    cp -i -p "$PIC" renamed/$DATE.jpg
done
