set terminal postscript enhanced color portrait "Times-Roman,11"
set output "SCFscaling_1.ps"

set multiplot
set yrange[0.0:30000.0]
set xrange[1.0:4.0]
set size 0.55,0.3
set origin 0.0,0.6
set title 'SCF cycle MRChem'
set key top left
set xlabel "N water molecules"
set ylabel "Time (sec)"

plot 'scaling.dat' using 1:3 w lp lt 2 lc 0 lw 3 title 'Canonical'

set origin 0.5,0.6
set yrange[0.0:3000.0]
set title 'SCF cycle DALTON'
unset ylabel
plot 'scaling.dat' using 1:7 w lp lt 2 lc 0 lw 3 title 'aug-cc-pV5Z', \
'scaling.dat' using 1:6 w lp lt 2 lc 3 lw 3 title 'aug-cc-pVQZ'


unset multiplot
set output "SCFscaling_2.ps"
set multiplot
set yrange[0.0:30000.0]
set xrange[1.0:4.0]
set size 0.55,0.3
set origin 0.0,0.6
set title 'SCF cycle MRChem'
set key top left
set xlabel "N water molecules"
set ylabel "Time (sec)"

plot 'scaling.dat' using 1:3 w lp lt 2 lc 0 lw 3 title 'Canonical', \
'scaling.dat' using 1:5 w lp lt 2 lc 3 lw 3 title 'Localized'

set origin 0.5,0.6
set yrange[0.0:3000.0]
set title 'SCF cycle DALTON'
unset ylabel
plot 'scaling.dat' using 1:7 w lp lt 2 lc 0 lw 3 title 'aug-cc-pV5Z', \
'scaling.dat' using 1:6 w lp lt 2 lc 3 lw 3 title 'aug-cc-pVQZ'

