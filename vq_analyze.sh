run=0
for seed in 123 1837493790 2147483647; do
    for size in 32 64 128 256 512 1024; do
        for mode in trained random; do
            for subset in english english_triplets; do
                for encoding in z indices; do
                    out_dir=submission/flickr8k/r$run/$subset/val/$size/$encoding/$mode/encodings
                    mkdir -p $out_dir
                    if [ "$mode" = "trained" ]; then
                        checkpoint=checkpoints/2019english/$size/$seed/model.ckpt-500000.pt \
                    else
                        checkpoint=checkpoints/2019english/$size/$seed/model.ckpt-0.pt \
                    fi
                    python encode.py \
                        model.encoder.n_embeddings=$size \
                        checkpoint=$checkpoint \
                        out_dir=$out_dir \
                        dataset=flickr8k/$subset \
                        encoding=$encoding
                done
            done
        done
    done
    run=$((run+1))
done
