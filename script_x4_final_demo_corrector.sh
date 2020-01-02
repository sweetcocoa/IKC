python train_corrector.py --train ../data/DIV2K/DIV2K_train_HR/\
 --test ../data/DIV2K/DIV2K_valid_HR/ \
--train_kernel kernels/train/kernel_scale4_aniso_dim21.pth \
--test_kernel kernels/test_2/kernel_scale4_aniso_dim21.pth \
--lr 0.00001 \
--lr_decay 0.5 \
--lr_min 0.0000001 \
--lr_scheduler multi \
--optimizer radam \
--sftmd demo_face/sftmd/191113_x4_mutli_144_bs16_radam_ker21_jpegaug.pth \
--predictor demo_face/predictor/191113_x4_mutli_144_bs16_radam_ker21_jpegaug.pth \
--ckpt demo_face/corrector/191113_pair.pth \
--loss l2 \
--gpu 1 \
--validation_interval 300 \
--num_step 500000 \
--metric psnr \
--use_flickr \
--use_set5 \
--scale 4 \
--batch_size 16 \
--nf 64 \
--kernel_dim 21 \
--augment custom \
--valid_rate 0.005 \
--patch_size 144 \
--inter cubic
