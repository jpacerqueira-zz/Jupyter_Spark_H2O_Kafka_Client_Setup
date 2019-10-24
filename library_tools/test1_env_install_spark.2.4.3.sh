#!/usr/bin/env bash
#
# wget https://www.apache.org/dyn/closer.lua/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.7.tgz
cd $HOME
wget http://apache.mirror.anlx.net/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.7.tgz
mkdir -p $HOME/spark/
mv spark-2.4.3-bin-hadoop2.7.tgz $HOME/spark
cd $HOME/spark
tar -zvxf spark-2.4.3-bin-hadoop2.7.tgz
# env
echo  'export PATH="home/joci/spark/spark-2.4.3-bin-hadoop2.7/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
#
# Force pyspark for Juoyter
pip install pyspark
#
