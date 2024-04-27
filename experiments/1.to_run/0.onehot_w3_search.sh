#!/bin/bash

for ratio in 16 32 256 512; do
    bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-onehot_w3_r$ratio --configs sldp --seed 637 --env.sldp.w 3 --run.steps 5e5 --run.train_ratio $ratio
done
