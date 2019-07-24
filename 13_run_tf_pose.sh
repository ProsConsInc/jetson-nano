#!/bin/bash
set -eu
cd thirdparty/tf-pose-estimation
python3 run_webcam.py --model=mobilenet_v2_small --resize=256x144
