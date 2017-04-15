# plot file for diffeq_test_exp_back
set timestamp

set xlabel 't'
set ylabel 'y(t)'

set title 'Comparing Differential Equation Algorithms - Relative Error'

#new stuff to plot relative error
set xrange [.01: 3.1]
set logscale y
set key top left
set format y "10^{%L}"
#(abs(($x-$y)/$y)

plot \
  "diffeq_test.dat" using ($1):(abs(($2-$4)/$4)) title 'Euler', \
  "diffeq_test.dat" using ($1):(abs(($3-$4)/$4)) title '4th order Runge-Kutta'
  #"diffeq_test.dat" using ($1):($4) title 'exact'

set out "diffeq_test_h2.ps"
set terminal postscript color
replot
