#!/bin/bash

set -e

echo "Creating output directory $OUT_DIR..."
[ ! -e $OUT_DIR ] &&  mkdir --parent $OUT_DIR

echo "Compiling with pdflatex !"
cd EC/

fileName="khec.tex"
echo "Substituting version number ${GITHUB_SHA::7} in file $fileName..."
sed -i -e "s/xxxxxxV/${GITHUB_SHA::7}/" $fileName

pdflatex $fileName 
pdflatex $fileName
cd ..

echo "Copying result to PDF/"
cp -f EC/khec.pdf $OUT_DIR

