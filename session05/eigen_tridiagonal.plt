#gnuplot plot file: eigen_tridiagonal.plt
set terminal x11
set title 'Tridiagonal Eigen Values - 3D Harmonic Oscillator'
set xlabel 'R values'
set ylabel 'Eigen Value'
#set logscale
set key top left
set timestamp
plot "eigen_tridiagonal.dat" using 1:2 title 'Eigen Values' w l

set out "eigen_tridiagonal.ps"
set terminal postscript
replot
