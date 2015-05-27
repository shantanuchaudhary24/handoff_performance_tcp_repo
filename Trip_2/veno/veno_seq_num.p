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

set arrow from 44,0 to 44,200 nohead ls 1
set arrow from 47,0 to 47,200 nohead ls 2

set arrow from 56,0 to 56,200 nohead ls 1
set arrow from 62,0 to 62,200 nohead ls 2

set arrow from 65,0 to 65,200 nohead ls 1
set arrow from 70,0 to 70,200 nohead ls 2

set arrow from 77,0 to 77,200 nohead ls 1
set arrow from 83,0 to 83,200 nohead ls 2

set arrow from 86,0 to 86,200 nohead ls 1
set arrow from 90,0 to 90,200 nohead ls 2

set arrow from 92,0 to 92,200 nohead ls 1
set arrow from 96,0 to 96,200 nohead ls 2

set arrow from 113,0 to 113,200 nohead ls 1
set arrow from 116,0 to 116,200 nohead ls 2

set arrow from 161,0 to 161,200 nohead ls 1
set arrow from 166,0 to 166,200 nohead ls 2

set arrow from 180,0 to 180,200 nohead ls 1
set arrow from 187,0 to 187,200 nohead ls 2

set arrow from 213,0 to 213,200 nohead ls 1
set arrow from 218,0 to 218,200 nohead ls 2

set arrow from 255,0 to 255,200 nohead ls 1
set arrow from 258,0 to 258,200 nohead ls 2

# CellID Unknown
set arrow from 273,0 to 273,200 nohead ls 1
set arrow from 464,0 to 464,200 nohead ls 2

set arrow from 486,0 to 486,200 nohead ls 1
set arrow from 492,0 to 492,200 nohead ls 2

set arrow from 492,0 to 492,200 nohead ls 1
set arrow from 496,0 to 496,200 nohead ls 2


plot "veno_tcp.txt" using 1:3 title "cwnd", "veno_tcp.txt" using 1:($4>=2147483647 ? 0 : $4) title "ssthresh"
unset arrow

set title "Sequence Number vs Time"
set xlabel "Time (seconds)"
set ylabel "Sequence Number (bytes)"
set style data points
set arrow from 44,3.444716336e+9 to 44,3.546514688e+9 nohead ls 1
set arrow from 47,3.444716336e+9 to 47,3.546514688e+9 nohead ls 2

set arrow from 56,3.444716336e+9 to 56,3.546514688e+9 nohead ls 1
set arrow from 62,3.444716336e+9 to 62,3.546514688e+9 nohead ls 2

set arrow from 65,3.444716336e+9 to 65,3.546514688e+9 nohead ls 1
set arrow from 70,3.444716336e+9 to 70,3.546514688e+9 nohead ls 2

set arrow from 77,3.444716336e+9 to 77,3.546514688e+9 nohead ls 1
set arrow from 83,3.444716336e+9 to 83,3.546514688e+9 nohead ls 2

set arrow from 86,3.444716336e+9 to 86,3.546514688e+9 nohead ls 1
set arrow from 90,3.444716336e+9 to 90,3.546514688e+9 nohead ls 2

set arrow from 92,3.444716336e+9 to 92,3.546514688e+9 nohead ls 1
set arrow from 96,3.444716336e+9 to 96,3.546514688e+9 nohead ls 2

set arrow from 113,3.444716336e+9 to 113,3.546514688e+9 nohead ls 1
set arrow from 116,3.444716336e+9 to 116,3.546514688e+9 nohead ls 2

set arrow from 161,3.444716336e+9 to 161,3.546514688e+9 nohead ls 1
set arrow from 166,3.444716336e+9 to 166,3.546514688e+9 nohead ls 2

set arrow from 180,3.444716336e+9 to 180,3.546514688e+9 nohead ls 1
set arrow from 187,3.444716336e+9 to 187,3.546514688e+9 nohead ls 2

set arrow from 213,3.444716336e+9 to 213,3.546514688e+9 nohead ls 1
set arrow from 218,3.444716336e+9 to 218,3.546514688e+9 nohead ls 2

set arrow from 255,3.444716336e+9 to 255,3.546514688e+9 nohead ls 1
set arrow from 258,3.444716336e+9 to 258,3.546514688e+9 nohead ls 2

# CellID Unknown
set arrow from 273,3.444716336e+9 to 273,3.546514688e+9 nohead ls 1
set arrow from 464,3.444716336e+9 to 464,3.546514688e+9 nohead ls 2

set arrow from 486,3.444716336e+9 to 486,3.546514688e+9 nohead ls 1
set arrow from 492,3.444716336e+9 to 492,3.546514688e+9 nohead ls 2

set arrow from 492,3.444716336e+9 to 492,3.546514688e+9 nohead ls 1
set arrow from 496,3.444716336e+9 to 496,3.546514688e+9 nohead ls 2

plot "veno_tcp.txt" using 1:2 title "Sequence Number" pt 1 ps 1
unset multiplot
