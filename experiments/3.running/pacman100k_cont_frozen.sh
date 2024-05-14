#!/bin/bash
for seed in 176 594 907; do
    bash experiments/experiment.sh ./logdir/20240514_110000-mspacman_100k_${seed}_cont_wm_frozen --configs atari100k --seed ${seed} --task atari_ms_pacman --run.load_keys '^agent/(enc|dec|dyn|rew|con)' --run.disable_grad_keys '^agent/(enc|dec|dyn|rew|con)' --run.load_skip_keys '^(replay|step)'
    bash experiments/experiment.sh ./logdir/20240514_110000-mspacman_100k_${seed}_cont_policy_frozen --configs atari100k --seed ${seed} --task atari_ms_pacman --run.load_keys '^agent/(actor|critic)' --run.disable_grad_keys '^agent/(actor|critic)' --run.load_skip_keys '^(replay|step)'
done

