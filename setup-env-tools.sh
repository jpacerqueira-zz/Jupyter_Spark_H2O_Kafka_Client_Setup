#!/bin/bash
#
# git clone https://github.com/jpacerqueira/Jupyter_Spark_H2O_Kafka_Client_Setup.git
#
#cd  ; cp library_tools/*.sh . ; bash -x anaconda_setup.sh
#####################################################
######### INSTALL MISSING BASIC TOOLS ###############
sudo apt-get update
sudo apt install curl
sudo apt install wget
sudo apt install zip
sudo apt install unzip
#####################################################
#####################################################
#
cd $HOME
#
pwd
ls -laR
#
nohup bash -x anaconda_setup.sh > $HOME/knode_ds.out 2> $HOME/knode_ds.err 
#
echo 'Sleep for 3 minutes'
sleep 181
echo 'knode_ds.out'
cat $HOME/knode_ds.out
echo 'knote_ds.err'
cat $HOME/knode_ds.err
#
sleep 1
#
#service supervisor start
#/bin/bash
#exit $?
#
