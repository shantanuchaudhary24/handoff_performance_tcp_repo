set terminal png size 1980,1080 enhanced font "Helvetica" 20
set output "graph2.png"
set autoscale
set style data lines
set xtics 25
set style line 1 lt 2 lc rgb "skyblue" lw 2
set style line 2 lt 2 lc rgb "purple" lw 2

set multiplot layout 2, 1
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

set title "Sequence Number vs Time"
set xlabel "Time (seconds)"
set ylabel "Sequence Number (bytes)"
set style data points

set arrow from 52,2.504713113e+9 to 52,2.603292561e+9 nohead ls 1
set arrow from 55,2.504713113e+9 to 55,2.603292561e+9 nohead ls 2

set arrow from 72,2.504713113e+9 to 72,2.603292561e+9 nohead ls 1
set arrow from 79,2.504713113e+9 to 79,2.603292561e+9 nohead ls 2

set arrow from 85,2.504713113e+9 to 85,2.603292561e+9 nohead ls 1
set arrow from 92,2.504713113e+9 to 92,2.603292561e+9 nohead ls 2

set arrow from 94,2.504713113e+9 to 94,2.603292561e+9 nohead ls 1
set arrow from 98,2.504713113e+9 to 98,2.603292561e+9 nohead ls 2

set arrow from 101,2.504713113e+9 to 101,2.603292561e+9 nohead ls 1
set arrow from 105,2.504713113e+9 to 105,2.603292561e+9 nohead ls 2

set arrow from 117,2.504713113e+9 to 117,2.603292561e+9 nohead ls 1
set arrow from 121,2.504713113e+9 to 121,2.603292561e+9 nohead ls 2

set arrow from 169,2.504713113e+9 to 169,2.603292561e+9 nohead ls 1
set arrow from 172,2.504713113e+9 to 172,2.603292561e+9 nohead ls 2

set arrow from 190,2.504713113e+9 to 190,2.603292561e+9 nohead ls 1
set arrow from 194,2.504713113e+9 to 194,2.603292561e+9 nohead ls 2

set arrow from 217,2.504713113e+9 to 217,2.603292561e+9 nohead ls 1
set arrow from 223,2.504713113e+9 to 223,2.603292561e+9 nohead ls 2

set arrow from 253,2.504713113e+9 to 253,2.603292561e+9 nohead ls 1
set arrow from 259,2.504713113e+9 to 259,2.603292561e+9 nohead ls 2

# CellID Unknown
set arrow from 270,2.504713113e+9 to 270,2.603292561e+9 nohead ls 1
set arrow from 451,2.504713113e+9 to 451,2.603292561e+9 nohead ls 2

set arrow from 472,2.504713113e+9 to 472,2.603292561e+9 nohead ls 1
set arrow from 475,2.504713113e+9 to 475,2.603292561e+9 nohead ls 2

set arrow from 477,2.504713113e+9 to 477,2.603292561e+9 nohead ls 1
set arrow from 480,2.504713113e+9 to 480,2.603292561e+9 nohead ls 2

plot "ww_tcp.txt" using 1:2 title "Sequence Number"
unset multiplot
