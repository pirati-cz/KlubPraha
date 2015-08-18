
set boxwidth 0.9 relative
set style data histograms
set style histogram cluster
set style fill solid 1.0 border lt -1

set datafile separator ","


col_count=1
good_data=1
while (good_data){
   stats 'pivotdata.csv' u (valid(col_count))
   if ( STATS_max ){
      col_count = col_count+1
   } else {
      col_count = col_count-1
      good_data = 0
   }
}

set ytics 5000
set term png
set output 'graf.png'
set title "Náhrada výdělku u zastupitelů"
set key autotitle columnhead
set key outside bottom center
set xlabel "Období (měsíc)"
set ylabel "Náhrada výdělku od města (Kč)"
set yrange [0:20000]

plot for [COL=2:col_count:1] 'pivotdata.csv' using COL: xtic(1) with histogram

maxy = (GPVAL_Y_MAX * 1.5)
set yrange [0:maxy]

replot
