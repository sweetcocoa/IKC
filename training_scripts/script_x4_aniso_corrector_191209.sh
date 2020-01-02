python train_corrector.py --train ../data/DIV2K/DIV2K_train_HR/\
 --test ../data/DIV2K/DIV2K_valid_HR/ \
--train_kernel kernels/train/kernel_scale4_aniso_dim21.pth \
--test_kernel kernels/test_2/kernel_scale4_aniso_dim21.pth \
--lr 0.0001 \
--lr_decay 0.5 \
--lr_min 0.0000001 \
--lr_scheduler multi \
--sftmd ckpt/sftmd/191209_x4_mutli_144_bs16_radam_ker21_aniso.pth-161000 \
--predictor ckpt/predictor/191209_x4_mutli_144_bs16_radam_ker21_aniso.pth \
--ckpt ckpt/corrector/191209_x4_multi_aniso_pair-161000.pth \
--loss l2 \
--gpu 0 \
--optimizer radam \
--validation_interval 300 \
--num_step 500000 \
--metric psnr \
--use_flickr \
--use_set5 \
--scale 4 \
--batch_size 16 \
--nf 64 \
--patch_size 144 \
--kernel_dim 21 \
--augment default \
--valid_rate 0.1 \
--inter nearest
