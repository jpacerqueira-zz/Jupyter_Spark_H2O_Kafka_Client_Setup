#!/usr/bin/env bash
#
# wget https://www.apache.org/dyn/closer.lua/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.7.tgz
wget http://apache.mirror.anlx.net/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.7.tgz
mkdir -p ~/spark/
mv spark-2.4.3-bin-hadoop2.7.tgz ~/spark
cd ~/spark
tar -zvxf spark-2.4.3-bin-hadoop2.7.tgz
#
