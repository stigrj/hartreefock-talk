set terminal postscript enhanced color portrait "Times-Roman,14"
set output "coulombScaling.ps"

set xrange [0:200]
set yrange [0:300]
set size 0.8,0.4

set origin 0.0,0.5
set title 'Coulomb potential'
set ylabel 'Time in seconds'
set xlabel 'Number of atoms'
plot 'coulombScaling.dat' using 1:2 w lp lt 2 lc 0 lw 4 notitle

set output "exchangeScaling.ps"
set xrange [0:250]
set yrange [0:70000]
set title 'Hartree-Fock exhange'
plot 'coulombScaling.dat' using 6:7 w lp lt 2 lc 0 lw 4 notitle
