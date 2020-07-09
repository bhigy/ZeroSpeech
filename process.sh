workon zrsc
python preprocess_with_val.py in_dir=/home/bjrhigy/corpora/flickr8k dataset=flickr8k/english
python encode_val.py checkpoint=checkpoints/2019english/model.ckpt-500000.pt out_dir=submission/flickr8k/english/val dataset=flickr8k/english
deactivate

conda activate zerospeech2020
zerospeech2020-evaluate flickr8k submission/ -o submission/flickr8k/eval.json -D ~/corpora/flickr8k
conda deactivate
