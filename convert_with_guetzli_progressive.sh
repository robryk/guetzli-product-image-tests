#!/bin/bash
FILES=./guetzli_images/*
for file in $FILES
do
  new_file="${file/guetzli_images/guetzli_prog_images}"
  echo "~/mozjpeg/jpegtran < $file > $new_file"
  ~/mozjpeg/jpegtran < $file > $new_file
done
