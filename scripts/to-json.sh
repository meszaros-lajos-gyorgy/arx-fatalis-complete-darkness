#!/bin/bash

cd /c/Program\ Files/Arx\ Libertatis/graph/levels

for i in 0 1 2 3 4 5 6 7 8 10 11 12 13 14 15 16 17 18 19 20 21 22 23
do
  echo level $i
  if [ ! -f level$i/level$i.llf.unpacked ]
  then
    cat level$i/level$i.llf | explode > level$i/level$i.llf.unpacked
  fi
  cat level$i/level$i.llf.unpacked | to-json --ext=llf > level$i/level$i.llf.json
done

echo "done"
