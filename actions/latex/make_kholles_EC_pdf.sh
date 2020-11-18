#!/bin/bash

set -e

echo "Creating output directory $OUT_DIR..."
[ ! -e $OUT_DIR ] &&  mkdir --parent $OUT_DIR

echo "Compiling compilation with pdflatex !"
cd EC/

fileName="khec.tex"
main="main.tex"
d=`date +%d-%m-%Y` 
echo "Substituting version number ${GITHUB_SHA::7} in file $fileName..."
sed  -e "/-- Document version :/c -- Document version : ${GITHUB_SHA::7} -- le  $d" $fileName > $main

pdflatex $main 
pdflatex $main

echo "Copying result to PDF/"
outFile="main.pdf"
cp -f $outFile ../$OUT_DIR/colles_EC.pdf

echo "Removing temp files..."
rm -f main*
cd ..


echo "Compiling individuals with pdflatex !"

cd Colles
for DIR in $(ls -d */)
do
	./make_colles.sh "$DIR"
	[ ! -d ../$OUT_DIR/$DIR ] &&  mkdir ../$OUT_DIR/$DIR	
	cp -f $DIR/*.pdf ../$OUT_DIR/$DIR/
done 



