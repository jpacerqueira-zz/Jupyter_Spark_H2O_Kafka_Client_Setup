#!/usr/bin/env python
# coding: utf-8

# In[1]:


!apt-get install wget
!apt-get install tar
!apt-get install openjdk-8-jdk-headless -qq > /dev/null
!wget -q https://archive.apache.org/dist/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz
!tar xf spark-2.4.4-bin-hadoop2.7.tgz


# In[2]:


!pip install h2o


# In[3]:


!pip install findspark


# In[4]:


!pip install pyarrow


# In[5]:


!pip install pandas


# In[6]:


!pip install numpy


# In[7]:


!cat $HOME/.bashrc >> log.txt

# In[8]:


import subprocess 
!echo 'PATH=$HOME/spark-2.4.4-bin-hadoop2.7/bin:\$PATH' >> \$HOME/.bashrc 
!echo 'JAVA_HOME=/usr/lib/jvm/openjdk1.8.0_222' >> \$HOME./bashrc 
!echo 'SPARK_HOME=$HOME/spark/spark-2.4.4-bin-hadoop2.7' >> \$HOME./bashrc
!echo 'HADOOP_HOME=$SPARK_HOME' >> $HOME/.bashrc
!echo 'JAVA_HOME=/usr/lib/jvm/jdk1.8.0_222' >> \$HOME/.bashrc
!source $HOME/.bashrc


# In[9]:

import h2o
h2o.init()


# In[ 10]:


exit()
