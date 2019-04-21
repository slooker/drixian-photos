#!/bin/sh

while [ true ]
do
    sudo killall -9 PTPCamera > /dev/null
    IFS=$'\n' 
    lines=`gphoto2 --auto-detect | sed 1,2d | awk '{print $NF}'`
    for j in $lines
    do
        echo "Copying from $j"
        gphoto2 --get-all-files --skip-existing --port $j
        sleep 10
    done
done
