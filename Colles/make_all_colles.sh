#!/bin/bash

for DIR in $(ls -d */)
do
	echo "Compiling $DIR"
        ./make_colles.sh "$DIR"
done
