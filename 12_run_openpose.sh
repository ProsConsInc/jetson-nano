#!/bin/bash
set -eu
cd thirdparty/openpose
cp ../../scripts/openpose/render* .
# pre-rendering
./render_static_video.sh
