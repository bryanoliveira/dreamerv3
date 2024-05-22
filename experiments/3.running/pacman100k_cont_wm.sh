#!/bin/bash
for seed in 176 594 907; do
    bash experiments/experiment.sh ./logdir/20240522_180000-mspacman_100k_${seed}_cont_wm --configs atari100k --seed ${seed} --task atari_ms_pacman --run.load_keys '^agent/(enc|dec|dyn|rew|con)' --run.load_skip_keys '^(replay|step)'
done

