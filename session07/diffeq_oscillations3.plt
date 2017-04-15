# plot file for diffeq_oscillations
set timestamp

set title 'Oscillations h=0.01'


# plot the potential
set xlabel 'x'
set ylabel 'V(x)'
plot "diffeq_oscillations.dat" using ($2):($5) title 'V(x)' with lines

set out "diffeq_oscillations3.ps"
set terminal postscript color
replot
pause -1

