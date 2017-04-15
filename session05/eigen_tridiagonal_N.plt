#gnuplot plot file: eigen_tridiagonal_N.plt
set terminal x11
set title 'Lowest Eigen Values of Different N Values'
set xlabel 'N values'
set ylabel 'Lowest Eigen Values'
set logscale x
set yrange [1:2]
set key top right
set timestamp

f(x) = m*x + b
fit f(x) "eigen_tridiagonal_N.dat" using 1:2 via m,b
fit_title = sprintf("%-+4.8f*x %-+4.4f",m,b)
plot "eigen_tridiagonal_N.dat" using 1:2 title 'Rmax = 10',\
	m*x + b title fit_title

set out "eigen_tridiagonal_N.ps"
set terminal postscript color
replot
