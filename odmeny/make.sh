#!/bin/bash

for i in `seq 1 6`;
  do
    echo $i
    byro vycetka -y 2016 -m $i
    doc2pdf *.docx
    rm *.docx
  done 

byro sign *.pdf
mkdir -p vycetky
mv *_signed.pdf -t vycetky/
rm *.pdf 
