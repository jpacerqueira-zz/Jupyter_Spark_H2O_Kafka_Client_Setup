#!/bin/bash
#
docker info
docker login
docker tag python:latest  gftjoao/datascience-fullstack-v1.0:helloworld
docker push gftjoao/datascience-fullstack-v1.0:helloworld
#
#(base) joci@UKPC000117:~/my_docker$ docker tag python:latest  gftjoao/datascience-fullstack-v1.0:helloworld
#       (base) joci@UKPC000117:~/my_docker$ docker push gftjoao/datascience-fullstack-v1.0:helloworld
#       The push refers to repository [docker.io/gftjoao/datascience-fullstack-v1.0]
#       32f5ccb72413: Mounted from library/python
#       4ec770d3b6d2: Mounted from library/python
#       339cb66b7392: Mounted from library/python
#       1e827468edbb: Mounted from library/python
#       785186534686: Mounted from library/python
#       07efd2c6be7b: Mounted from library/python
#       ceb262f1fe29: Mounted from library/python
#       14ed28258a2c: Mounted from library/python
#       d7817c0e0675: Mounted from library/python
#       ffdc1ce49b57: Skipped foreign layer
#       70bba925263c: Skipped foreign layer
#       helloworld: digest: sha256:1d8cbba3008c64d6e4351ab558a3d7cdbd004566ce9ecd50980b87312903606c size: 2824
#