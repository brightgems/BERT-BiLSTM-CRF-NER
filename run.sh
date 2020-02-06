export BERT_BASE_DIR=/pretrain-models/bert/chinese_L-12_H-768_A-12

# TRAIN
bert-base-ner-train \
    -data ./data \
    -bert_config_file $BERT_BASE_DIR/bert_config.json \
    -init_checkpoint $BERT_BASE_DIR/bert_model.ckpt \
    -vocab_file $BERT_BASE_DIR/vocab.txt \
    -output_dir bert_ner_demo \
    -num_train_epochs 3 \
    -lstm_size 128 \
    -num_layers 1 \
    -save_summary_steps 10 \
    -save_checkpoints_steps 10 \
    -learning_rate 2e-6 \
    -dropout_rate 1 \
    -batch_size 32 

