#!/bin/bash
#
docker-machine start default
curl -L https://raw.githubusercontent.com/citusdata/docker/master/docker-compose.yml > docker-compose.yml
COMPOSE_PROJECT_NAME=citus docker-compose up -d
#
