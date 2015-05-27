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

set title "Sequence Number vs Time"
set xlabel "Time (seconds)"
set ylabel "Sequence Number (bytes)"
set style data points
set yrange [0xb41ab37:0xd0bec69]
set arrow from 56,0xb41ab37 to 56,0xd0bec69 nohead ls 1
set arrow from 62,0xb41ab37 to 62,0xd0bec69 nohead ls 2

set arrow from 89,0xb41ab37 to 89,0xd0bec69 nohead ls 1
set arrow from 92,0xb41ab37 to 92,0xd0bec69 nohead ls 2

set arrow from 104,0xb41ab37 to 104,0xd0bec69 nohead ls 1
set arrow from 106,0xb41ab37 to 106,0xd0bec69 nohead ls 2

set arrow from 172,0xb41ab37 to 172,0xd0bec69 nohead ls 1
set arrow from 214,0xb41ab37 to 214,0xd0bec69 nohead ls 2

# Unknown Cell ID
set arrow from 242,0xb41ab37 to 242,0xd0bec69 nohead ls 1
set arrow from 512,0xb41ab37 to 512,0xd0bec69 nohead ls 2

set arrow from 537,0xb41ab37 to 537,0xd0bec69 nohead ls 1
set arrow from 543,0xb41ab37 to 543,0xd0bec69 nohead ls 2
plot "cubic_tcp.txt" using 1:2 title "Sequence Number"
unset multiplot
