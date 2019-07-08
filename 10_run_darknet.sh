#!/bin/bash
set -eu
cd thirdparty/darknet
# Nightmare
#wget http://pjreddie.com/media/files/vgg-conv.weights
#./darknet nightmare cfg/vgg-conv.cfg vgg-conv.weights data/scream.jpg 10
# YOLO v3
#wget https://pjreddie.com/media/files/yolov3.weights
#./darknet detect cfg/yolov3.cfg yolov3.weights data/dog.jpg
# Tiny YOLO v3
wget https://pjreddie.com/media/files/yolov3-tiny.weights
./darknet detector demo cfg/coco.data cfg/yolov3-tiny.cfg yolov3-tiny.weights

