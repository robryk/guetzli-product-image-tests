#!/bin/bash

ORIG_SIZE=$(expr $(cat images/* | wc -c) '/' '1024')

echo original $ORIG_SIZE kB
for DIR in guetzli_images moz_images guetzli_prog_images; do
  SIZE=$(expr $(cat $DIR/* | wc -c) '/' '1024')
  echo $DIR $SIZE kB, $(( ($ORIG_SIZE - $SIZE) * 100 / $ORIG_SIZE))% smaller
done
