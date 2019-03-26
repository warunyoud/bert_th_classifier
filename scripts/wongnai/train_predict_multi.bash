export WONGNAI_DIR=data/wongnai_post
export OUTPUT_DIR=output/wongnai_multi
export BERT_BASE_DIR=model/multi_cased_L-12_H-768_A-12

python bert/run_classifier.py \
  --task_name=wongnai \
  --do_train=true \
  --do_predict=true \
  --do_lower_case=false \
  --data_dir=$WONGNAI_DIR \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=32 \
  --learning_rate=5e-5 \
  --num_train_epochs=2.0 \
  --output_dir=$OUTPUT_DIR