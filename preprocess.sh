#!/usr/bin/bash

python preprocess_val.py in_dir=/home/bjrhigy/corpora/flickr8k dataset=flickr8k/english
python preprocess_val.py in_dir=/home/bjrhigy/dev/platalea/data/flickr8k_abx_wav/ dataset=flickr8k/english_triplets
