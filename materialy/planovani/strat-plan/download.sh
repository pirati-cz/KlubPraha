#!/bin/bash

echo "---
style:      brochure
tables:     true
toc-depth:  2
---" > online.md

link='https://redmine.pirati.cz/projects/praha/wiki/Strategick%C3%BD_pl%C3%A1n'
textlink=$link'.txt'

mkdir img
wget --quiet -r -nd -P img/ -A jpg,jpeg,gif,png,txt $link
#rm -R img/redmine.pirati.cz/
mv img/* .
rm -R img 
cat "Strategický_plán.txt" >> "online.md"
rm robots.txt

byro-pdf online.md
rm *.jpg
rm *.txt
rm *.png
rm *.md

pdftk online.pdf vyhled/rozpoctovy-vyhled-ks-praha.pdf cat output plan.pdf
rm online.pdf

#wget -O
