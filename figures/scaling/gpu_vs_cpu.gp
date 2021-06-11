set term pdf font "Helvetica Bold, 18" linewidth 1.5
set output "gpu_vs_cpu.pdf"

set style data linespoints

set key invert reverse top

set title "192 atoms       " offset 0,-3

set xlabel 'Number of GPUs or number of CPU Sockets'
set ylabel 'Time per TDDFT step (sec)'

#set log x
#set log y

plot 'gpu_vs_cpu.dat' \
	   u 1:($2/10) t ' INQ GPU' lt 6 lc 1, \
	'' u 1:($3/10) t ' INQ CPU' lt 7 lc 2, \
;

