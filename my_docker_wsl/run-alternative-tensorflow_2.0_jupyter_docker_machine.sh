#!/bin/bash
#
docker pull tensorflow/tensorflow:nightly-py3-jupyter
IMAGE_TSFLOW=$(docker image ls | grep tensorflow | awk -F' ' '{ print $1 }')
echo ${IMAGE_TSFLOW}
docker run -it -p 9003:8888 -v /Users/aim/Documents/Docker:/tf/ ${IMAGE_TSFLOW}:nightly-py3-jupyter 
#
