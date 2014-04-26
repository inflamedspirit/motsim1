set term x11
set multiplot

#if ! exists(data) exit;
      

set size 0.5, 0.5
set origin 0.0, 0.5
plot data u 0:1 w l t "x", data u 0:2 w l t "y", data u 0:3 w l t "z"

set size 0.5, 0.5
set origin 0.0, 0.0
plot data u 0:4 w l t "vx", data u 0:5 w l t "vy", data u 0:6 w l t "vz"

set size 0.25, 0.25
set origin 0.75, 0.75
set yrange [-0.2:1.6]
plot data u 0:9 w l t "Atom State"
set yrange [*:*]

set size 0.25, 0.25
set origin 0.5, 0.5
plot data u 1:2 w l t "x vs y"
set origin 0.5, 0.75
plot data u 1:3 w l t "x vs z"
set origin 0.75, 0.5
plot data u 3:2 w l t "z vs y"

set size 0.5, 0.5
set origin 0.5, 0.0
set yrange [*:*]
plot data u 0:7 w l t "Radial Position", data u 0:8 w l t "Radial Velocity"
