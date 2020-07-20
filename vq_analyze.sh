for mode in trained random; do
    for subset in english english_triplets; do
        for encoding in z indices; do
            out_dir=submission/flickr8k/$subset/val/$encoding/$mode/encodings
            mkdir -p $out_dir
            if [ mode == 'trained' ]; then
                python encode.py \
                    checkpoint=checkpoints/2019english/model.ckpt-500000.pt \
                    out_dir=$out_dir \
                    dataset=flickr8k/$subset \
                    encoding=$encoding
            else
                python encode.py \
                    out_dir=$out_dir \
                    dataset=flickr8k/$subset \
                    encoding=$encoding
            fi
        done
    done
done
