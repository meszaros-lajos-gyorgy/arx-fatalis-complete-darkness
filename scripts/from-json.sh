#!/bin/bash

cd /c/Program\ Files/Arx\ Libertatis/graph/levels

for i in 0 1 2 3 4 5 6 7 8 10 11 12 13 14 15 16 17 18 19 20 21 22 23
do
  echo level $i
  cat level$i/level$i.llf.json | from-json --ext=llf > level$i/level$i.llf.repacked
  cat level$i/level$i.llf.repacked | implode -b -l > level$i/level$i.llf
done

echo "done"
