#!/bin/bash

DIR=$1

[ ! -d $DIR ] && echo "Directory $DIR does not exist !" && exit 1
cd $DIR
echo "Cleaning..."
EXTENSIONS="*exercise-body* *.out *.aux *.ps *.log *.dvi *.tex~ *.synctex.gz *.tex-e"
for EXT in $EXTENSIONS
do
	rm -f "$EXT" 
done

echo "Compiling..."
for FILE in $(ls *.tex)
 do
   pdflatex --interaction=batchmode "$FILE" 
done

exit 0
