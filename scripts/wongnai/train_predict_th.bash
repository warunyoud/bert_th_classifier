export BPE_DIR=bpe/th_wiki_bpe
export WONGNAI_DIR=data/wongnai_review
export OUTPUT_DIR=output/wongnai_th
export BERT_BASE_DIR=model/bert_base_th

python bert/run_classifier.py \
  --task_name=wongnai \
  --do_train=true \
  --do_predict=true \
  --data_dir=$WONGNAI_DIR \
  --vocab_file=$BPE_DIR/th.wiki.bpe.op25000.vocab \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=32 \
  --learning_rate=5e-5 \
  --num_train_epochs=2.0 \
  --output_dir=$OUTPUT_DIR \
  --spm_file=$BPE_DIR/th.wiki.bpe.op25000.model \
  --thai_model=true
