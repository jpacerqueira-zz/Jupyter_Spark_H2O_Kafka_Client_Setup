#!/bin/bash
#
# RUN_INSTALL=1 installs python libraries via Notebook
#
RUN_INSTALL=$1
docker pull tensorflow/tensorflow:nightly-py3-jupyter
IMAGE_TSFLOW=$(docker image ls | grep tensorflow | awk -F' ' '{ print $1 }')
echo ${IMAGE_TSFLOW}
#
#:-WSL-:# && #:-VBox-:#
FILE1=Setup-System-Java-Spark-h2o.ai-pyarrow.ipynb # # ipynb in test to load additional libraries
PWD1=$(cd .. ; pwd)
if [ "$RUN_INSTALL" == "1"  ]  && [ -f "${PWD1}/notebooks/${FILE1}" ]; then
    docker run -it -p 9003:8888 -v ${PWD1}/notebooks:/tf/notebooks_h2o ${IMAGE_TSFLOW}:nightly-py3-jupyter jupyter nbconvert --to notebook --execute --allow-errors --ExecutePreprocessor.timeout=180 /tf/notebooks_h2o/$FILE1 
else 
    docker run -it -p 9003:8888 -v ${PWD1}/notebooks:/tf/notebooks_h2o ${IMAGE_TSFLOW}:nightly-py3-jupyter
fi
#
