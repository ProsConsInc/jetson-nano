#!/bin/bash
set -eu
cd thirdparty/cmake
mkdir build
cd build
../configure
make -j4
sudo make -j4 install
