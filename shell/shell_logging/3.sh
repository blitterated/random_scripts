#!/bin/bash
echo "3.start"
>&2 echo "3.boom"
ruby 4.rb
>&2 echo "3.pow"
echo "3.end"
