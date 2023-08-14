python -m torch.distributed.launch --nproc_per_node=1 --master_port=12233 --use_env run_train.py \
--diff_steps 2000 \
--lr 0.0001 \
--learning_steps 10000 \
--save_interval 100 \
--seed 102 \
--noise_schedule sqrt \
--hidden_dim 128 \
--bsz 2048 \
--microbatch 96 \
--dataset qqp \
--data_dir {path-to-datasets} \
--vocab bert \
--seq_len 64 \
--schedule_sampler lossaware \
--notes test-qqp