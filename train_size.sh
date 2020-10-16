for seed in 123 1837493790 2147483647; do
    for size in 32 64 128 256 512 1024; do
        checkpoint_dir="checkpoints/2019english/$size/$seed"
        mkdir -p $checkpoint_dir
        python train.py model.encoder.n_embeddings=$size \
            checkpoint_dir=$checkpoint_dir dataset=2019/english seed=$seed
    done
done
