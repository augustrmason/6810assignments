# plot file for diffeq_test_exp_back
set timestamp

set xlabel 'h'
set ylabel 'Error'

set title 'Comparing Differential Equation Algorithms - Relative Error of Variable h'

#new stuff to plot relative error
set xrange [0.001: 1]
set logscale xy
set key bottom right
set format y "10^{%L}"
#(abs(($x-$y)/$y)

plot \
  "diffeq_test_h.dat" using ($1):(abs(($2-$4)/$4)) title 'Euler', \
  "diffeq_test_h.dat" using ($1):(abs(($3-$4)/$4)) title '4th order Runge-Kutta'
  #"diffeq_test.dat" using ($1):($4) title 'exact'

set out "diffeq_test_h.ps"
set terminal postscript color
replot
