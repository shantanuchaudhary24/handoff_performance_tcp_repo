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

set arrow from 52,0 to 52,250 nohead ls 1
set arrow from 55,0 to 55,250 nohead ls 2

set arrow from 72,0 to 72,250 nohead ls 1
set arrow from 79,0 to 79,250 nohead ls 2

set arrow from 85,0 to 85,250 nohead ls 1
set arrow from 92,0 to 92,250 nohead ls 2

set arrow from 94,0 to 94,250 nohead ls 1
set arrow from 98,0 to 98,250 nohead ls 2

set arrow from 101,0 to 101,250 nohead ls 1
set arrow from 105,0 to 105,250 nohead ls 2

set arrow from 117,0 to 117,250 nohead ls 1
set arrow from 121,0 to 121,250 nohead ls 2

set arrow from 169,0 to 169,250 nohead ls 1
set arrow from 172,0 to 172,250 nohead ls 2

set arrow from 190,0 to 190,250 nohead ls 1
set arrow from 194,0 to 194,250 nohead ls 2

set arrow from 217,0 to 217,250 nohead ls 1
set arrow from 223,0 to 223,250 nohead ls 2

set arrow from 253,0 to 253,250 nohead ls 1
set arrow from 259,0 to 259,250 nohead ls 2

# CellID Unknown
set arrow from 270,0 to 270,250 nohead ls 1
set arrow from 451,0 to 451,250 nohead ls 2

set arrow from 472,0 to 472,250 nohead ls 1
set arrow from 475,0 to 475,250 nohead ls 2

set arrow from 477,0 to 477,250 nohead ls 1
set arrow from 480,0 to 480,250 nohead ls 2

plot "ww_tcp.txt" using 1:3 title "cwnd", "ww_tcp.txt" using 1:($4>=2147483647 ? 0 : $4) title "ssthresh"
unset arrow

set title "RSSI For Westwood"
set xlabel "Time (seconds)"
set ylabel "RSSI (dB)"

set arrow from 52,-95 to 52,-50 nohead ls 1
set arrow from 55,-95 to 55,-50 nohead ls 2

set arrow from 72,-95 to 72,-50 nohead ls 1
set arrow from 79,-95 to 79,-50 nohead ls 2

set arrow from 85,-95 to 85,-50 nohead ls 1
set arrow from 92,-95 to 92,-50 nohead ls 2

set arrow from 94,-95 to 94,-50 nohead ls 1
set arrow from 98,-95 to 98,-50 nohead ls 2

set arrow from 101,-95 to 101,-50 nohead ls 1
set arrow from 105,-95 to 105,-50 nohead ls 2

set arrow from 117,-95 to 117,-50 nohead ls 1
set arrow from 121,-95 to 121,-50 nohead ls 2

set arrow from 169,-95 to 169,-50 nohead ls 1
set arrow from 172,-95 to 172,-50 nohead ls 2

set arrow from 190,-95 to 190,-50 nohead ls 1
set arrow from 194,-95 to 194,-50 nohead ls 2

set arrow from 217,-95 to 217,-50 nohead ls 1
set arrow from 223,-95 to 223,-50 nohead ls 2

set arrow from 253,-95 to 253,-50 nohead ls 1
set arrow from 259,-95 to 259,-50 nohead ls 2

set arrow from 270,-95 to 270,-50 nohead ls 1
set arrow from 451,-95 to 451,-50 nohead ls 2

set arrow from 472,-95 to 472,-50 nohead ls 1
set arrow from 475,-95 to 475,-50 nohead ls 2

set arrow from 477,-95 to 477,-50 nohead ls 1
set arrow from 480,-95 to 480,-50 nohead ls 2

plot "ww_rf.txt" using 2:1 title "RSSI"
unset multiplot
