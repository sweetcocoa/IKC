python train.py --train ../data/DIV2K/DIV2K_train_HR/\
 --test ../data/DIV2K/DIV2K_valid_HR/ \
--train_kernel kernels/train/kernel_scale4_iso_dim10.pth \
--test_kernel kernels/test_2/kernel_scale4_iso_dim10.pth \
--lr 0.0001 \
--lr_decay 0.5 \
--lr_min 0.0000001 \
--lr_scheduler multi \
--mode PREDICTOR \
--ckpt ckpt/predictor/191104_0_x4_lr_1e-4_bs16_patch256.pth \
--loss l2 \
--gpu 1 \
--validation_interval 1000 \
--num_step 150000 \
--metric l2 \
--use_flickr \
--use_set5 \
--use_urban100 \
--scale 4 \
--batch_size 16 \
--patch_size 256 \
--seed 960116 
