#!/usr/bin/bash

#python preprocess_val.py in_dir=/home/bjrhigy/corpora/flickr8k dataset=flickr8k/english
#python encode_val.py checkpoint=checkpoints/2019english/model.ckpt-500000.pt out_dir=submission/flickr8k/english/val dataset=flickr8k/english

python preprocess_val.py in_dir=/roaming/gchrupal/verdigris/platalea.vq/data/flickr8k_abx_wav/ dataset=flickr8k/english_triplets
python encode_val.py checkpoint=checkpoints/2019english/model.ckpt-500000.pt out_dir=submission/flickr8k/english_triplets/val dataset=flickr8k/english_triplets
