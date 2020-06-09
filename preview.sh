#!/bin/bash

killall claat 2>&1 > /dev/null

claat export index.md

pushd dist
claat serve &
popd

while :; do claat export index.md && pkill claaa && claat serve & ; sleep 10; done
