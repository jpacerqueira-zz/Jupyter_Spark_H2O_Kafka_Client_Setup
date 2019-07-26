#!/usr/bin/env bash -xe
rm -rf  $HOME/tmpdir
mkdir $HOME/tmpdir
cd $HOME/tmpdir
curl http://127.0.0.1:54321/3/h2o-genmodel.jar > h2o-genmodel.jar
curl http://127.0.0.1:54321/3/Models.java/DeepLearning_grid_1_AutoML_20190726_110849_model_3 > DeepLearning_grid_1_AutoML_20190726_110849_model_3.java
echo ' (RUN AS):~$  javac -cp h2o-genmodel.jar -J-Xmx2g -J-XX:MaxPermSize=128m DeepLearning_grid_1_AutoML_20190726_110849_model_3.java '
#
