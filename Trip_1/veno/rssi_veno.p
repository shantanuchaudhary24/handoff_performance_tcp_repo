set autoscale
set title "RSSI For Veno"
set xlabel "Time (seconds)"
set ylabel "RSSI (dB)"
set style data lines
set xtics 25
plot "/home/shantanu/Project/Data_1/veno/veno_rf.txt" using 2:1 title "RSSI"
