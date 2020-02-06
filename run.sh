export BERT_BASE_DIR=/pretrain-models/bert/chinese_L-12_H-768_A-12

# TRAIN
bert-base-ner-train \
    -data ./data \
    -bert_config_file $BERT_BASE_DIR/bert_config.json \
    -init_checkpoint $BERT_BASE_DIR/bert_model.ckpt \
    -vocab_file $BERT_BASE_DIR/vocab.txt \
    -output_dir bert_ner_demo \
    -do_train \
    -num_train_epochs 5 \
    -lstm_size 128 \
    -num_layers 1 \
    -save_summary_steps 1 \
    -learning_rate 1e-5 \
    -dropout_rate 0.1 \

