set term pdf font "Helvetica Bold, 18" linewidth 1.5
set output "strong.pdf"

set style data linespoints

set key outside invert reverse bottom

set xlabel 'Number of GPUs'
set ylabel 'Time per TDDFT step (sec)'

set log x
set log y

plot 'scaling.dat' \
	   u 1:($2/10) t ' 32 atoms', \
	'' u 1:($3/10) t ' 72 atoms', \
	'' u 1:($4/10) t '108 atoms', \
	'' u 1:($5/10) t '192 atoms', \
	'' u 1:($6/10) t '256 atoms', \
	'' u 1:($7/10) t '512 atoms', \
	'' u 1:($8/10) t '640 atoms'  \
;

