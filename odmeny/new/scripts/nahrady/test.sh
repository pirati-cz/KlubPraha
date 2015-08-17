#! /bin/bash
# Ze souboru odměny vytvoří soubor 
#
# Autoři:
# - Jakub Michálek

output="table.md"

row=$( echo "$1" | xargs)
col=$( echo "$2" | xargs)

echo "($row, $col)"
res=$(awk -F "," -v rowitem="$row" -v colitem="$col" 'BEGIN { FS = "," } ;{if ($1==rowitem && $2==colitem) {print $3}}' $output)
echo $res

