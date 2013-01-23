set terminal postscript enhanced color portrait "Times-Roman, 6"
set output "s1Orb_1.ps"

set xrange[24.0:40.0]
set yrange[-0.1:0.8]
set size 0.5, 0.2
set origin 0.0, 0.6
set title '1s orbital'

f(x) = 1.0/sqrt(pi)*exp(-abs(32.0-x))

plot 'orbital1.line' using 2:5 w l lt 1 lc 1 lw 0.5 title 'iteration 1',\
'orbital1.line' using 2:(f($2)) w l lt 1 lc 3 lw 0.5 title 'exact', \
'orbital1.line' using 2:($5-f($2)) w l lt 1 lc 5 lw 0.5 title 'error'

set output "s1Orb_2.ps"

plot 'orbital2.line' using 2:5 w l lt 1 lc 1 lw 0.5 title 'iteration 2',\
'orbital2.line' using 2:(f($2)) w l lt 1 lc 3 lw 0.5 title 'exact', \
'orbital2.line' using 2:($5-f($2)) w l lt 1 lc 5 lw 0.5 title 'error'

set output "s1Orb_3.ps"

plot 'orbital3.line' using 2:5 w l lt 1 lc 1 lw 0.5 title 'iteration 3',\
'orbital3.line' using 2:(f($2)) w l lt 1 lc 3 lw 0.5 title 'exact', \
'orbital3.line' using 2:($5-f($2)) w l lt 1 lc 5 lw 0.5 title 'error'

set output "s1Orb_4.ps"

plot 'orbital4.line' using 2:5 w l lt 1 lc 1 lw 0.5 title 'iteration 4',\
'orbital4.line' using 2:(f($2)) w l lt 1 lc 3 lw 0.5 title 'exact', \
'orbital4.line' using 2:($5-f($2)) w l lt 1 lc 5 lw 0.5 title 'error'

set output "s1Orb_5.ps"

plot 'orbital5.line' using 2:5 w l lt 1 lc 1 lw 0.5 title 'iteration 5',\
'orbital5.line' using 2:(f($2)) w l lt 1 lc 3 lw 0.5 title 'exact', \
'orbital5.line' using 2:($5-f($2)) w l lt 1 lc 5 lw 0.5 title 'error'
