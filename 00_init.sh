#!/bin/bash
set -eu
git submodule update --init --recursive
cd thirdparty/cmake
git checkout v3.14.5

cd ../..
patch -N thirdparty/jetson-nano-tools/install-tensorflow.sh < scripts/jetson-nano-tools/install-tensorflow.sh.patch
patch -N thirdparty/darknet/Makefile < scripts/darknet/Makefile.patch
patch -N thirdparty/darknet/src/image_opencv.cpp < scripts/darknet/image_opencv.cpp.patch
patch -N thirdparty/tf-pose-estimation/run_webcam.py < scripts/tf_pose/run_webcam.py.patch

sudo apt update
sudo apt upgrade
