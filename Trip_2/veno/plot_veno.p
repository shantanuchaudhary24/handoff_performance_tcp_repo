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
set title "RSSI For Veno"
set xlabel "Time (seconds)"
set ylabel "RSSI (dB)"

set arrow from 44,-100 to 44,-55 nohead ls 1
set arrow from 47,-100 to 47,-55 nohead ls 2

set arrow from 56,-100 to 56,-55 nohead ls 1
set arrow from 62,-100 to 62,-55 nohead ls 2

set arrow from 65,-100 to 65,-55 nohead ls 1
set arrow from 70,-100 to 70,-55 nohead ls 2

set arrow from 77,-100 to 77,-55 nohead ls 1
set arrow from 83,-100 to 83,-55 nohead ls 2

set arrow from 86,-100 to 86,-55 nohead ls 1
set arrow from 90,-100 to 90,-55 nohead ls 2

set arrow from 92,-100 to 92,-55 nohead ls 1
set arrow from 96,-100 to 96,-55 nohead ls 2

set arrow from 113,-100 to 113,-55 nohead ls 1
set arrow from 116,-100 to 116,-55 nohead ls 2

set arrow from 161,-100 to 161,-55 nohead ls 1
set arrow from 166,-100 to 166,-55 nohead ls 2

set arrow from 180,-100 to 180,-55 nohead ls 1
set arrow from 187,-100 to 187,-55 nohead ls 2

set arrow from 213,-100 to 213,-55 nohead ls 1
set arrow from 218,-100 to 218,-55 nohead ls 2

set arrow from 255,-100 to 255,-55 nohead ls 1
set arrow from 258,-100 to 258,-55 nohead ls 2

set arrow from 273,-100 to 273,-55 nohead ls 1
set arrow from 464,-100 to 464,-55 nohead ls 2

set arrow from 486,-100 to 486,-55 nohead ls 1
set arrow from 492,-100 to 492,-55 nohead ls 2

set arrow from 492,-100 to 492,-55 nohead ls 1
set arrow from 496,-100 to 496,-55 nohead ls 2
plot "veno_rf.txt" using 2:1 title "RSSI"
unset multiplot
