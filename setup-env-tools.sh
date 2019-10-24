#!/bin/bash
#
# git clone https://github.com/jpacerqueira/Jupyter_Spark_H2O_Kafka_Client_Setup.git
#
#cd  ; cp library_tools/*.sh . ; bash -x anaconda_setup.sh
#
cd $HOME
#
nohup bash -x anaconda_setup.sh > $HOME/knode_ds.out 2> $HOME/knode_ds.err  
#
echo 'Sleep for 12 minutes'
sleep 720
echo 'knode_ds.out'
cat $HOME/knode_ds.out
echo 'knote_ds.err'
cat $HOME/knode_ds.err
sleep 1
#
