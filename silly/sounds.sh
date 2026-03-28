#!/bin/bash

for sound in $(ls -1 /System/Library/Sounds/)
do
  echo $sound
  afplay /System/Library/Sounds/$sound
done
