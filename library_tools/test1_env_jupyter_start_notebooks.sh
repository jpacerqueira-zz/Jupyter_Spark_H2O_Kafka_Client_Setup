#!/usr/bin/env bash
# USING OPTION : pip install findspark

# user access active for user:userclass initiation services in hadoop
#########################################################################################
#export KRB5CCNAME=/tmp/krb5cc_$(id -u)
#########################################################################################
#kinit -kt ~/.keytabs/$(whoami).keytab $(whoami)/chpbdaxx@BDAx.COMPANY.COM -c /tmp/krb5cc_$(id -u)
#klist /tmp/krb5cc_$(id -u)

# Spark.1.6 
#echo "spark.1.6"
#export SPARK_HOME=/opt/cloudera/parcels/CDH/lib/spark

# Spark.2.4.3
echo "spark.2.4.3"
export SPARK_HOME=/home/joci/spark/spark-2.4.3-bin-hadoop2.7
export JAVA_HOME=/usr/bin/java/
export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS='notebook'
export PYSPARK_PYTHON=/home/joci/anaconda3/bin/python

# workarround h2o for http://localhost in notebook session
# unset http_proxy
# unset https_proxy

mkdir -p ~/notebooks/
cd ~/notebooks/

rm jupyter.log nohup.out 
nohup  ~/anaconda3/bin/jupyter notebook --port 9003 --no-browser --ip=0.0.0.0  2>jupyter.log &
#
