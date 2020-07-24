for size in 128 256 512 1024; do
    for mode in trained random; do
        for subset in english english_triplets; do
            for encoding in z indices; do
                out_dir=submission/flickr8k/$subset/val/$size/$encoding/$mode/encodings
                mkdir -p $out_dir
                if [ $mode == 'trained' ]; then
                    python encode.py \
                        model.encoder.n_embeddings=$size \
                        checkpoint=checkpoints/2019english/$size/model.ckpt-500000.pt \
                        out_dir=$out_dir \
                        dataset=flickr8k/$subset \
                        encoding=$encoding
                else
                    python encode.py \
                        model.encoder.n_embeddings=$size \
                        out_dir=$out_dir \
                        dataset=flickr8k/$subset \
                        encoding=$encoding
                fi
            done
        done
    done
done
