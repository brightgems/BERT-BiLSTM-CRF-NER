export BERT_CN_DIR=/pretrain-models/bert/chinese_L-12_H-768_A-12

# TRAIN TINY
bert-base-ner-train \
    -data ./data/tiny \
    -bert_config_file $BERT_CN_DIR/bert_config.json \
    -init_checkpoint $BERT_CN_DIR/bert_model.ckpt \
    -vocab_file $BERT_CN_DIR/vocab.txt \
    -output_dir saved_model \
    -num_train_epochs 100 \
    -lstm_size 128 \
    -num_layers 1 \
    -save_summary_steps 100 \
    -save_checkpoints_steps 100 \
    -learning_rate 5e-5 \
    -dropout_rate 0.5 \
    -batch_size 32 \
    -clean \
    -finetune

# TRAIN BASELINE
bert-base-ner-train \
    -data ./data/baseline \
    -bert_config_file $BERT_CN_DIR/bert_config.json \
    -init_checkpoint $BERT_CN_DIR/bert_model.ckpt \
    -vocab_file $BERT_CN_DIR/vocab.txt \
    -output_dir saved_model \
    -num_train_epochs 200 \
    -lstm_size 128 \
    -num_layers 1 \
    -save_summary_steps 100 \
    -save_checkpoints_steps 200 \
    -learning_rate 5e-5 \
    -dropout_rate 0.5 \
    -batch_size 32 \
    -max_steps_without_decrease 1000 \
    -clean \
    -finetune    
