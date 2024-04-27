#!/bin/bash

for seed in 176 267 594 769 907; do
    bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3 --configs sldp --seed $seed --env.sldp.w 3 --run.steps 1e6
done
