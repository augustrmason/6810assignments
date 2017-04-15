# plot file for diffeq_oscillations
set timestamp

set title 'Oscillations h =0.01'


# plot of kinetic energy and potential energy versus time
set xlabel 't'
set ylabel 'energy'
plot "diffeq_oscillations.dat" using ($1):($4) title 'KE(t)' with lines, \
     "diffeq_oscillations.dat" using ($1):($5) title 'PE(t)' with lines

set out "diffeq_oscillations4.ps"
set terminal postscript color
replot
pause -1
