#!/bin/sh

echo $1
if [ -z "$1" ]; then
    echo "Copying from auto detected camera"
    gphoto2 --get-all-files --skip-existing 
else 
    echo "Copying from $1"
    gphoto2 --get-all-files --skip-existing --port $1
fi
    
