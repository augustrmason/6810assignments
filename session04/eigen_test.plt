set timestamp
set title 'N Sized Hilbert Matrix
set xlabel 'Matrix Size (N)'
set ylabel 'Time to Complete (s)'
set key left
set logscale xy
#set xrange [50:1000]
set yrange [0.05:1000]

f(x) = m*x +b
fit f(x) "eigen_test.dat" using (log10($1)):(log10($2)) via m, b

plot "eigen_test.dat" using ($1):($2) title 'Time to complete',\
      10**b * x**m title 'time = C*(dimension^3.5)'
      
set out "eigen_test_fit.ps"
set term postscript color enhanced
replot
