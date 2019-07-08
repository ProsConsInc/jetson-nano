#!/bin/bash
set -eu
cd thirdparty/darknet
export PATH=/usr/local/cuda/bin:$PATH
make -j4
