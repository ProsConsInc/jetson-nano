#!/bin/bash
set -eu
cd thirdparty/openpose
mkdir build
cd build
cmake ..
make -j4
sudo make -j4 install
