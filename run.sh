export BERT_BASE_DIR=/pretrain-models/bert/chinese_L-12_H-768_A-12

# TRAIN TINY
bert-base-ner-train \
    -data ./data/tiny \
    -bert_config_file $BERT_BASE_DIR/bert_config.json \
    -init_checkpoint $BERT_BASE_DIR/bert_model.ckpt \
    -vocab_file $BERT_BASE_DIR/vocab.txt \
    -output_dir saved_model \
    -num_train_epochs 30 \
    -lstm_size 128 \
    -num_layers 1 \
    -save_summary_steps 10 \
    -save_checkpoints_steps 10 \
    -learning_rate 1e-5 \
    -dropout_rate 0.5 \
    -batch_size 32 
