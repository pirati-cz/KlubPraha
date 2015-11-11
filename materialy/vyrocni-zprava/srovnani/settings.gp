set style fill solid 1.0 border lt -1

set datafile separator ","


set xrange [0:]

load 'YlOrRd.plt'

set title "Porovnání příjmů pražských politiků z peněz města a průměrné mzdy"
set key autotitle columnhead

plot 'srovnani.dat' using ($2*0.5):0:($2*0.5):(0.4):yticlabels(1) with boxxyerrorbars t '' ls 3, '' using ($2+5000):0:(gprintf("%.0f Kč",$2)) with labels

set parametric

mediancr = 21629
prumerpha = 35835

set arrow from mediancr, graph 0 to mediancr, graph 1 nohead ls 3
set label "Medián ČR = 21629 Kč" at mediancr+1000,1
set arrow from prumerpha, graph 0 to prumerpha, graph 1 nohead ls 4
set label "Průměr Praha = 35835 Kč" at prumerpha+1000,1.5
set xlabel "Průměrná měsíční odměna (v tis. Kč hrubého)"
unset parametric 
set term png size 1000,400
set output "srovnani.png"
set lmargin at screen 0.35
replot
