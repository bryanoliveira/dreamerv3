#!/bin/bash

for seed in 176 267 594 769 907; do
    bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w2 --configs sldp --seed $seed --env.sldp.w 2 --run.steps 5e4
done
