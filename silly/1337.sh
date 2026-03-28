#!/bin/sh
cat /dev/urandom | hexdump -C | grep --color=always "13 37"
