#!/bin/sh

for f in *.v; do

  echo "making $f ... "
  ../../src/verga/verga -q $f > ${f%.v}.out
done
