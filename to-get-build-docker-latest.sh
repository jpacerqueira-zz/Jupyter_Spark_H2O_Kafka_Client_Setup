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
### docker stop $MY_RUNNING_CONTAINER
##
##### MOUNT VOLUME LATEST RUN ### docker run -it -v ~/Downloads:/Downloads $MY_RUNNING_CONTAINER bash
#### 
#### MOUNT VOLUME WHILE RUNNING LATEST RUN 
##
## follow https://medium.com/kokster/mount-volumes-into-a-running-container-65a967bee3b5 
##
## docker run $IMG_LATEST
## docker ps | grep $IMG_LATEST
##
### df ~/Downloads
## 
#### $ docker ps | grep $IMG_LATEST | awk -F' ' '{ print $1 }'
#### c8df26c4f0cc
#### $ docker inspect --format {{.State.Pid}} $( docker ps | grep $IMG_LATEST | awk -F' ' '{ print $1 }' )
#### 70141
#### $ nsenter --target 70141 4417 --mount --uts --ipc --net --pid -- mount /dev/disk1s1 /tmpmounthost
#### -bash: nsenter: command not found  
##
## https://github.com/justincormack/nsenter1
#### docker run -it --rm --privileged --pid=host justincormack/nsenter1
##
## INSIDE CONTAINER
#### ls /tmpmounthost
#
