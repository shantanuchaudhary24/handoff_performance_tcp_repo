set terminal png size 1980,1080 enhanced font "Helvetica" 20
set output "graph.png"
set autoscale
set style data lines
set xtics 25
set style line 1 lt 2 lc rgb "skyblue" lw 2
set style line 2 lt 2 lc rgb "purple" lw 2
set multiplot layout 2,1

set title "Congestion Window Variation"
set xlabel "Time (seconds)"
set ylabel "Segment Size"

set arrow from 70,0 to 70,1600 nohead ls 1
set arrow from 80,0 to 80,1600 nohead ls 2

set arrow from 193,0 to 193,1600 nohead ls 1
set arrow from 223,0 to 223,1600 nohead ls 2

# Unknown Cell ID received in this interval
set arrow from 241,0 to 241,1600 nohead ls 1
set arrow from 502,0 to 502,1600 nohead ls 2

set arrow from 508,0 to 508,1600 nohead ls 1
set arrow from 529,0 to 529,1600 nohead ls 2

set arrow from 532,0 to 532,1600 nohead ls 1
set arrow from 539,0 to 539,1600 nohead ls 2

set arrow from 574,0 to 574,1600 nohead ls 1
set arrow from 587,0 to 587,1600 nohead ls 2


plot "veno_tcp.txt" using 1:3 title "cwnd", "veno_tcp.txt" using 1:($4>=2147483647 ? 0 : $4) title "ssthresh"
unset arrow
set title "RSSI For Veno"
set xlabel "Time (seconds)"
set ylabel "RSSI (dB)"
set xrange [0:700]

set arrow from 70,-200 to 70,-40 nohead ls 1
set arrow from 80,-200 to 80,-40 nohead ls 2

set arrow from 193,-200 to 193,-40 nohead ls 1
set arrow from 223,-200 to 223,-40 nohead ls 2

# Unknown Cell ID received in this interval
set arrow from 241,-200 to 241,-40 nohead ls 1
set arrow from 502,-200 to 502,-40 nohead ls 2

set arrow from 508,-200 to 508,-40 nohead ls 1
set arrow from 529,-200 to 529,-40 nohead ls 2

set arrow from 532,-200 to 532,-40 nohead ls 1
set arrow from 539,-200 to 539,-40 nohead ls 2

set arrow from 574,-200 to 574,-40 nohead ls 1
set arrow from 587,-200 to 587,-40 nohead ls 2

plot "veno_rf.txt" using 2:1 title "RSSI"
unset multiplot
