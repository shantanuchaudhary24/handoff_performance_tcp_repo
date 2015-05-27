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

set arrow from 56,0 to 56,900 nohead ls 1
set arrow from 62,0 to 62,900 nohead ls 2

set arrow from 89,0 to 89,900 nohead ls 1
set arrow from 92,0 to 92,900 nohead ls 2

set arrow from 104,0 to 104,900 nohead ls 1
set arrow from 106,0 to 106,900 nohead ls 2

set arrow from 172,0 to 172,900 nohead ls 1
set arrow from 214,0 to 214,900 nohead ls 2

# Unknown Cell ID
set arrow from 242,0 to 242,900 nohead ls 1
set arrow from 512,0 to 512,900 nohead ls 2

set arrow from 537,0 to 537,900 nohead ls 1
set arrow from 543,0 to 543,900 nohead ls 2

plot "cubic_tcp.txt" using 1:3 title "cwnd", "cubic_tcp.txt" using 1:4 title "ssthresh"

unset arrow
set title "RSSI For Cubic"
set xlabel "Time (seconds)"
set ylabel "RSSI (dB)"

set arrow from 56,-105 to 56,-55 nohead ls 1
set arrow from 62,-105 to 62,-55 nohead ls 2

set arrow from 89,-105 to 89,-55 nohead ls 1
set arrow from 92,-105 to 92,-55 nohead ls 2

set arrow from 104,-105 to 104,-55 nohead ls 1
set arrow from 106,-105 to 106,-55 nohead ls 2

set arrow from 172,-105 to 172,-55 nohead ls 1
set arrow from 214,-105 to 214,-55 nohead ls 2

# Unknown Cell ID
set arrow from 242,-105 to 242,-55 nohead ls 1
set arrow from 512,-105 to 512,-55 nohead ls 2

set arrow from 537,-105 to 537,-55 nohead ls 1
set arrow from 543,-105 to 543,-55 nohead ls 2

plot "cubic_rf.txt" using 2:1 title "RSSI"
unset multiplot
