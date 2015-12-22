#!/bin/bash

echo "---
style:      brochure
tables:     true
toc-depth:  2
---" > README.md

link='https://redmine.pirati.cz/projects/praha/wiki/Strategick%C3%BD_pl%C3%A1n'
textlink=$link'.txt'

mkdir img
wget --quiet -r -nd -P img/ -A jpg,jpeg,gif,png,txt $link
#rm -R img/redmine.pirati.cz/
mv img/* .
rm -R img 
mv "Strategický_plán.txt" "main.md"
rm robots.txt

cat main.md >> README.md
rm main.md

byro-pdf README.md
rm *.jpg
rm *.png
rm *.md

#wget -O
