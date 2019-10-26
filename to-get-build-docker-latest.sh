#!/bin/bash
#
export IMG_LATEST=gftjoao/datascience-fullstack-v1.0:latest
docker pull $IMG_LATEST
docker image ls
docker run $IMG_LATEST
#
###### MOUNT VOLUME ### docker run -it -v ~/Downloads:/Downloads $IMG_LATEST bash
#
## docker exec -it $IMG_LATEST bash /bin/bash 
