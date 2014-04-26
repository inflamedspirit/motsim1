#!/bin/bash
g++ -o motsim motsim.cpp
./motsim $1
gnuplot --persist -e "data='data1'; ttitle='Particle 1'" motsim.gnuplot
gnuplot --persist -e "data='data2'; ttitle='Particle 2'" motsim.gnuplot
gnuplot --persist -e "data='datad'; ttitle='Difference'" motsim.gnuplot