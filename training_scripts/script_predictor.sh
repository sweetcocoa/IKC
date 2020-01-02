python train.py --train ../data/DIV2K/DIV2K_train_HR/\
 --test ../data/DIV2K/DIV2K_valid_HR/ \
--train_kernel kernels/train/kernel_scale3_iso_dim10.pth \
--test_kernel kernels/test/kernel_scale3_iso_dim10.pth \
--lr 0.01 \
--ckpt ckpt/predictor/191009_2_predictor.pth \
--loss l2 \
--gpu 0 \
--validation_interval 500 \
--num_step 200000 \
--metric l2 \
--lr_decay 0.4 \
--use_flickr \
--mode PREDICTOR
