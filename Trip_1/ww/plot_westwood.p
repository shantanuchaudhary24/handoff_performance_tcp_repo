set terminal png size 1980,1080 enhanced font "Helvetica" 20
set output "graph.png"
set autoscale
set style data lines
set xtics 25
set style line 1 lt 2 lc rgb "skyblue" lw 2
set style line 2 lt 2 lc rgb "purple" lw 2

set multiplot layout 2, 1
set title "Congestion Window Variation"
set xlabel "Time (seconds)"
set ylabel "Segment Size"

set arrow from 5,0 to 5,400 nohead ls 1
set arrow from 13,0 to 13,400 nohead ls 2

set arrow from 18,0 to 18,400 nohead ls 1
set arrow from 20,0 to 20,400 nohead ls 2

set arrow from 240,0 to 240,400 nohead ls 1
set arrow from 243,0 to 243,400 nohead ls 2

set arrow from 249,0 to 249,400 nohead ls 1
set arrow from 252,0 to 252,400 nohead ls 2

set arrow from 315,0 to 315,400 nohead ls 1
set arrow from 318,0 to 318,400 nohead ls 2

set arrow from 360,0 to 360,400 nohead ls 1
set arrow from 377,0 to 377,400 nohead ls 2

set arrow from 384,0 to 383,400 nohead ls 1
set arrow from 393,0 to 393,400 nohead ls 2

set arrow from 402,0 to 402,400 nohead ls 1
set arrow from 408,0 to 408,400 nohead ls 2

set arrow from 435,0 to 435,400 nohead ls 1
set arrow from 443,0 to 443,400 nohead ls 2

set arrow from 460,0 to 460,400 nohead ls 1
set arrow from 474,0 to 474,400 nohead ls 2

set arrow from 623,0 to 623,400 nohead ls 1
set arrow from 649,0 to 649,400 nohead ls 2

set arrow from 659,0 to 659,400 nohead ls 1
set arrow from 660,0 to 660,400 nohead ls 2

set arrow from 662,0 to 662,400 nohead ls 1
set arrow from 667,0 to 667,400 nohead ls 2

set arrow from 672,0 to 672,400 nohead ls 1
set arrow from 674,0 to 674,400 nohead ls 2

set arrow from 680,0 to 680,400 nohead ls 1
set arrow from 685,0 to 685,400 nohead ls 2

set arrow from 698,0 to 698,400 nohead ls 1
set arrow from 701,0 to 701,400 nohead ls 2

set arrow from 734,0 to 734,400 nohead ls 1
set arrow from 736,0 to 736,400 nohead ls 2

plot "ww_tcp.txt" using 1:3 title "cwnd", "ww_tcp.txt" using 1:($4>=2147483647 ? 0 : $4) title "ssthresh"
unset arrow
set title "RSSI For Westwood"
set xlabel "Time (seconds)"
set ylabel "RSSI (dB)"

set arrow from 5,-110 to 5,-50 nohead ls 1
set arrow from 13,-110 to 13,-50 nohead ls 2

set arrow from 18,-110 to 18,-50 nohead ls 1
set arrow from 20,-110 to 20,-50 nohead ls 2

set arrow from 240,-110 to 240,-50 nohead ls 1
set arrow from 243,-110 to 243,-50 nohead ls 2

set arrow from 249,-110 to 249,-50 nohead ls 1
set arrow from 252,-110 to 252,-50 nohead ls 2

set arrow from 315,-110 to 315,-50 nohead ls 1
set arrow from 318,-110 to 318,-50 nohead ls 2

set arrow from 360,-110 to 360,-50 nohead ls 1
set arrow from 377,-110 to 377,-50 nohead ls 2

set arrow from 384,-110 to 383,-50 nohead ls 1
set arrow from 393,-110 to 393,-50 nohead ls 2

set arrow from 402,-110 to 402,-50 nohead ls 1
set arrow from 408,-110 to 408,-50 nohead ls 2

set arrow from 435,-110 to 435,-50 nohead ls 1
set arrow from 443,-110 to 443,-50 nohead ls 2

set arrow from 460,-110 to 460,-50 nohead ls 1
set arrow from 474,-110 to 474,-50 nohead ls 2

set arrow from 623,-110 to 623,-50 nohead ls 1
set arrow from 649,-110 to 649,-50 nohead ls 2

set arrow from 659,-110 to 659,-50 nohead ls 1
set arrow from 660,-110 to 660,-50 nohead ls 2

set arrow from 662,-110 to 662,-50 nohead ls 1
set arrow from 667,-110 to 667,-50 nohead ls 2

set arrow from 672,-110 to 672,-50 nohead ls 1
set arrow from 674,-110 to 674,-50 nohead ls 2

set arrow from 680,-110 to 680,-50 nohead ls 1
set arrow from 685,-110 to 685,-50 nohead ls 2

set arrow from 698,-110 to 698,-50 nohead ls 1
set arrow from 701,-110 to 701,-50 nohead ls 2

set arrow from 734,-110 to 734,-50 nohead ls 1
set arrow from 736,-110 to 736,-50 nohead ls 2

plot "ww_rf.txt" using 2:1 title "RSSI"
unset multiplot
