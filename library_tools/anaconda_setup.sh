#!/usr/bin/env bash -xe
cd $HOME
mkdir anaconda3
cd anaconda3
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
sha256sum Anaconda3-2019.03-Linux-x86_64.sh
yes | bash Anaconda3-2019.03-Linux-x86_64.sh
cd ..
conda activate base
bash install_packages.sh
####### NOT REQUIRED  ####### bash redirect-h2o.ai.as.9004.sh
mkdir -p $HOME/library_tools
mv *.sh $HOME/library_tools
