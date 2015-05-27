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

set arrow from 70,0 to 70,1600 nohead ls 1
set arrow from 80,0 to 80,1600 nohead ls 2

set arrow from 193,0 to 193,1600 nohead ls 1
set arrow from 223,0 to 223,1600 nohead ls 2

# Unknown Cell ID received in this interval
set arrow from 241,0 to 241,1600 nohead ls 1
set arrow from 502,0 to 502,1600 nohead ls 2

set arrow from 508,0 to 508,1600 nohead ls 1
set arrow from 529,0 to 529,1600 nohead ls 2

set arrow from 532,0 to 532,1600 nohead ls 1
set arrow from 539,0 to 539,1600 nohead ls 2

set arrow from 574,0 to 574,1600 nohead ls 1
set arrow from 587,0 to 587,1600 nohead ls 2


plot "veno_tcp.txt" using 1:3 title "cwnd", "veno_tcp.txt" using 1:($4>=2147483647 ? 0 : $4) title "ssthresh"
unset arrow

set title "Sequence Number vs Time"
set xlabel "Time (seconds)"
set ylabel "Sequence Number (bytes)"
set style data points

set arrow from 70,3.439733048e+9 to 70,3.478998094e+9 nohead ls 1
set arrow from 80,3.439733048e+9 to 80,3.478998094e+9 nohead ls 2

set arrow from 193,3.439733048e+9 to 193,3.478998094e+9 nohead ls 1
set arrow from 223,3.439733048e+9 to 223,3.478998094e+9 nohead ls 2

# Unknown Cell ID received in this interval
set arrow from 241,3.439733048e+9 to 241,3.478998094e+9 nohead ls 1
set arrow from 502,3.439733048e+9 to 502,3.478998094e+9 nohead ls 2

set arrow from 508,3.439733048e+9 to 508,3.478998094e+9 nohead ls 1
set arrow from 529,3.439733048e+9 to 529,3.478998094e+9 nohead ls 2

set arrow from 532,3.439733048e+9 to 532,3.478998094e+9 nohead ls 1
set arrow from 539,3.439733048e+9 to 539,3.478998094e+9 nohead ls 2

set arrow from 574,3.439733048e+9 to 574,3.478998094e+9 nohead ls 1
set arrow from 587,3.439733048e+9 to 587,3.478998094e+9 nohead ls 2

plot "veno_tcp.txt" using 1:2 title "Sequence Number"
unset multiplot
