#!/bin/bash
set -e # remove flag "u" for pythonpath
cd thirdparty/tf-pose-estimation
python3 run_webcam.py --model=mobilenet_v2_small --resize=256x144
