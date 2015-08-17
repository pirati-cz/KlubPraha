#! /bin/bash
# Ze souboru odměny vytvoří soubor 
#
# Autoři:
# - Jakub Michálek

source="../../data/odmeny.csv"
output="table.md"
data="data.csv"

findValue () 
{ 
  awk -F "," -v rowitem="$row" -v colitem="$col" 'BEGIN { FS = "," } ;{if ($1==rowitem && $2==colitem) {print $3}}' $output
}


# Month,Date,Payer,PayerId,Payee,PayeeId,Amount,Claim,Source
# echo "Období|Zastupitel|Náhrada výdělku" > $output
# echo "----- | -------- |-------------: " >> $output
awk -F ','  'BEGIN {OFS=","} { if (tolower($8) == "náhrada výdělku")  print $1","$5","$7}' $source > $data

# cat $output
# Month|Payee|Amount

readarray colsep < <( cat $data | cut -f2 -d "," | sort | uniq ) # ze zastupitelů si uděláme sloupce
readarray rowsep < <( cat $data | cut -f1 -d "," | sort | uniq ) # z období si uděláme řádky

# hlavička tabulky
prvniradek=""
for col in "${colsep[@]}"
do
prvniradek="$prvniradek|$col"
done

#echo "$prvniradek" > $filtered

# tělo tabulky
for row in "${rowsep[@]}"
do

{
for col in "${colsep[@]}"
do

{
findValue "$row" "$col"
#radek="$radek|$col"
}
done
}
#echo $radek >> $output
done

findValue "2015-02" "Adam Zábranský"

#cat $output






