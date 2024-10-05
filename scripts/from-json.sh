#!/bin/bash

# this script expects the json files to be present in the output dir
# if not, then run to-json.sh first

COMPLETE_DARKNESS_LEVEL_INDICES=(0 1 2 3 4 5 6 7 8 10 11 12 13 14 15 16 17 18 19 20 21 22 23)

for i in ${COMPLETE_DARKNESS_LEVEL_INDICES[@]}
do
  echo level $i

  TARGET=$COMPLETE_DARKNESS_OUTPUT_DIR/graph/levels/level$i

  cat $TARGET/level$i.llf.json | arx-convert --from=json --to=llf | implode -b -l > $TARGET/level$i.llf
done

echo "done"
