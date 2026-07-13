#!/bin/bash
echo 1.start
>&2 echo 1.boom
ruby 2.rb
>&2 echo 1.pow
echo 1.end
