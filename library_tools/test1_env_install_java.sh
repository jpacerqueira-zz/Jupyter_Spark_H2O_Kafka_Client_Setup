#!/usr/bin/env bash
#
#########sudo apt install oracle-java8-installer
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update && apt-get install -y \
    openjdk-8-jre-headless \
    openjdk-8-jdk \
    openjdk-11-jre-headless \
    apt install openjdk-11-jdk 
#
# Install alternative Oracle Java
#mkdir -p $HOME/java
#cp /mnt/c/Users/joci/Downloads/jdk-8u221-linux-x64.tar.gz $HOME/java
#cp /mnt/c/Users/joci/Downloads/jce_policy-8.zip $HOME/java
#cp /mnt/c/Users/joci/Downloads/jdk-8u221-linux-x64.tar.gz $HOME/java

#cp /mnt/c/Users/joci/Downloads/install-java-master.zip .
#unzip install-java-master.zip
#cp $HOME/install-java-master/*.sh  $HOME/java
#chmod +x $HOME/java/*.sh 
#cp $HOME/java/*.sh $HOME
##### DOESN'T WORK ##### yes | sudo -E .$HOME/java/install_java.sh -f $HOME/java/jdk-8u221-linux-x64.tar.gz  /usr/lib/jvm
#sudo bash -x ./java/install-java.sh -f /home/joci/java/jdk-8u221-linux-x64.tar.gz /usr/lib/jvm
#
# INSTALL JAVA ORACLE KNode DockerFile
# 
# Workarround for big files broken into max. 23MB file size zip
#
cat $HOME/java/jdk-8u221-linux-x64.tar.zip.0* > $HOME/java/jdk-8u221-linux-x64.tar.zip
cd $HOME/java
unzip jdk-8u221-linux-x64.tar.zip
cd $HOME
## execute ORACLE JAVA Standard installation
sudo mkdir -p /usr/lib/jvm/
echo 'y\ny\ny\ny\n' | sudo bash -x $HOME/java/install-java.sh -f $HOME/java/jdk-8u221-linux-x64.tar.gz /usr/lib/jvm
#
