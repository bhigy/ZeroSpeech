for size in 32 64 128 256 1024; do
    checkpoint_dir="checkpoints/2019english/$size"
    mkdir -p $checkpoint_dir
    python train.py model.encoder.n_embeddings=$size checkpoint_dir=$checkpoint_dir dataset=2019/english
done
