#!/bin/bash
FILES=policies/*
for f in $FILES
do
  if (! grep -q notenforce "$f")
   then
     echo "replace inform with enforce in" $f
     sed -i "s/inform/enforce/g" $f
  else
     echo "not replace inform with enforce in" $f
     sed -i "s/enforce/inform/g" $f
  fi
done
