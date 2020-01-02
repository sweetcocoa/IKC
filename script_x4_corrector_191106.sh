python train_corrector.py --train ../data/DIV2K/DIV2K_train_HR/\
 --test ../data/DIV2K/DIV2K_valid_HR/ \
--train_kernel kernels/train/kernel_scale4_iso_dim10.pth \
--test_kernel kernels/test_2/kernel_scale4_iso_dim10.pth \
--lr 0.0001 \
--lr_decay 0.5 \
--lr_min 0.0000001 \
--lr_scheduler multi \
--optimizer radam \
--sftmd ckpt/sftmd/191022_0_x4_mutli_lr_1e-4_bs16.pth \
--predictor ckpt/predictor/191105_0_x4_lr_1e-4_bs16_patch256.pth \
--ckpt ckpt/corrector/191022_0_x4___191105_0_x4_191106_delta.pth \
--loss l2 \
--gpu 0 \
--validation_interval 500 \
--num_step 500000 \
--metric psnr \
--use_flickr \
--use_set5 \
--use_urban100 \
--scale 4 \
--batch_size 16 \
--nf 64 \
--patch_size 256
