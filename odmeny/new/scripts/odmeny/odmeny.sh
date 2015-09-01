#! /bin/bash
# Ze souboru odměny vytvoří soubor 
#
# Autoři:
# - Jakub Michálek

# Prerequisites:
# Install: sudo pip3 install csvtomd
# sudo apt-get install gnuplot

file="report.md"
zastupitel=$(awk -F ":[ ]+" '/zastupitel/ {print $2}' < "$file")
obdobi=$(awk -F ":[ ]+" '/období/ {print $2}' < "$file")
pracdny=$(awk -F ":[ ]+" '/počet pracovních dnů/ {print $2}' < "$file")
user_id=$(awk -F ":[ ]+" '/user_id/ {print $2}' < "$file")

tasks="https://redmine.pirati.cz/projects/praha/time_entries.csv?c%5B%5D=spent_on&c%5B%5D=activity&c%5B%5D=issue&c%5B%5D=comments&c%5B%5D=hours&f%5B%5D=spent_on&f%5B%5D=user_id&f%5B%5D=hours&f%5B%5D=&op%5Bhours%5D=%3E%3D&op%5Bspent_on%5D=lm&op%5Buser_id%5D=%3D&utf8=%E2%9C%93&v%5Bhours%5D%5B%5D=3&v%5Buser_id%5D%5B%5D=4"

source="../../data/odmeny.csv"
output="report.md"
data="data.csv"
pivotdata="pivotdata.csv"
template="template.md"
title="Náhrada výdělku u zastupitelů hl. m. Prahy za Piráty"

