#! /bin/bash
# Ze souboru odměny vytvoří soubor 
#
# Autoři:
# - Jakub Michálek

# Prerequisites:
# Install: sudo pip3 install csvtomd
# sudo apt-get install gnuplot

source="../../data/odmeny.csv"
output="report.md"
data="data.csv"
pivotdata="pivotdata.csv"
template="template.md"

pivotTable() {
  awk -F\, '
NR>1 { 
    if(!($1 in indicators)) { indicator[++types] = $1 }; indicators[$1]++  
    if(!($2 in countries)) { country[++num] = $2 }; countries[$2]++
    map[$1,$2] = $3 
}
END {
    printf "%s," ,"Zastupitel";
    for(ind=1; ind<=types; ind++) {
        printf "%s%s", sep, indicator[ind]; 
        sep = ","
    }
    print "";
    for(coun=1; coun<=num; coun++) {
        printf "%s", country[coun]
        for(val=1; val<=types; val++) {
            printf "%s%s", sep, map[indicator[val], country[coun]];
        }
        print ""
    }
}' $1
}

transposeTable() {
  awk -F\, '
{ 
    for (i=1; i<=NF; i++)  {
        a[NR,i] = $i
    }
}
NF>p { p = NF }
END {    
    for(j=1; j<=p; j++) {
        str=a[1,j]
        for(i=2; i<=NR; i++){
            str=str","a[i,j];
        }
        print str
    }
}' $1
}

# Month,Date,Payer,PayerId,Payee,PayeeId,Amount,Claim,Source

awk -F ','  'BEGIN {OFS=","} { if (tolower($8) == "náhrada výdělku")  print $1","$5","$7}' $source > $data

echo 'Období,Zastupitel,Částka (Kč)' | cat - $data > temp && mv temp $data

# export table to markdown

pivotTable $data > pivot.csv # generate pivot table in csv
transposeTable pivot.csv > $pivotdata
rm pivot.csv

table="`csvtomd $pivotdata`" # convert it to markdown

# add currency (Kč) and alignment (---:)
table="`echo "$table" | sed -re 's/(\s[0-9]+\s)(\s\s)/\1Kč/g' -e 's/(\|\s*\-+)\-/\1:/g'`"

# insert it into template
<$template awk -v table="$table" '
    {gsub(/^TMPTABLE$/, table); print}
' > $output

gnuplot "settings.gp" &> /dev/null







