#!/bin/bash
#
echo "Setup run Docker with Apache AGE a pgSQL Cypther Graph Database"
#
docker pull sorrell/apache-age:latest
docker run -it -e POSTGRES_PASSWORD=mypasswrd -p5431:5432 sorrell/apache-age:latest
#
