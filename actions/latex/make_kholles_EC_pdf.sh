#!/bin/bash

set -e

echo "Creating output directory $OUT_DIR..."
[ ! -e $OUT_DIR ] &&  mkdir --parent $OUT_DIR

echo "Compiling with pdflatex !"
cd EC/

fileName="khec.tex"
main="maint.tex"
d=`date +%d-%m-%Y` 
echo "Substituting version number ${GITHUB_SHA::7} in file $fileName..."
sed  -e "/-- Document version :/c -- Document version : ${GITHUB_SHA::7} -- le  $d/" $fileName > $main

pdflatex $main 
pdflatex $main
rm -f $main
cd ..

echo "Copying result to PDF/"
outFile="main.pdf"
cp -f EC/$outFile $OUT_DIR/colles_EC.pdf

