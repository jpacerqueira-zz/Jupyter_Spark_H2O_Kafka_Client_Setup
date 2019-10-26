#!/bin/bash
#
export IMG_LATEST=gftjoao/datascience-fullstack-v1.0:latest
docker pull $IMG_LATEST
docker image ls
docker run $IMG_LATEST
#
###### MOUNT VOLUME ### docker run -it -v ~/Downloads:/Downloads $IMG_LATEST bash
#
## docker exec -it  $(docker ps -a | grep $IMG_LATEST |  awk -F' ' '{ print $1 }') /bin/bash 
#
##
#### export MY_RUNNING_CONTAINER=$(docker ps -a | grep $IMG_LATEST |  awk -F' ' '{ print $1 }' )
## 
### docker stop MY_RUNNING_CONTAINER
##
### MOUNT VOLUME LATEST RUN ### docker run -it -v ~/Downloads:/Downloads $MY_RUNNING_CONTAINER bash
##  
