#!/bin/bash

set -x
set -e

export PYTHONUNBUFFERED="True"

LOG="experiments/logs/kitti_val_caffenet_rpn.txt.`date +'%Y-%m-%d_%H-%M-%S'`"
exec &> >(tee -a "$LOG")
echo Logging output to "$LOG"

<<<<<<< HEAD
#time ./tools/train_net.py --gpu $1 \
#  --solver models/CaffeNet/kitti_val/solver_rpn.prototxt \
#  --weights data/imagenet_models/CaffeNet.v2.caffemodel \
#  --imdb kitti_train \
#  --cfg experiments/cfgs/kitti_rpn.yml \
#  --iters 20000

time ./tools/test_net.py --gpu $1 \
  --def models/CaffeNet/kitti_val/test_rpn.prototxt \
  --net output/kitti/kitti_train/caffenet_fast_rcnn_rpn_kitti_iter_20000.caffemodel \
  --imdb kitti_val \
=======
time ./tools/train_net.py --gpu $1 \
  --solver models/CaffeNet/kitti_val/solver_rpn.prototxt \
  --weights data/imagenet_models/CaffeNet.v2.caffemodel \
  --imdb kitti_train \
  --cfg experiments/cfgs/kitti_rpn.yml \
  --iters 40000

time ./tools/test_net.py --gpu $1 \
  --def models/CaffeNet/kitti_val/test_rpn.prototxt \
  --net output/kitti/kitti_train/caffenet_fast_rcnn_rpn_kitti_iter_40000.caffemodel \
  --imdb kitti_trainval \
>>>>>>> 1a2a1c9f4b9ab4e8a8f4625cb670b9ffdc37db86
  --cfg experiments/cfgs/kitti_rpn.yml
