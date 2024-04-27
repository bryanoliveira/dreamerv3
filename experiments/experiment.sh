#!/bin/bash

logdir=$1
mkdir -p "$logdir"
shift
python dreamerv3/train.py --logdir "$logdir" "$@" 2>&1 | tee "$logdir/logs.txt"