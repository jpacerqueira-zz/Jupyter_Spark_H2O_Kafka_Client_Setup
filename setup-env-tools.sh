#!/bin/bash
#
# git clone https://github.com/jpacerqueira/Jupyter_Spark_H2O_Kafka_Client_Setup.git
#
#cd  ; cp library_tools/*.sh . ; bash -x anaconda_setup.sh
#
cd $HOME
#
bash -x anaconda_setup.sh 
#
sleep 1
service supervisor start
/bin/bash
