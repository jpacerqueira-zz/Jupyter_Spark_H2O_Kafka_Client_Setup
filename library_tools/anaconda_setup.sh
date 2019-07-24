#!/usr/bin/env bash
cd 
mkdir anaconda3
cd anaconda3
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
sha256sum Anaconda3-2019.03-Linux-x86_64.sh
bash Anaconda3-2019.03-Linux-x86_64.sh
cd ..
conda activate base
bash install_packages.sh
