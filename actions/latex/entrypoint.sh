#!/bin/bash

#set -e

#echo "Creating output directory $OUT_DIR..."
#mkdir --parent $OUT_DIR

#for fileName in *.tex *.cls; do
#    [ -f "$fileName" ] || break
#
#    echo "Substituting version number ${GITHUB_SHA::7} in file $fileName..."
#    sed -i -e "s/verSubstitution/${GITHUB_SHA::7}/" $fileName
#done

#for fileName in *.tex; do
#    [ -f "$fileName" ] || break
#
#    echo "Converting file $fileName to pdf..."
#    pdflatex $fileName
#done
echo "Compiling with pdflatex !"
cd EC/
pdflatex khec.tex

cp khec.pdf $OUT_DIR 2>/dev/null 

