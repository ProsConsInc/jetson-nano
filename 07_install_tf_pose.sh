#!/bin/bash
set -eu
sudo apt-get update

# Install library
pip3 install --upgrade cython
sudo apt-get -y install libopenblas-dev
sudo apt-get -y install liblapacke-dev
sudo apt-get -y install gfortran
sudo apt-get -y install llvm-7*
echo 'export PATH="/usr/lib/llvm-7/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
sudo apt-get -y install python3-scipy

pip3 install tqdm
pip3 install slidingwindow
pip3 install pycocotools

# Setup tf-pose-estimation
cd thirdparty
cd tf-pose-estimation/models/graph/cmu
bash download.sh
cd ../../../../
cd tf-pose-estimation/tf_pose/pafprocess
sudo apt-get -y install swig
swig -python -c++ pafprocess.i && python3 setup.py build_ext --inplace
cd ../../../tf-pose-estimation/

# Reference site
# https://toramamma.blogspot.com/2019/04/jetson-nano-tensorflowopenpose.html
