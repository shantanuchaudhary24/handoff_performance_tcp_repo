set terminal png size 1980,1080 enhanced font "Helvetica" 20
set output "graph2.png"
set autoscale
set style data lines
set xtics 25
set style line 1 lt 2 lc rgb "skyblue" lw 2
set style line 2 lt 2 lc rgb "purple" lw 2
set multiplot layout 2,1 

set title "Congestion Window Variation"
set xlabel "Time (seconds)"
set ylabel "Segment Size"
set yrange [0:600]
set arrow from 24,0 to 24,600 nohead ls 1
set arrow from 26,0 to 26,600 nohead ls 2

set arrow from 29,0 to 29,600 nohead ls 1
set arrow from 32,0 to 32,600 nohead ls 2

set arrow from 47,0 to 47,600 nohead ls 1
set arrow from 52,0 to 52,600 nohead ls 2

set arrow from 71,0 to 71,600 nohead ls 1
set arrow from 82,0 to 82,600 nohead ls 2

set arrow from 90,0 to 90,600 nohead ls 1
set arrow from 93,0 to 93,600 nohead ls 2

set arrow from 100,0 to 100,600 nohead ls 1
set arrow from 101,0 to 101,600 nohead ls 2

set arrow from 104,0 to 104,600 nohead ls 1
set arrow from 108,0 to 108,600 nohead ls 2

set arrow from 122,0 to 122,600 nohead ls 1
set arrow from 126,0 to 126,600 nohead ls 2

set arrow from 170,0 to 170,600 nohead ls 1
set arrow from 176,0 to 176,600 nohead ls 2

set arrow from 204,0 to 204,600 nohead ls 1
set arrow from 207,0 to 207,600 nohead ls 2

set arrow from 218,0 to 218,600 nohead ls 1
set arrow from 226,0 to 226,600 nohead ls 2

set arrow from 255,0 to 255,600 nohead ls 1
set arrow from 261,0 to 261,600 nohead ls 2

#Unknown Cell ID
set arrow from 276,0 to 276,600 nohead ls 1
set arrow from 325,0 to 325,600 nohead ls 2

set arrow from 333,0 to 333,600 nohead ls 1
set arrow from 336,0 to 336,600 nohead ls 2

set arrow from 377,0 to 377,600 nohead ls 1
set arrow from 383,0 to 383,600 nohead ls 2

set arrow from 392,0 to 392,600 nohead ls 1
set arrow from 400,0 to 400,600 nohead ls 2

set arrow from 410,0 to 410,600 nohead ls 1
set arrow from 413,0 to 413,600 nohead ls 2

set arrow from 441,0 to 441,600 nohead ls 1
set arrow from 443,0 to 443,600 nohead ls 2

plot "cubic_tcp.txt" using 1:3 title "cwnd", "cubic_tcp.txt" using 1:4 title "ssthresh"

unset arrow

set title "Sequence Number vs Time"
set xlabel "Time (seconds)"
set ylabel "Sequence Number (bytes)"
set style data points
set yrange [0x62cbca1c:0x65628a2c]
set arrow from 24,0x62cbca1c to 24,0x65628a2c nohead ls 1
set arrow from 26,0x62cbca1c to 26,0x65628a2c nohead ls 2

set arrow from 29,0x62cbca1c to 29,0x65628a2c nohead ls 1
set arrow from 32,0x62cbca1c to 32,0x65628a2c nohead ls 2

set arrow from 47,0x62cbca1c to 47,0x65628a2c nohead ls 1
set arrow from 52,0x62cbca1c to 52,0x65628a2c nohead ls 2

set arrow from 71,0x62cbca1c to 71,0x65628a2c nohead ls 1
set arrow from 82,0x62cbca1c to 82,0x65628a2c nohead ls 2

set arrow from 90,0x62cbca1c to 90,0x65628a2c nohead ls 1
set arrow from 93,0x62cbca1c to 93,0x65628a2c nohead ls 2

set arrow from 100,0x62cbca1c to 100,0x65628a2c nohead ls 1
set arrow from 101,0x62cbca1c to 101,0x65628a2c nohead ls 2

set arrow from 104,0x62cbca1c to 104,0x65628a2c nohead ls 1
set arrow from 108,0x62cbca1c to 108,0x65628a2c nohead ls 2

set arrow from 122,0x62cbca1c to 122,0x65628a2c nohead ls 1
set arrow from 126,0x62cbca1c to 126,0x65628a2c nohead ls 2

set arrow from 170,0x62cbca1c to 170,0x65628a2c nohead ls 1
set arrow from 176,0x62cbca1c to 176,0x65628a2c nohead ls 2

set arrow from 204,0x62cbca1c to 204,0x65628a2c nohead ls 1
set arrow from 207,0x62cbca1c to 207,0x65628a2c nohead ls 2

set arrow from 218,0x62cbca1c to 218,0x65628a2c nohead ls 1
set arrow from 226,0x62cbca1c to 226,0x65628a2c nohead ls 2

set arrow from 255,0x62cbca1c to 255,0x65628a2c nohead ls 1
set arrow from 261,0x62cbca1c to 261,0x65628a2c nohead ls 2

#Unknown Cell ID
set arrow from 276,0x62cbca1c to 276,0x65628a2c nohead ls 1
set arrow from 325,0x62cbca1c to 325,0x65628a2c nohead ls 2

set arrow from 333,0x62cbca1c to 333,0x65628a2c nohead ls 1
set arrow from 336,0x62cbca1c to 336,0x65628a2c nohead ls 2

set arrow from 377,0x62cbca1c to 377,0x65628a2c nohead ls 1
set arrow from 383,0x62cbca1c to 383,0x65628a2c nohead ls 2

set arrow from 392,0x62cbca1c to 392,0x65628a2c nohead ls 1
set arrow from 400,0x62cbca1c to 400,0x65628a2c nohead ls 2

set arrow from 410,0x62cbca1c to 410,0x65628a2c nohead ls 1
set arrow from 413,0x62cbca1c to 413,0x65628a2c nohead ls 2

set arrow from 441,0x62cbca1c to 441,0x65628a2c nohead ls 1
set arrow from 443,0x62cbca1c to 443,0x65628a2c nohead ls 2
plot "cubic_tcp.txt" using 1:2 title "Sequence Number"
unset multiplot
