#!/bin/bash

for seed in 176 267 594 769 907; do
    bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-single_w4 --configs sldp_image --seed $seed --env.sldp.w 4 --run.steps 3e6
done