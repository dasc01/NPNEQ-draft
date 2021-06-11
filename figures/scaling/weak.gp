set term pdf font "Helvetica Bold, 18" linewidth 1.5
set output "weak.pdf"

set style data linespoints

set key invert reverse top

set xlabel 'Atoms'
set ylabel 'Time per TDDFT step (sec)'

#set log x
#set log y

plot 'weak.dat' u 1:($2) t '' lt 7 lc 3, \
;

