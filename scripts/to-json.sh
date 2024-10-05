#!/bin/bash

COMPLETE_DARKNESS_LEVEL_INDICES=(0 1 2 3 4 5 6 7 8 10 11 12 13 14 15 16 17 18 19 20 21 22 23)

for i in ${COMPLETE_DARKNESS_LEVEL_INDICES[@]}
do
  echo level $i

  SOURCE=$COMPLETE_DARKNESS_PKWARE_TEST_FILES/arx-fatalis/level$i
  TARGET=$COMPLETE_DARKNESS_OUTPUT_DIR/graph/levels/level$i

  if [ ! -d $TARGET ]; then
    mkdir -p $TARGET
  fi

  if [ ! -f $TARGET/level$i.llf.unpacked ]; then
    cp $SOURCE/level$i.llf.unpacked $TARGET/level$i.llf.unpacked
  fi

  cat $TARGET/level$i.llf.unpacked | arx-convert --from=llf --to=json > $TARGET/level$i.llf.json
done

echo "done"
