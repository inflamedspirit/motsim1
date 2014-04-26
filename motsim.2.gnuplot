
set multiplot

set size 0.5, 0.5
set origin 0.0, 0.5
plot "data2" u 0:1 w l t "x", "data2" u 0:2 w l t "y", "data2" u 0:3 w l t "z"

set size 0.5, 0.5
set origin 0.0, 0.0
plot "data2" u 0:4 w l t "vx", "data2" u 0:5 w l t "vy", "data2" u 0:6 w l t "vz"

set size 0.5, 0.5
set origin 0.5, 0.5
set yrange [-0.2:1.2]
plot "data2" u 0:9 w l t "Atom State"

set size 0.5, 0.5
set origin 0.5, 0.0
set yrange [*:*]
plot "data2" u 0:7 w l t "Radial Position", "data2" u 0:8 w l t "Radial Velocity"