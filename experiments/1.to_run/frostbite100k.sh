#!/bin/bash

for seed in 176 594 907; do # 267 769
    bash experiments/experiment.sh ./logdir/$(date "+%Y%m%d_%H%M%S")-frostbite_100k_$seed --configs atari100k --seed $seed --task atari_frostbite
done

