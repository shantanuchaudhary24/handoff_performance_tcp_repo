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

set title "Sequence Number vs Time"
set xlabel "Time (seconds)"
set ylabel "Sequence Number (bytes)"
set style data points

set arrow from 5,2.680234915e+9 to 5,2.716313717e+9 nohead ls 1
set arrow from 13,2.680234915e+9 to 13,2.716313717e+9 nohead ls 2

set arrow from 18,2.680234915e+9 to 18,2.716313717e+9 nohead ls 1
set arrow from 20,2.680234915e+9 to 20,2.716313717e+9 nohead ls 2

set arrow from 240,2.680234915e+9 to 240,2.716313717e+9 nohead ls 1
set arrow from 243,2.680234915e+9 to 243,2.716313717e+9 nohead ls 2

set arrow from 249,2.680234915e+9 to 249,2.716313717e+9 nohead ls 1
set arrow from 252,2.680234915e+9 to 252,2.716313717e+9 nohead ls 2

set arrow from 315,2.680234915e+9 to 315,2.716313717e+9 nohead ls 1
set arrow from 318,2.680234915e+9 to 318,2.716313717e+9 nohead ls 2

set arrow from 360,2.680234915e+9 to 360,2.716313717e+9 nohead ls 1
set arrow from 377,2.680234915e+9 to 377,2.716313717e+9 nohead ls 2

set arrow from 384,2.680234915e+9 to 383,2.716313717e+9 nohead ls 1
set arrow from 393,2.680234915e+9 to 393,2.716313717e+9 nohead ls 2

set arrow from 402,2.680234915e+9 to 402,2.716313717e+9 nohead ls 1
set arrow from 408,2.680234915e+9 to 408,2.716313717e+9 nohead ls 2

set arrow from 435,2.680234915e+9 to 435,2.716313717e+9 nohead ls 1
set arrow from 443,2.680234915e+9 to 443,2.716313717e+9 nohead ls 2

set arrow from 460,2.680234915e+9 to 460,2.716313717e+9 nohead ls 1
set arrow from 474,2.680234915e+9 to 474,2.716313717e+9 nohead ls 2

set arrow from 623,2.680234915e+9 to 623,2.716313717e+9 nohead ls 1
set arrow from 649,2.680234915e+9 to 649,2.716313717e+9 nohead ls 2

set arrow from 659,2.680234915e+9 to 659,2.716313717e+9 nohead ls 1
set arrow from 660,2.680234915e+9 to 660,2.716313717e+9 nohead ls 2

set arrow from 662,2.680234915e+9 to 662,2.716313717e+9 nohead ls 1
set arrow from 667,2.680234915e+9 to 667,2.716313717e+9 nohead ls 2

set arrow from 672,2.680234915e+9 to 672,2.716313717e+9 nohead ls 1
set arrow from 674,2.680234915e+9 to 674,2.716313717e+9 nohead ls 2

set arrow from 680,2.680234915e+9 to 680,2.716313717e+9 nohead ls 1
set arrow from 685,2.680234915e+9 to 685,2.716313717e+9 nohead ls 2

set arrow from 698,2.680234915e+9 to 698,2.716313717e+9 nohead ls 1
set arrow from 701,2.680234915e+9 to 701,2.716313717e+9 nohead ls 2

set arrow from 734,2.680234915e+9 to 734,2.716313717e+9 nohead ls 1
set arrow from 736,2.680234915e+9 to 736,2.716313717e+9 nohead ls 2

plot "ww_tcp.txt" using 1:2 title "Sequence Number"
unset multiplot
