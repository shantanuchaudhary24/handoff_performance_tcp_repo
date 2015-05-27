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

plot "cubic_tcp.txt" using 1:3 title "cwnd", "cubic_tcp.txt" using 1:($4>=2147483647 ? 0 : $4) title "ssthresh"
unset arrow

set title "RSSI For Cubic"
set xlabel "Time (seconds)"
set ylabel "RSSI (dB)"
set xrange [0:525]

set arrow from 24,-120 to 24,-50 nohead ls 1
set arrow from 26,-120 to 26,-50 nohead ls 2

set arrow from 29,-120 to 29,-50 nohead ls 1
set arrow from 32,-120 to 32,-50 nohead ls 2

set arrow from 47,-120 to 47,-50 nohead ls 1
set arrow from 52,-120 to 52,-50 nohead ls 2

set arrow from 71,-120 to 71,-50 nohead ls 1
set arrow from 82,-120 to 82,-50 nohead ls 2

set arrow from 90,-120 to 90,-50 nohead ls 1
set arrow from 93,-120 to 93,-50 nohead ls 2

set arrow from 100,-120 to 100,-50 nohead ls 1
set arrow from 101,-120 to 101,-50 nohead ls 2

set arrow from 104,-120 to 104,-50 nohead ls 1
set arrow from 108,-120 to 108,-50 nohead ls 2

set arrow from 122,-120 to 122,-50 nohead ls 1
set arrow from 126,-120 to 126,-50 nohead ls 2

set arrow from 170,-120 to 170,-50 nohead ls 1
set arrow from 176,-120 to 176,-50 nohead ls 2

set arrow from 204,-120 to 204,-50 nohead ls 1
set arrow from 207,-120 to 207,-50 nohead ls 2

set arrow from 218,-120 to 218,-50 nohead ls 1
set arrow from 226,-120 to 226,-50 nohead ls 2

set arrow from 255,-120 to 255,-50 nohead ls 1
set arrow from 261,-120 to 261,-50 nohead ls 2

#Unknown Cell ID
set arrow from 276,-120 to 276,-50 nohead ls 1
set arrow from 325,-120 to 325,-50 nohead ls 2

set arrow from 333,-120 to 333,-50 nohead ls 1
set arrow from 336,-120 to 336,-50 nohead ls 2

set arrow from 377,-120 to 377,-50 nohead ls 1
set arrow from 383,-120 to 383,-50 nohead ls 2

set arrow from 392,-120 to 392,-50 nohead ls 1
set arrow from 400,-120 to 400,-50 nohead ls 2

set arrow from 410,-120 to 410,-50 nohead ls 1
set arrow from 413,-120 to 413,-50 nohead ls 2

set arrow from 441,-120 to 441,-50 nohead ls 1
set arrow from 443,-120 to 443,-50 nohead ls 2

plot "cubic_rf.txt" using 2:1 title "RSSI"
unset multiplot
